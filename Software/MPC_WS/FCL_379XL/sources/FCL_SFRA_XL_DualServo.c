//#############################################################################
// FILE:   FCL_SFRA_XL_DualServo.C
// TITLE:  Main source file for FCL performance eval using SFRA Library
// System Name      :   Dual Motor Servo Control using FCL and evaluation using
//                      Software Frequency Response Analyzer
//
//  Group           : C2000
//  Target Family   : F2837x
//  Target Hardware : F28379D-XL
//  Booster Pack    : BOOSTXL-DRV8305 / BOOSTXL-3PhGaNInv
//  Created on      : Mar 19, 2018
//  Author          : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################
//  Revision History:
//  v1.0    - Initial Release
//          - Base code derived from
//               1. 'IDDKv2_PM_Servo_F2837x_FCL_Example01'
//               2. 'TIDM-SERVO-LAUNCHXS'
//==============================================================================

/* ============================================================================
Peripheral Assignments:
   MOTOR 1:
     - EPWMs ==>> EPWM1, EPWM2,  EPWM3  ---> A, B, C
     - QEP   ==>> EQep1
     - SPI   ==>> Spia

	 Analog signals - Motor 1
	 Vdc  ADC (B)14  (DRV8305 --> Va)
	 Va   ADC C3     (DRV8305 --> Vb)
	 Vb   ADC B3     (DRV8305 --> Vc)
	 Vc   ADC A3     (DRV8305 --> Vdc)
	 Ia   ADC C2 - cmpss6
	 Ib   ADC B2 - cmpss3
	 Ic   ADC A2 - cmpss1

   MOTOR 2:
     - EPWMs ==>> EPWM4, EPWM5,  EPWM6  ---> A, B, C
     - QEP   ==>> EQep2
     - SPI   ==>> Spib

	 Analog Signals - Motor 2
	 Vdc  ADC (A)15  (DRV8305 --> Va)
	 Va   ADC C5     (DRV8305 --> Vb)
	 Vb   ADC B5     (DRV8305 --> Vc)
	 Vc   ADC A5     (DRV8305 --> Vdc)
	 Ia   ADC C4 - cmpss5
	 Ib   ADC B4 - xxx
	 Ic   ADC A4 - cmpss2

	General purpose display
	 Analog DACs
	 - DAC ==> DACA, DACB
	 PWMDACs
	   - EPWMs ==>> EPWM7, EPWM8
	                DAC-1 ==> EPWM7-COMPA
	                DAC-2 ==> EPWM7-COMPB
	                DAC-3 ==> EPWM8-COMPA
	                DAC-4 ==> EPWM8-COMPB

Implementation Outline:
        Motor ISR Coded within EPWM1 ISR @ 10Khz,
            --> triggered by EPwm1_SOCA tied to EPWM1 PRD

            Motor 1 code : CPU1
            Motor 2 code : CPU1

===========================================================================  */

// Include header files used in the main function
// define float maths and then include IQmath library

#include "FCL_SFRA_XL_DualServo-Settings.h"
#include "DualMtrServo.h"
#include "SFRA_F_Include.h"
#include "sfra_gui.h"          // definitions from sfra.h
#include "DMC_protections.h"   // definitions from DmcProtections.c
#include "pwmdac.h"            // definitions from PwmDac.h
#include "fast_current_loop.h"

/**************************************************************************
 * Below variables used in library
 * ===================================
 * uint32_t      FF_COMP = 0,
 *               COMPLEX_PIC = 1;
 **************************************************************************
 *     FF_COMP    COMPLEX_PIC
 *        0            0       ==>> Regular PI with NO feed fwd comp
 *        1            0       ==>> Regular PI with feed fwd comp
 *        0            1       ==>> Complex PI control
 *        1            1       ==>> xxx NOT ALLOWED xxx
 **************************************************************************
 **************************************************************************
 NOTE:
 =====
 The above variables are associated with PI controller ONLY.
 PI controller is selected by setting the variable (defined later)
      FCL_CNTLR = CPI (default)

 Complex digital controller can be chosen by setting
      FCL_CNTLR = CMPLX
 But this implementation does not support the what ifs such as FF_COMP
 **************************************************************************
 */


// **********************************************************
// Prototypes for local functions within this file
// **********************************************************

// INTERRUPT FUNCTIONS
// ---------------------

#ifdef FLASH
#ifndef __cplusplus
    #ifdef __TI_COMPILER_VERSION__
        #if __TI_COMPILER_VERSION__ >= 15009000
            #pragma CODE_SECTION(MotorControlISR,".TI.ramfunc");
        #else
            #pragma CODE_SECTION(MotorControlISR,"ramfuncs");
        #endif
    #endif
#endif
#endif

#pragma INTERRUPT (MotorControlISR, HPI)
interrupt void MotorControlISR(void);

// ************************************************************************
// ************************************************************************

// Build level functions
//========================
#if BUILDLEVEL == FCL_LEVEL1
inline void BuildLevel1(MOTOR_VARS * motor);
#elif BUILDLEVEL == FCL_LEVEL2
inline void BuildLevel2(MOTOR_VARS * motor);
#endif

// General functions for use in FCL
//===================================
inline void QepInit( MOTOR_VARS * v );
inline void FCL_samplingMode(MOTOR_VARS * m);
#if BUILDLEVEL >= FCL_LEVEL3
inline void spinMotor(MOTOR_VARS * motor);
inline void FCL_routine(MOTOR_VARS * motor);
inline void FCL_wrap_Routine(MOTOR_VARS * motor);
#endif

// Miscellaneous functions
// -------------------------
_iq ramper(_iq in, _iq out, _iq rampDelta);
_iq ramper_speed(_iq in, _iq out, _iq rampDelta);
void GPIO_TogglePin(Uint16 pin);

// State Machine function prototypes
//------------------------------------
// Alpha states
void A0(void);	//state A0
void B0(void);	//state B0
void C0(void);	//state C0

// A branch states
void A1(void);	//state A1
void A2(void);	//state A2
void A3(void);	//state A3

// B branch states
void B1(void);	//state B1
void B2(void);	//state B2
void B3(void);	//state B3

// C branch states
void C1(void);	//state C1
void C2(void);	//state C2
void C3(void);	//state C3

// Variable declarations
void (*Alpha_State_Ptr)(void);	// Base States pointer
void (*A_Task_Ptr)(void);		// State pointer A branch
void (*B_Task_Ptr)(void);		// State pointer B branch
void (*C_Task_Ptr)(void);		// State pointer C branch

// ****************************************************************************
// Variables for CPU control
// ****************************************************************************
// adc static cal
int *adc_cal;

int16	VTimer0[4];			// Virtual Timers slaved off CPU Timer 0 (A events)
int16	VTimer1[4]; 		// Virtual Timers slaved off CPU Timer 1 (B events)
int16	VTimer2[4]; 		// Virtual Timers slaved off CPU Timer 2 (C events)
int16	SerialCommsTimer;
int16   CommsOKflg;

//*********************** USER Variables *************************************

//****************************************************************************
// Global variables used in this system
//****************************************************************************
// Variables used in FCL
//=======================
currentCntlr_t   FCL_CNTLR = CPI;
sfraTest_t       sfraTestLoop = D_axis;
uint32_t         sfraCollectStart=0;
float32          SFRA_noise=0,
                 maxModIndex;

LoadMotor_t      loadMotor = NONE;  // flag to select load motor
QepCalibSm_t     QepCalibSm;
int16            QepCalFlag = 0,
                 QepRecalFlag = 0;    // flag to re-calibrate QEP

volatile unsigned int fcl_cycle_count = 0;
int                   fcl_ClrCntr=0,
                      fcl_cycle_count_max = 0;
float                 fcl_LatencyInMicroSec = 0;   //pwm update time from SOC
Uint16                pwmTBPeriod = 0;

// ****************************************************************************
// Flag variables
// ****************************************************************************
volatile Uint16 EnableFlag = FALSE;
Uint32 IsrTicker = 0;
Uint16 BackTicker = 0;
int    LedCnt = 500;
int16  OffsetCalCounter;

_iq K1 = _IQ(0.998),		  // Offset filter coefficient K1: 0.05/(T+0.05);
    K2 = _IQ(0.001999);	      // Offset filter coefficient K2: T/(T+0.05);

MOTOR_VARS  motor1 = DRV830x_MOTOR_DEFAULTS,
		    motor2 = DRV830x_MOTOR_DEFAULTS;

// ****************************************************************************
// Miscellaneous Variables
// ****************************************************************************
#define  SET_CURRENT_IN_PU(A)   (A/INVERTER1_BASE_CURRENT)

_iq  IdRef_start = _IQ(SET_CURRENT_IN_PU(4.0)),    // Dual motor load needs more align current
	 IdRef_run   = _IQ(SET_CURRENT_IN_PU(0.0));

// ****************************************************************************
// Variables for Datalog module
// ****************************************************************************
float DBUFF_4CH1[200],
      DBUFF_4CH2[200],
      DBUFF_4CH3[200],
      DBUFF_4CH4[200],
      DlogCh1,
      DlogCh2,
      DlogCh3,
      DlogCh4;

// Create an instance of DATALOG Module
DLOG_4CH_F dlog_4ch1;

float32  *dispVar1, *dispVar2;

//*******************************************************************************
// Motor current sense feedback gains
//======================================
#if MOTOR1_DRV == GaN_BP
  #define  MOTOR1_ADC_CURRENT_SCALE   (-ADC_PU_PPB_SCALE_FACTOR)
#else
  #define  MOTOR1_ADC_CURRENT_SCALE   (ADC_PU_PPB_SCALE_FACTOR)
#endif

#if MOTOR2_DRV == GaN_BP
  #define  MOTOR2_ADC_CURRENT_SCALE   (-ADC_PU_PPB_SCALE_FACTOR)
#else
  #define  MOTOR2_ADC_CURRENT_SCALE   (ADC_PU_PPB_SCALE_FACTOR)
#endif



#if  BUILDLEVEL == FCL_LEVEL2
// ******************************************************************************
// - Reads motor currents from inverter bottom leg SHUNTs
// ******************************************************************************
inline void phaseCurrentSense(MOTOR_VARS * m)
{
    while(!(AdcaRegs.ADCINTFLG.bit.ADCINT1));
        asm(" NOP");
    m->currentAs = (float)((int32_t)*(m->CurA_PPBRESULT)) * m->currentSenseScale;
    m->currentBs = (float)((int32_t)*(m->CurB_PPBRESULT)) * m->currentSenseScale;
//  m->currentCs = -m->currentAs - m->currentBs;

    return;
}

// ******************************************************************************
//  DC bus voltage feedback
// ******************************************************************************
inline void DCbusVoltageSense(MOTOR_VARS * m)
{
    while(!(AdcaRegs.ADCINTFLG.bit.ADCINT2));
        asm(" NOP");

    m->FCL_Pars.Vdcbus = *(m->Vdc_AdcResult) * m->BaseInverterVoltage / 4096.0;
    if (m->FCL_Pars.Vdcbus < 10.0)
        m->FCL_Pars.Vdcbus = 10.0;

    return;
}

#endif

// ****************************************************************************
// Initialize QEP
// ****************************************************************************
void QepInit( MOTOR_VARS * v )
{
    v->QepRegs->QDECCTL.all = XCR_X2 +
                              QSRC_QUAD_MODE ;              // QDECCTL_INIT_STATE;
    v->QepRegs->QEPCTL.all  = QEP_EMULATION_FREE +
                              PCRM_POSMAX +
//                              IEI_RISING +
                              IEL_RISING +
//                              QPEN_ENABLE +
                              QCLM_TIME_OUT;                // QEPCTL_INIT_STATE;
    v->QepRegs->QPOSCTL.all = PCE_DISABLE;                  // QPOSCTL_INIT_STATE;
    v->QepRegs->QUPRD       = (QEP_UNIT_TIMER_TICKS - 1);   /* Unit Timer for 10KHz*/
    v->QepRegs->QCAPCTL.all = UPPS_X32 +
                              CCPS_X128 +
                              CEN_ENABLE;                   //QCAPCTL_INIT_STATE;
    v->QepRegs->QPOSMAX     = 4 * (v->qep).LineEncoder;
    v->QepRegs->QEINT.bit.UTO = 1;                    //Enable UTO on QEP for data latch

    return;
}

// ******************************************************************************
// ****************************************************************************
// GENERAL PURPOSE UTILITY FUNCTIONS
// ****************************************************************************
// ****************************************************************************

// slew programmable ramper
_iq ramper(_iq in, _iq out, _iq rampDelta)
{
	_iq err;

	err = in - out;
	if (err > rampDelta)
		return(out + rampDelta);
  	else if (err < -rampDelta)
  		return(out - rampDelta);
    else
    	return(in);
}

//*****************************************************************************
// Ramp Controller for speed reference (Not currently used)
_iq ramper_speed(_iq in, _iq out, _iq rampDelta)
{
	_iq err;

	err = in - out;
	if (err > rampDelta)
	{
		if((out+rampDelta)>1.0)
			return(1.0);
		else
			return (out+rampDelta);
	}
  	else if (err < -rampDelta)
  	{
  		if(out-rampDelta<=0.0)
  			return(0.0);
  		else
  			return(out - rampDelta);
  	}
    else
    	return(in);
}

//*****************************************************************************
//Toggle a GPIO pin
void GPIO_TogglePin(Uint16 pin)
{
	volatile Uint32 *gpioDataReg;
	Uint32 pinMask;

	gpioDataReg = (volatile Uint32 *)&GpioDataRegs + (pin/32)*GPY_DATA_OFFSET;
	pinMask = 1UL << (pin % 32);

	gpioDataReg[GPYTOGGLE] = pinMask;

	return;
}

//*****************************************************************************
//*****************************************************************************
// SFRA support functions
//*****************************************************************************
//*****************************************************************************
#if BUILDLEVEL == FCL_LEVEL6
/***************************************************************************
 * Using SFRA tool :
 * =================
 *      - INJECT noise
 *      - RUN the controller
 *      - CAPTURE or COLLECT the controller output
 * From a controller analysis standpoint, this sequence will reveal the
 * output of controller for a given input, and therefore, good for analysis
 * *************************************************************************
 */
void sfraInject(MOTOR_VARS * m)
{
    if (sfraTestLoop == D_axis)          m->SFRA_noiseD = SFRA_F_INJECT(0.0);
    else if (sfraTestLoop == Q_axis)     m->SFRA_noiseQ = SFRA_F_INJECT(0.0);
    else if (sfraTestLoop == speedLoop)  m->SFRA_noiseW = SFRA_F_INJECT(0.0);

    return;
}

// ********************************************************************************
void sfraCollect(MOTOR_VARS * m)
{
    if (sfraTestLoop == D_axis)          SFRA_F_COLLECT(&m->cntlr_id.Out, &m->cntlr_id.Fbk);
    else if (sfraTestLoop == Q_axis)     SFRA_F_COLLECT(&m->cntlr_iq.Out, &m->cntlr_iq.Fbk);
    else if (sfraTestLoop == speedLoop)  SFRA_F_COLLECT(&m->pid_spd.term.Out, &m->pid_spd.term.Fbk);

    return;
}
#endif

// ****************************************************************************
// ****************************************************************************
//TODO FCL support functions
// ****************************************************************************
// ****************************************************************************

// Init variables for Fast current Loop library
// ===============================================
void fast_current_loop_vars_init_MOTOR_1 (void)
{
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
    motor1.FCL_Pars.CARRIER_MID = maxModIndex * INV_PWM_HALF_TBPRD * 0x10000L;
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
    motor1.FCL_Pars.CARRIER_MID = INV_PWM_HALF_TBPRD * 0x10000L;
#endif
    motor1.FCL_Pars.ADC_SCALE   = ADC_PU_PPB_SCALE_FACTOR;
    motor1.FCL_Pars.cmidsqrt3   = motor1.FCL_Pars.CARRIER_MID * sqrt(3.0);

    motor1.FCL_Pars.tSamp = (1.0F/SAMPLING_FREQ);
    motor1.FCL_Pars.Rd    = RS1;
    motor1.FCL_Pars.Rq    = RS1;
    motor1.FCL_Pars.Ld    = LS1;
    motor1.FCL_Pars.Lq    = LS1;
    motor1.FCL_Pars.BemfK = 0.8;
    motor1.FCL_Pars.Ibase = motor1.BaseInverterCurrent;  //BASE_SHUNT_CURRENT1;
    motor1.FCL_Pars.Wbase = 2.0F * PI * motor1.BaseFrequency;  //MOTOR1_BASE_FREQ;
    motor1.FCL_Pars.FccD  = MOTOR1_FCL_BANDWIDTH_Hz;
    motor1.FCL_Pars.FccQ  = MOTOR1_FCL_BANDWIDTH_Hz;
    motor1.FCL_Pars.wccD  = 2.0F * PI * motor1.FCL_Pars.FccD;
    motor1.FCL_Pars.wccQ  = 2.0F * PI * motor1.FCL_Pars.FccQ;

    return;
}

// ****************************************************************************
void fast_current_loop_vars_init_MOTOR_2 (void)
{
#if (SAMPLING_METHOD == SINGLE_SAMPLING)
    motor2.FCL_Pars.CARRIER_MID = maxModIndex * INV_PWM_HALF_TBPRD * 0x10000L;
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
    motor2.FCL_Pars.CARRIER_MID = INV_PWM_HALF_TBPRD * 0x10000L;
#endif
    motor2.FCL_Pars.ADC_SCALE   = ADC_PU_PPB_SCALE_FACTOR;
    motor2.FCL_Pars.cmidsqrt3   = motor2.FCL_Pars.CARRIER_MID * sqrt(3.0);

    motor2.FCL_Pars.tSamp = (1.0F/SAMPLING_FREQ);
    motor2.FCL_Pars.Rd    = RS2;
    motor2.FCL_Pars.Rq    = RS2;
    motor2.FCL_Pars.Ld    = LS2;
    motor2.FCL_Pars.Lq    = LS2;
    motor2.FCL_Pars.BemfK = 0.8;
    motor2.FCL_Pars.Ibase = motor2.BaseInverterCurrent;   //BASE_SHUNT_CURRENT2;
    motor2.FCL_Pars.Wbase = 2.0F * PI * motor2.BaseFrequency;  //MOTOR2_BASE_FREQ;
    motor2.FCL_Pars.FccD  = MOTOR2_FCL_BANDWIDTH_Hz;
    motor2.FCL_Pars.FccQ  = MOTOR2_FCL_BANDWIDTH_Hz;
    motor2.FCL_Pars.wccD  = 2.0F * PI * motor2.FCL_Pars.FccD;
    motor2.FCL_Pars.wccQ  = 2.0F * PI * motor2.FCL_Pars.FccQ;

    return;
}

// ****************************************************************************
void FCL_samplingMode(MOTOR_VARS * m)
{
    EALLOW;

    m->PwmARegs->CMPCTL.bit.LOADAMODE = (SAMPLING_METHOD == SINGLE_SAMPLING) ?
                                         CC_CTR_ZERO :     //  @ ctr = PRD
                                         CC_CTR_ZERO_PRD;  //  @ ctr = PRD or ZERO
    m->PwmBRegs->CMPCTL.bit.LOADAMODE = (SAMPLING_METHOD == SINGLE_SAMPLING) ?
                                         CC_CTR_ZERO :     //  @ ctr = PRD
                                         CC_CTR_ZERO_PRD;  //  @ ctr = PRD or ZERO
    m->PwmCRegs->CMPCTL.bit.LOADAMODE = (SAMPLING_METHOD == SINGLE_SAMPLING) ?
                                         CC_CTR_ZERO :     //  @ ctr = PRD
                                         CC_CTR_ZERO_PRD;  //  @ ctr = PRD or ZERO
    EDIS;

    return;
}

#if BUILDLEVEL >= FCL_LEVEL3
// ****************************************************************************
// -------------------------------------------
//  Call FCL controller code from library
// -------------------------------------------
inline void FCL_routine(MOTOR_VARS * motor)
{
    if (FCL_CNTLR == CPI)
        FCL_PI_Ctrl(motor);
    else
        FCL_CC_Ctrl(motor);
    return;
}

// ****************************************************************************
// -------------------------------------------------
//  Call FCL controller wrapper code from library
// -------------------------------------------------
inline void FCL_wrap_Routine(MOTOR_VARS * motor)
{
    if (FCL_CNTLR == CPI)
        FCL_PI_CtrlWrap(motor);
    else
        FCL_CC_CtrlWrap(motor);
    QepWrapModule(motor);

    return;
}

// ****************************************************************************
// ****************************************************************************
// ****************************************************************************
// ****************************************************************************
//TODO Motor Control ISR -- SPIN MOTOR MODULE - works with CURRENT LOOP only
//
//  lsw => Alignment (0)   : Bring the rotor to a known initial position
//  lsw => WaitForIndex (1): by force angle method, turn the shaft until
//                           index pulse is received
//  lsw => GotIndex (2)    : INDEX pulse received

//  NOTE:- Each motor is individually spun to calibrate its QEP and identify
//         the offset of INDEX pulse from motor phase A elec angle 0.
// ****************************************************************************
// ****************************************************************************
inline void spinMotor(MOTOR_VARS * motor)
{

    int temp = (motor->lsw == Alignment) || (motor->RunMotor == STOP);

// ------------------------------------------------------------------------------
// Alignment Routine: this routine aligns the motor to zero electrical angle
// and in case of QEP also finds the index location and initializes the angle
// w.r.t. the index location
// ------------------------------------------------------------------------------
//    if ( (motor->RunMotor == RUN) && (motor->lsw == Alignment) )
    if (motor->RunMotor == STOP)
        motor->IdRef = 0;
    else if (motor->lsw == Alignment)
    {
        // for restarting from (motor->RunMotor = STOP)
        motor->rc.SetpointValue = 0;
        motor->rg.Angle = 0;

        // alignment current
        motor->IdRef = IdRef_start;

        // set up an alignment and hold time for shaft to settle down
        if (motor->cntlr_id.Ref >= motor->IdRef)
        {
            if (++motor->alignCntr > motor->alignCnt)
            {
                motor->alignCntr  = 0;
                motor->IdRef = IdRef_run;
                motor->lsw = WaitForIndex;       // for QEP, spin the motor to find the index pulse
            }
        }
    } // end if (..)

// ------------------------------------------------------------------------------
//  Connect inputs of the RMP module and call the ramp control macro
// ------------------------------------------------------------------------------
    motor->rc.TargetValue = temp ? 0 : motor->SpeedRef;
    RC_MACRO(motor->rc)

// ------------------------------------------------------------------------------
//  Connect inputs of the RAMP GEN module and call the ramp generator macro
// ------------------------------------------------------------------------------
    motor->rg.Freq = motor->rc.SetpointValue;
    RG_MACRO(motor->rg)
//    motor->park.Angle = motor->rg.Out;  // motor->ElecTheta;

// ------------------------------------------------------------------------------
//  Connect inputs of the SPEED_FR module and call the speed calculation macro
// ------------------------------------------------------------------------------
    motor->speed.ElecTheta = motor->ElecTheta;
    SPEED_FR_MACRO(motor->speed)

// ------------------------------------------------------------------------------
//    Connect inputs of the PI module and call the PID IQ controller macro
// ------------------------------------------------------------------------------
    motor->cntlr_iq.Ref = temp ? 0 : motor->IqRef;

// ------------------------------------------------------------------------------
//    Connect inputs of the PI module and call the PID ID controller macro
// ------------------------------------------------------------------------------
    motor->cntlr_id.Ref = ramper(motor->IdRef, motor->cntlr_id.Ref, _IQ(0.0001));

// ------------------------------------------------------------------------------
//    Call FCL PI controller code - compact module containing fcl processing
// ------------------------------------------------------------------------------
    FCL_routine(motor);
    FCL_wrap_Routine(motor);

    return;
}

// ****************************************************************************
// ****************************************************************************
// ****************************************************************************
//TODO QEP calibration for both motors
// ****************************************************************************
// ****************************************************************************
QepCalibSm_t QepCalib (MOTOR_VARS * m1, MOTOR_VARS * m2, QepCalibSm_t QepCalibSmv)
{
static long int WaitTimeCnt,
                WaitTimeCntMax = 10000;  // ONE second

    switch (QepCalibSmv)
    {
        case Done:
        default:
            break;

        case LoopFlush:
            m1->RunMotor = STOP;
            m1->lsw = Alignment;

            m2->RunMotor = STOP;
            m2->lsw = Alignment;

            WaitTimeCnt = 0;
            QepCalibSmv = Qep1;
            break;

        case Qep1:
            if (m1->TripFlagDMC)
                QepCalibSmv = LoopFlush;
            else
            {
                m1->RunMotor = (m1->lsw == GotIndex) ? STOP : RUN;
                if (m1->lsw == GotIndex)
                    if (++WaitTimeCnt >= WaitTimeCntMax)
                    {
                        WaitTimeCnt = 0;
                        QepCalibSmv = Qep2;
                    }
            }
            break;

        case Qep2:
            if (m2->TripFlagDMC)
                QepCalibSmv = LoopFlush;
            else
            {
                m2->RunMotor = (m2->lsw == GotIndex) ? STOP : RUN;
                if (m2->lsw == GotIndex)
                    if (++WaitTimeCnt >= WaitTimeCntMax)
                        QepCalibSmv = Done;
            }
            break;
    }

    spinMotor(m1);  // call the current loop for motor 1
    spinMotor(m2);  // call the current loop for motor 2

    return(QepCalibSmv);
}

// ****************************************************************************
// FCL Latency Tracking
// ****************************************************************************
// Instrumentation code for timing verifications
#if 0
//#define SETGPIO18_HIGH    asm(" PUSH DP"); \
//                      asm(" MOVW      DP,#_GpioDataRegs+1")   ; \
//                      asm(" OR        @_GpioDataRegs+1,#0x0004 "); \
//                      asm(" POP DP");
//
//#define SETGPIO18_LOW asm(" PUSH DP"); \
//                      asm(" MOVW      DP,#_GpioDataRegs+1")   ; \
//                      asm(" AND       @_GpioDataRegs+1,#0xfffb "); \
//                      asm(" POP DP");
#define SETGPIO18_HIGH  GpioDataRegs.GPADAT.bit.GPIO18 = 1;         // GPIO_WritePin(18, 1);


#define SETGPIO18_LOW   GpioDataRegs.GPADAT.bit.GPIO18 = 0;         //GPIO_WritePin(18, 0);
#else
#define SETGPIO18_HIGH
#define SETGPIO18_LOW

#endif

static inline void get_FCL_time(void)
{
    fcl_cycle_count = EPwm1Regs.TBCTR;

    SETGPIO18_HIGH;
//    GpioDataRegs.GPADAT.bit.GPIO18 = 1;
    asm(" NOP");
    if(EPwm1Regs.TBCTR < fcl_cycle_count)
        fcl_cycle_count = pwmTBPeriod - fcl_cycle_count;
    if (fcl_cycle_count_max < fcl_cycle_count)
        fcl_cycle_count_max = fcl_cycle_count;
    if (fcl_ClrCntr)
    {
        fcl_cycle_count_max = 0;
        fcl_ClrCntr = 0;
    }

    fcl_LatencyInMicroSec = (fcl_cycle_count_max) * 0.01 ; //for 100MHz PWM clk
    SETGPIO18_LOW;
//    GpioDataRegs.GPADAT.bit.GPIO18 = 0;

    return;
}

#endif

// ****************************************************************************
#if BUILDLEVEL == FCL_LEVEL3
inline void currentLoopRoutine(MOTOR_VARS * motor)
{
    int temp = motor->RunMotor == STOP;

// ----------------------------------------------------------------------------
//  Connect inputs of the SPEED_FR module and call the speed calculation macro
// ----------------------------------------------------------------------------
    motor->speed.ElecTheta = motor->ElecTheta;
    SPEED_FR_MACRO(motor->speed)

// ----------------------------------------------------------------------------
//    Connect Iq input of current loop
// ----------------------------------------------------------------------------
    motor->cntlr_iq.Ref = (temp) ? 0 : motor->IqRef;

// ----------------------------------------------------------------------------
//    Connect Id input of current loop with manual (or any other) reference
// ----------------------------------------------------------------------------
    motor->IdRef = temp ? 0 : IdRef_run;
    motor->cntlr_id.Ref = ramper(motor->IdRef, motor->cntlr_id.Ref, _IQ(0.0001));

    return;
}

#endif
// ****************************************************************************

#if BUILDLEVEL >= FCL_LEVEL4
inline void spdLoopRoutine(MOTOR_VARS * motor)
{
    int temp = motor->RunMotor == STOP;

// ------------------------------------------------------------------------------
//  Connect inputs of the RMP module and call the ramp control macro
// ------------------------------------------------------------------------------
    motor->rc.TargetValue = temp ? 0 : motor->SpeedRef;
    RC_MACRO(motor->rc)

// ------------------------------------------------------------------------------
//  Connect inputs of the SPEED_FR module and call the speed calculation macro
// ------------------------------------------------------------------------------
    motor->speed.ElecTheta = motor->ElecTheta;
    SPEED_FR_MACRO(motor->speed)

// ------------------------------------------------------------------------------
//   PID speed controller macro
// ------------------------------------------------------------------------------
    if (++motor->SpeedLoopCount >= motor->SpeedLoopPrescaler)
    {
        motor->SpeedLoopCount = 0;
        motor->pid_spd.term.Ref = motor->rc.SetpointValue;  //motor->SpeedRef;
        motor->pid_spd.term.Fbk = motor->speed.Speed;

        PID_MACRO(motor->pid_spd);
    }


    if(temp)
    {
        motor->pid_spd.data.d1 = 0; motor->pid_spd.data.d2 = 0; motor->pid_spd.data.i1 = 0;
        motor->pid_spd.data.ud = 0; motor->pid_spd.data.ui = 0; motor->pid_spd.data.up = 0;
        motor->pid_spd.term.Out = 0;
    }

// ------------------------------------------------------------------------------
//    Connect Iq input of current loop with speed PID controller macro
// ------------------------------------------------------------------------------
    motor->cntlr_iq.Ref = (temp) ? 0 : motor->pid_spd.term.Out;

// ------------------------------------------------------------------------------
//    Connect Id input of current loop with manual (or any other) reference
// ------------------------------------------------------------------------------
    motor->IdRef = temp ? 0 : IdRef_run;
    motor->cntlr_id.Ref = ramper(motor->IdRef, motor->cntlr_id.Ref, _IQ(0.0001));

    return;
}

#endif

#if BUILDLEVEL >= FCL_LEVEL5
// *****************************************************************************
// Set up load motor
// *****************************************************************************
inline void loadMotorInit (MOTOR_VARS * m)
{
    if (m->RunMotor == STOP)
    {
        m->pid_spd.param.Umax = 0.5 * (m->BaseMotorCurrent / m->BaseInverterCurrent);
        m->pid_spd.param.Umin = -m->pid_spd.param.Umax;
        m->SpeedRef = 0;
//        m->RunMotor = RUN;
    }

    return;
}

// ****************************************************************************
// Restore both motor status to reset state
// ****************************************************************************
inline void resetLoadMotor (MOTOR_VARS * m)
{
    m->pid_spd.param.Umax = 1.5 * (m->BaseMotorCurrent / m->BaseInverterCurrent);
    m->pid_spd.param.Umin = -m->pid_spd.param.Umax;
    m->RunMotor = STOP;

    return;
}

#endif

//*****************************************************************************
//*****************************************************************************
//*****************************************************************************
//*****************************************************************************
void main(void)
{

	// Initialize System Control:
	// PLL, WatchDog, enable Peripheral Clocks
	// This function derived from the one found in F2837x_SysCtrl.c file
	InitSysCtrl();

	// Waiting for enable flag set
	while (EnableFlag == FALSE)
	{
	  BackTicker++;
	}

    //find out the FCL SW version information
    while(FCL_GetSwVersion() != 0x00000004)
    {
          BackTicker++;
    }

	// Clear all interrupts and initialize PIE vector table:

	// Disable CPU interrupts
	DINT;

	// Initialize the PIE control registers to their default state.
	// The default state is all PIE interrupts disabled and flags
	// are cleared.
	// This function is found in the F28M3Xx_PieCtrl.c file.
	InitPieCtrl();

	// Disable CPU interrupts and clear all CPU interrupt flags:
	IER = 0x0000;
	IFR = 0x0000;

	// Initialize the PIE vector table with pointers to the shell Interrupt
	// Service Routines (ISR).
	// This will populate the entire table, even if the interrupt
	// is not used in this example.  This is useful for debug purposes.
	// The shell ISR routines are found in F28M3Xx_DefaultIsr.c.
	// This function is found in F28M3Xx_PieVect.c.
	InitPieVectTable();

	// *************** SFRA & SFRA_GUI COMM INIT CODE START *******************
#if BUILDLEVEL == FCL_LEVEL6
    SFRA_Init(SAMPLING_FREQ);

    //Setting up SCI peripheral for GUI communication
    EALLOW;
     ClkCfgRegs.LOSPCP.bit.LSPCLKDIV = 0x0;
    EDIS;
    SCIA_Init(200000000, 57600); // 20000000 - SCI clk & 57600 - chosen Baudrate
    CommsOKflg = 0;
    SerialCommsTimer = 0;

    // Configuring SCI pins
    GPIO_SetupPinMux(SCI_TX_GPIO, GPIO_MUX_CPU1, SCI_TX_MUX);
    GPIO_SetupPinMux(SCI_RX_GPIO, GPIO_MUX_CPU1, SCI_RX_MUX);
#endif
    // **************** SFRA & SFRA_GUI COMM INIT CODE END ********************

	// ************************************************************************
	// ************************************************************************
	// General purpose test and flagging
	// ==================================
    GPIO_SetupPinOptions(BLUE_LED_GPIO, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(BLUE_LED_GPIO, GPIO_MUX_CPU1, BLUE_LED_MUX);

    GPIO_SetupPinOptions(RED_LED_GPIO, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(RED_LED_GPIO, GPIO_MUX_CPU1, BLUE_LED_MUX);

	// Configure a temp output pin for flagging (GPIO104)
	GPIO_SetupPinOptions(TEMP_GPIO, GPIO_OUTPUT, GPIO_ASYNC);
	GPIO_SetupPinMux(TEMP_GPIO, 0, TEMP_MUX);

    // basic test only - comment out if successful
//    for (;;)
//    {
//    	GPIO_TogglePin(BLUE_LED_GPIO);
//    	DELAY_US(500000);
//    }

	// ************************************************************************
	// ************************************************************************

// Timing sync for background loops
// Timer period definitions found in device specific PeripheralHeaderIncludes.h
	CpuTimer0Regs.PRD.all = SYSTEM_FREQUENCY*1e6 * 50e-6;  // A tasks -- 50 us
	CpuTimer1Regs.PRD.all = SYSTEM_FREQUENCY*1e6 * 1e-3;   // B tasks -- 1 ms
	CpuTimer2Regs.PRD.all = SYSTEM_FREQUENCY*1e6 * 150e-6; // C tasks -- 150 us

// Tasks State-machine init
	Alpha_State_Ptr = &A0;
	A_Task_Ptr = &A1;
	B_Task_Ptr = &B1;
	C_Task_Ptr = &C1;

// ****************************************************************************
// ****************************************************************************
// Set up peripheral assignments for motor control
// ****************************************************************************
// ****************************************************************************
	// Peripherals tied to Motor 1
	motor1.PwmARegs = &EPwm1Regs;      // set up EPWM for motor 1 phase A
	motor1.PwmBRegs = &EPwm2Regs;      // set up EPWM for motor 1 phase B
	motor1.PwmCRegs = &EPwm3Regs;      // set up EPWM for motor 1 phase C
	motor1.QepRegs  = &EQep1Regs;      // set up EQEP for motor 1
	motor1.SpiRegs  = &SpiaRegs;       // set up SPI for motor 1
    motor1.CmpssARegs = &Cmpss6Regs;   // set up CMPSS 6 for motor 1 current A
    motor1.CmpssBRegs = &Cmpss3Regs;   // set up CMPSS 3 for motor 1 current B
    motor1.CmpssCRegs = &Cmpss1Regs;   // set up CMPSS 1 for motor 1 current C
	motor1.CurA_PPBRESULT = &(AdccResultRegs.ADCPPB1RESULT.all);   // Set up ADCPPBxRESEULT for motor 1 current A
    motor1.CurB_PPBRESULT = &(AdcbResultRegs.ADCPPB1RESULT.all);   // Set up ADCPPBxRESEULT for motor 1 current B
    motor1.CurC_PPBRESULT = &(AdcaResultRegs.ADCPPB1RESULT.all);   // Set up ADCPPBxRESEULT for motor 1 current C // dummy in R1.1
    motor1.Vdc_AdcResult  = &VFB_DC1;

	// Peripherals tied to Motor 2
	motor2.PwmARegs = &EPwm4Regs;      // set up EPWM for motor 2 phase A
	motor2.PwmBRegs = &EPwm5Regs;      // set up EPWM for motor 2 phase B
	motor2.PwmCRegs = &EPwm6Regs;      // set up EPWM for motor 2 phase C
	motor2.QepRegs  = &EQep2Regs;      // set up EQEP for motor 2
	motor2.SpiRegs  = &SpibRegs;       // set up SPI for motor 2
    motor2.CmpssARegs = &Cmpss5Regs;   // set up CMPSS for motor 2 current A
    motor2.CmpssBRegs = &Cmpss2Regs;   // set up CMPSS for motor 2 current C - comp for Ib not available in XL
    motor2.CmpssCRegs = &Cmpss2Regs;   // set up CMPSS for motor 2 current C
    motor2.CurA_PPBRESULT = &(AdccResultRegs.ADCPPB2RESULT.all);   // Set up ADCPPBxRESEULT for motor 2 current A
    motor2.CurB_PPBRESULT = &(AdcbResultRegs.ADCPPB2RESULT.all);   // Set up ADCPPBxRESEULT for motor 2 current B
    motor2.CurC_PPBRESULT = &(AdcaResultRegs.ADCPPB2RESULT.all);   // Set up ADCPPBxRESEULT for motor 2 current C
    motor2.Vdc_AdcResult  = &VFB_DC2;

    // Epwms used for PWM DAC
    Pwmdac12_PwmRegs = &EPwm8Regs;
    Pwmdac34_PwmRegs = &EPwm7Regs;

// ****************************************************************************
// ****************************************************************************
// Initialize EPWM modules for inverter PWM generation
// ****************************************************************************
// ****************************************************************************

	EALLOW;
	CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;

	// *****************************************
	// Inverter PWM configuration for motor 1
	// ****************************************
#ifdef MOTOR1_EXT_DEADBAND
	/* Deadband is set externally on DRV830x chip
	 */
	PWM_1ch_UpDwnCnt_CNF_noDB(motor1.PwmARegs, INV_PWM_TICKS);
	PWM_1ch_UpDwnCnt_CNF_noDB(motor1.PwmBRegs, INV_PWM_TICKS);
	PWM_1ch_UpDwnCnt_CNF_noDB(motor1.PwmCRegs, INV_PWM_TICKS);
#else
	/* By default on soprano the PWM clock is divided by 2
	 * ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV=1
	 * For example, deadband of 0.1us => 10ns*10=0.1us
	 */
	PWM_1ch_UpDwnCnt_CNF(motor1.PwmARegs, INV_PWM_TICKS, MOTOR1_DEAD_BAND_TIME);
	PWM_1ch_UpDwnCnt_CNF(motor1.PwmBRegs, INV_PWM_TICKS, MOTOR1_DEAD_BAND_TIME);
	PWM_1ch_UpDwnCnt_CNF(motor1.PwmCRegs, INV_PWM_TICKS, MOTOR1_DEAD_BAND_TIME);
#endif

//-----------------------------------------------------------------------------
// PWM SYNCing MACRO
#define  SYNC_EPWM(EPwmXRegs_Ptr)                                   \
    EPwmXRegs_Ptr->TBCTL.bit.SYNCOSEL = TB_SYNC_IN;                 \
	EPwmXRegs_Ptr->TBCTL.bit.PHSEN    = TB_ENABLE;                  \
	EPwmXRegs_Ptr->TBPHS.bit.TBPHS    = 2;                          \
	EPwmXRegs_Ptr->TBCTL.bit.PHSDIR   = TB_UP;
//-----------------------------------------------------------------------------

	// configure Epwms B and C as slaves of A (EPWM highest up is chosen as A)
	SYNC_EPWM(motor1.PwmBRegs);
    SYNC_EPWM(motor1.PwmCRegs);

	InitMotor1EPwmGpio();  // Set up GPIOs for EPWMA of 1,2,3

	// *****************************************
	// Inverter PWM configuration for motor 2
	// ****************************************
#ifdef MOTOR2_EXT_DEADBAND
    /* Deadband is set externally on DRV830x chip
     */
    PWM_1ch_UpDwnCnt_CNF_noDB(motor2.PwmARegs, INV_PWM_TICKS);
    PWM_1ch_UpDwnCnt_CNF_noDB(motor2.PwmBRegs, INV_PWM_TICKS);
    PWM_1ch_UpDwnCnt_CNF_noDB(motor2.PwmCRegs, INV_PWM_TICKS);
#else
    /* By default on soprano the PWM clock is divided by 2
     * ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV=1
     * For example, deadband of 0.1us => 10ns*10=0.1us
     */
//	PWM_1ch_UpDwnCnt_CNF(&EPwm1Regs,      INV_PWM_TICKS, 10); // EPwm1 is used to sync EPWMs 2, 10 and 11
	PWM_1ch_UpDwnCnt_CNF(motor2.PwmARegs, INV_PWM_TICKS, MOTOR2_DEAD_BAND_TIME);
	PWM_1ch_UpDwnCnt_CNF(motor2.PwmBRegs, INV_PWM_TICKS, MOTOR2_DEAD_BAND_TIME);
	PWM_1ch_UpDwnCnt_CNF(motor2.PwmCRegs, INV_PWM_TICKS, MOTOR2_DEAD_BAND_TIME);
#endif

	//=========================================================================
	/* ========================================================================
	 * NOTE:-
	 * SYNC MOTOR1 and MOTOR2 PWMs so that their current sampling instances
	 * occur at the same time, else switching ripple of one inverter will
	 * spoil the signal integrity of other motor current during sampling
	 * ========================================================================
	 */
	// configure MOTOR2 PWMs to SYNC with MOTOR1 PWMs - all in SYNC
	SyncSocRegs.SYNCSELECT.bit.EPWM4SYNCIN = 0;  // EPwm1SyncOut  // TrigRegs --> porting change
    SYNC_EPWM(motor2.PwmARegs);
    SYNC_EPWM(motor2.PwmBRegs);
    SYNC_EPWM(motor2.PwmCRegs);
	//=========================================================================

	InitMotor2EPwmGpio();  // Set up GPIOs for EPWMA,B of 4,5,6

// ****************************************************************************
// ****************************************************************************
//TODO ADC Configuration
// ****************************************************************************
// ****************************************************************************
    //Configure the ADC and power it up
	ConfigureADC();

	EALLOW;

//-------------------------------------------------------------------------------------------------
#define  EPWM_ADCSoC      EPwm1Regs
#define  EPWM_ADCSoC_INT  EPWM1_INT
#define  ADCTRIGSEL       ADCTRIG5_EPWM1SOCA
#define  ADC_ACQPS        14

#define  ADC_CH_ASSIGN(AdcRegs, CH_NUM, ADCSOCxCTL, CH_ACQPS, CH_ADCTRIGSEL)                   \
	AdcRegs.ADCSOCxCTL.bit.CHSEL   = CH_NUM;            /* SOCx tied to signal @ CH_NUM    */  \
	AdcRegs.ADCSOCxCTL.bit.ACQPS   = CH_ACQPS;          /* sample window in SYSCLK cycles  */  \
	AdcRegs.ADCSOCxCTL.bit.TRIGSEL = CH_ADCTRIGSEL;     /* trigger on ePWM1 SOCA/C         */
//-------------------------------------------------------------------------------------------------

    // Setting up link from EPWM to ADC (EPwm2 is chosen)
    EPWM_ADCSoC.ETSEL.bit.SOCASEL = (SAMPLING_METHOD == SINGLE_SAMPLING) ?
                                     ET_CTR_PRD :    // Select SOC @ ctr = PRD
                                     ET_CTR_PRDZERO; // Select SOC @ ctr = PRD or ZERO
    EPWM_ADCSoC.ETPS.bit.SOCAPRD  = ET_1ST;          // Generate pulse on 1st event
    EPWM_ADCSoC.ETSEL.bit.SOCAEN  = 1;               // Enable SOC on A group

// ================================================================================================
	// Motor - 1
	//===========
	//	 Analog signals - Motor 1
	//	 Vdc  ADC 14  (DRV8305 --> Va)
	//	 Va   ADC C3  (DRV8305 --> Vb)
	//	 Vb   ADC B3  (DRV8305 --> Vc)
	//	 Vc   ADC A3  (DRV8305 --> Vdc)
	//	 Ia   ADC C2/Comp6+
	//	 Ib   ADC B2/Comp3+
	//	 Ic   ADC A2/Comp1+

    // =============================================
	// Configure SOCx on ADCs A, B, C (D not used)
    // =============================================
	ADC_CH_ASSIGN(AdccRegs, 2, ADCSOC0CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Ia  @ C2
	ADC_CH_ASSIGN(AdcbRegs, 2, ADCSOC0CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Ib  @ B2
	ADC_CH_ASSIGN(AdcaRegs, 2, ADCSOC0CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Ic  @ A2  // dummy channel needed in R1.1

	// Configure ADC PPB to eliminate subtraction related calculation for current sensing
	AdccRegs.ADCPPB1CONFIG.bit.CONFIG = 0;        // PPB1 tied to SOC0
	AdcbRegs.ADCPPB1CONFIG.bit.CONFIG = 0;        // PPB1 tied to SOC0
	AdcaRegs.ADCPPB1CONFIG.bit.CONFIG = 0;        // PPB1 tied to SOC0

#if (MOTOR1_DRV == DRV8305)
	ADC_CH_ASSIGN(AdcaRegs, 14, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Va  @ A14
	ADC_CH_ASSIGN(AdccRegs,  3, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vb  @ C3
	ADC_CH_ASSIGN(AdcbRegs,  3, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vc  @ B3
	ADC_CH_ASSIGN(AdcaRegs,  3, ADCSOC4CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vdc @ A3
#else
	ADC_CH_ASSIGN(AdccRegs,  3, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Va  @ C3
	ADC_CH_ASSIGN(AdcbRegs,  3, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vb  @ B3
	ADC_CH_ASSIGN(AdcaRegs,  3, ADCSOC2CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vc  @ A3
	ADC_CH_ASSIGN(AdcaRegs, 14, ADCSOC4CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 1: Vdc @ A14
#endif

	//=============================================================================//
	// Motor - 2
	//===========
	//	 Analog Signals - Motor 2
	//	 Vdc  ADC 15  (DRV8305 --> Va)
	//	 Va   ADC C5  (DRV8305 --> Vb)
	//	 Vb   ADC B5  (DRV8305 --> Vc)
	//	 Vc   ADC A5  (DRV8305 --> Vdc)
	//	 Ia   ADC C4/Comp5+
	//	 Ib   ADC B4
	//	 Ic   ADC A4/Comp2+

    // =============================================
    // Configure SOCx on ADCs A, B, C (D not used)
    // =============================================
	ADC_CH_ASSIGN(AdccRegs, 4, ADCSOC1CTL, ADC_ACQPS, ADCTRIGSEL);    // Motor 2: Ia  @ C4
	ADC_CH_ASSIGN(AdcbRegs, 4, ADCSOC1CTL, ADC_ACQPS, ADCTRIGSEL);    // Motor 2: Ib  @ B4
	ADC_CH_ASSIGN(AdcaRegs, 4, ADCSOC1CTL, ADC_ACQPS, ADCTRIGSEL);    // Motor 2: Ic  @ A4

	// Configure ADC PPB to eliminate subtraction related calculation
	AdccRegs.ADCPPB2CONFIG.bit.CONFIG = 1;        // PPB2 tied to SOC1
	AdcbRegs.ADCPPB2CONFIG.bit.CONFIG = 1;        // PPB2 tied to SOC1
	AdcaRegs.ADCPPB2CONFIG.bit.CONFIG = 1;        // PPB2 tied to SOC1

#if (MOTOR2_DRV == DRV8305)
	ADC_CH_ASSIGN(AdcaRegs, 15, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Va  @ A15
	ADC_CH_ASSIGN(AdccRegs,  5, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vb  @ C5
	ADC_CH_ASSIGN(AdcbRegs,  5, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vc  @ B5
	ADC_CH_ASSIGN(AdcaRegs,  5, ADCSOC5CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vdc @ A5
#else
	ADC_CH_ASSIGN(AdccRegs,  5, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Va  @ C5
	ADC_CH_ASSIGN(AdcbRegs,  5, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vb  @ B5
	ADC_CH_ASSIGN(AdcaRegs,  5, ADCSOC3CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vc  @ A5
	ADC_CH_ASSIGN(AdcaRegs, 15, ADCSOC5CTL, ADC_ACQPS, ADCTRIGSEL);   // Motor 2: Vdc @ A15
#endif

    // ADC A EOC of SOC1 is used to flag availability of motor current samples
    AdcaRegs.ADCINTSEL1N2.bit.INT1SEL  = 1;  // currents sampled @ end of SOC1
    AdcaRegs.ADCINTSEL1N2.bit.INT1CONT = 1;
    AdcaRegs.ADCINTSEL1N2.bit.INT1E    = 1;

    // ADC A EOC of SOC5 is used to flag availability of motor voltage samples
    AdcaRegs.ADCINTSEL1N2.bit.INT2SEL  = 5;  // voltages sampled @ end of SOC5
    AdcaRegs.ADCINTSEL1N2.bit.INT2CONT = 1;
    AdcaRegs.ADCINTSEL1N2.bit.INT2E    = 1;

    EDIS;

// ****************************************************************************
// ****************************************************************************
// Initialize DAC modules (Analog and Digital)
// ****************************************************************************
// ****************************************************************************
    // Setup Analog DACS
#if (MOTOR1_DRV != GaN_BP)
    EALLOW;
    DacaRegs.DACCTL.bit.DACREFSEL  = REFERENCE_VREF;
    DacaRegs.DACOUTEN.bit.DACOUTEN = 1;      //Enable DAC output
    DacaRegs.DACVALS.bit.DACVALS   = 1024;
	EDIS;
#endif

#if (MOTOR2_DRV != GaN_BP)
	EALLOW;
    DacbRegs.DACCTL.bit.DACREFSEL  = REFERENCE_VREF;
    DacbRegs.DACOUTEN.bit.DACOUTEN = 1;      //Enable DAC output
    DacbRegs.DACVALS.bit.DACVALS   = 1024;
    EDIS;
#endif

	// Setup PWM DACs
	PwmDac_Init();

// ****************************************************************************
// ****************************************************************************
// Initialize QEP module
// ****************************************************************************
// ****************************************************************************
	InitMotor1EQepGpio();               // Init motor 1 QEP GPIOs
	InitMotor2EQepGpio();               // Init motor 2 QEP GPIOs

// ****************************************************************************
// ****************************************************************************
// Initialize SPI module for communication with DRV830x
// ****************************************************************************
// ****************************************************************************
#if (MOTOR1_DRV == DRV8301) || (MOTOR1_DRV == DRV8305)
	InitMotor1SpiGpio();                    // Init motor 1 SPI GPIOs
	InitSpiRegs_DRV830x(motor1.SpiRegs);    // Init SPI regs
#endif

#if (MOTOR2_DRV == DRV8301) || (MOTOR2_DRV == DRV8305)
	InitMotor2SpiGpio();                    // Init SPI GPIOs
	InitSpiRegs_DRV830x(motor2.SpiRegs);    // Init SPI regs
#endif

// ****************************************************************************
// ****************************************************************************
// Initialise DRV830x/ GaN_BP interface GPIOs
// ****************************************************************************
// ****************************************************************************
	InitMotor1_DRV_Gpio();                   // DRV init for motor 1
	InitMotor2_DRV_Gpio();                   // DRV init for motor 2

// ****************************************************************************
// ****************************************************************************
// Initialise DRV830x / GaN_BP
// ****************************************************************************
// ****************************************************************************
	ENABLE_INVERTER(&motor1);
	ENABLE_INVERTER(&motor2);
	DELAY_US(50000);		                // delay to allow DRV830x supplies to ramp up

#if (MOTOR1_DRV == DRV8301)
	InitDRV8301Regs(&motor1, DRV1_GAIN);    // Init DRV regs' mirror variables
//	motor1.drv8301.cntrl_reg1.bit.PWM_MODE = drv8301_pwmMode_6;
	InitDRV8301(&motor1);
	while (motor1.drv8301.DRV_fault) ;      // hang on if drv init is faulty
#elif (MOTOR1_DRV == DRV8305)
	InitDRV8305Regs(&motor1, DRV1_GAIN);
//	motor1.drv8305.cntrl7_gd.bit.PWM_MODE  = drv8305_PWM_mode_6;
	InitDRV8305(&motor1);
	while (motor1.drv8305.DRV_fault) ;      // hang on if drv init is faulty
#endif

#if (MOTOR2_DRV == DRV8301)
    InitDRV8301Regs(&motor2, DRV2_GAIN);    // Init DRV regs' mirror variables
//    motor2.drv8301.cntrl_reg1.bit.PWM_MODE = drv8301_pwmMode_6;
	InitDRV8301(&motor2);
	while (motor2.drv8301.DRV_fault) ;      // hang on if drv init is faulty
#elif (MOTOR2_DRV == DRV8305)
    InitDRV8305Regs(&motor2, DRV2_GAIN);               // Init DRV regs' mirror variables
//    motor2.drv8305.cntrl7_gd.bit.PWM_MODE  = drv8305_PWM_mode_6;
	InitDRV8305(&motor2);
	while (motor2.drv8305.DRV_fault) ;      // hang on if drv init is faulty
#endif

// ****************************************************************************
// ****************************************************************************
// Paramaeter Initialisation
// ****************************************************************************
// ****************************************************************************
	// Init QEP parameters
    motor1.qep.LineEncoder = QEP1_PPR; // these are the number of slots in the QEP encoder
    motor1.qep.MechScaler  = _IQ30(0.25/motor1.qep.LineEncoder);
    motor1.qep.PolePairs   = POLES1/2;
    motor1.qep.CalibratedAngle = 0;
    QepInit(&motor1);

    motor2.qep.LineEncoder = QEP2_PPR; // these are the number of slots in the QEP encoder
    motor2.qep.MechScaler  = _IQ30(0.25/motor1.qep.LineEncoder);
    motor2.qep.PolePairs   = POLES2/2;
    motor2.qep.CalibratedAngle = 0;
    QepInit(&motor2);

    // Initialize the Speed module for speed calculation from QEP
    motor1.speed.K1 = _IQ21(1/(MOTOR1_BASE_FREQ*motor1.T));
    motor1.speed.K2 = _IQ(1/(1+motor1.T*2*PI*66.6));      // 5; // Low-pass cut-off frequency
    motor1.speed.K3 = _IQ(1)-motor1.speed.K2;
    motor1.speed.BaseRpm = 120*(MOTOR1_BASE_FREQ/POLES1);

    motor2.speed.K1 = _IQ21(1/(MOTOR2_BASE_FREQ*motor2.T));
    motor2.speed.K2 = _IQ(1/(1+motor2.T*2*PI*66.6));      // 5; // Low-pass cut-off frequency
    motor2.speed.K3 = _IQ(1)-motor2.speed.K2;
    motor2.speed.BaseRpm = 120*(MOTOR2_BASE_FREQ/POLES2);

    // Initialize the RAMPGEN module
    motor1.rg.StepAngleMax = _IQ(MOTOR1_BASE_FREQ*motor1.T);
    motor2.rg.StepAngleMax = _IQ(MOTOR2_BASE_FREQ*motor2.T);

	// Initialize the PID module for speed
	motor1.pid_spd.param.Kp   = _IQ(10.0);     // changed from 1.0
	motor1.pid_spd.param.Ki   = _IQ(0.01);   // changed from 0.001
	motor1.pid_spd.param.Kd   = _IQ(0.0);
	motor1.pid_spd.param.Kr   = _IQ(1.0);
	motor1.pid_spd.param.Umax = _IQ(1.5*MOTOR1_BASE_CURRENT / INVERTER1_BASE_CURRENT);  //_IQ(0.95);
	motor1.pid_spd.param.Umin = - motor1.pid_spd.param.Umax;                  //_IQ(-0.95);

	motor2.pid_spd.param.Kp   = motor1.pid_spd.param.Kp;
	motor2.pid_spd.param.Ki   = _IQ(0.001);  //motor1.pid_spd.param.Ki;
	motor2.pid_spd.param.Kd   = motor1.pid_spd.param.Kd;
	motor2.pid_spd.param.Kr   = motor1.pid_spd.param.Kr;
	motor2.pid_spd.param.Umax = _IQ(1.5*MOTOR2_BASE_CURRENT / INVERTER2_BASE_CURRENT);
	motor2.pid_spd.param.Umin = -motor2.pid_spd.param.Umax;

    motor2.SpeedLoopPrescaler = 1;

    // *******************************************************
    // ------ FCL code start -----
    //Initialize Fast current loop variables here
    #if (SAMPLING_METHOD == SINGLE_SAMPLING)
       maxModIndex = (TPWM_CARRIER - (2*FCL_COMPUTATION_TIME))/TPWM_CARRIER;
    #elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
       maxModIndex = (TPWM_CARRIER - (4*FCL_COMPUTATION_TIME))/TPWM_CARRIER;
    #else
       #error  ******** INVALID SAMPLING METHOD CHOSEN *********
    #endif

    motor1.BaseFrequency       = MOTOR1_BASE_FREQ;
    motor1.BaseMotorVoltage    = MOTOR1_BASE_VOLTAGE;
    motor1.BaseMotorCurrent    = MOTOR1_BASE_CURRENT;
    motor1.BaseInverterCurrent = INVERTER1_BASE_CURRENT;
    motor1.BaseInverterVoltage = INVERTER1_BASE_VOLTAGE;
    motor1.currentSenseScale   = MOTOR1_ADC_CURRENT_SCALE;

    motor2.BaseFrequency       = MOTOR2_BASE_FREQ;
    motor2.BaseMotorVoltage    = MOTOR2_BASE_VOLTAGE;
    motor2.BaseMotorCurrent    = MOTOR2_BASE_CURRENT;
    motor2.BaseInverterCurrent = INVERTER2_BASE_CURRENT;
    motor2.BaseInverterVoltage = INVERTER2_BASE_VOLTAGE;
    motor2.currentSenseScale   = MOTOR2_ADC_CURRENT_SCALE;

    fast_current_loop_vars_init_MOTOR_1();
    fast_current_loop_vars_init_MOTOR_2();

	motor1.cntlr_id.Umax =  maxModIndex * _IQ(0.198);      //0.5        //motor1.pi_id.Umax;
    motor1.cntlr_iq.Umax =  maxModIndex * _IQ(0.98);      //0.8         //motor1.pi_iq.Umax;
    motor1.cntlr_id.Umin = -motor1.cntlr_id.Umax;                 //motor1.pi_id.Umin;
    motor1.cntlr_iq.Umin = -motor1.cntlr_iq.Umax;                 //motor1.pi_iq.Umin;

    motor2.cntlr_id.Umax =  motor1.cntlr_id.Umax;
    motor2.cntlr_iq.Umax =  motor1.cntlr_iq.Umax;
    motor2.cntlr_id.Umin = -motor2.cntlr_id.Umax;
    motor2.cntlr_iq.Umin = -motor2.cntlr_iq.Umax;

    QepCalibSm = LoopFlush;

    FCL_initPWM(&motor1);
    FCL_samplingMode(&motor1);
    FCL_initPWM(&motor2);
    FCL_samplingMode(&motor2);

    motor1.angMax = motor1.BaseFrequency * motor1.FCL_Pars.tSamp;
    motor2.angMax = motor2.BaseFrequency * motor2.FCL_Pars.tSamp;

    pwmTBPeriod = EPwm1Regs.TBPRD;
    // ------ FCL code end -----
    // *******************************************************

    // set speed ramp rates for both motors
    motor1.rc.RampDelayMax = 1;
    motor2.rc.RampDelayMax = 1;

	// Set mock REFERENCES for Speed and Iq loops
#if BUILDLEVEL == FCL_LEVEL1
	motor1.SpeedRef = 0.05;
	motor2.SpeedRef = 0.05;
#else
    motor1.SpeedRef = MOTOR1_FORCE_ANGLE_SPEED;  //0.05;
    motor2.SpeedRef = MOTOR2_FORCE_ANGLE_SPEED;  //0.05;
#endif
	motor1.IqRef = _IQ(SET_CURRENT_IN_PU(2.0));
	motor2.IqRef = _IQ(SET_CURRENT_IN_PU(2.0));

	motor1.alignCnt = 2*(int32)ISR_FREQUENCY*1000;
	motor2.alignCnt = 2*(int32)ISR_FREQUENCY*1000;

	// Init FLAGS
	motor1.RunMotor = STOP;
	motor2.RunMotor = STOP;
	motor1.lsw = Alignment;
    motor2.lsw = Alignment;

//  Note that the vector sum of d-q PI outputs should be less than 1.0 which
//  refers to maximum duty cycle for SVGEN. Another duty cycle limiting factor
//	is current sense through shunt resistors which depends on hardware/software
//  implementation. Depending on the application requirements 3,2 or a single
//	shunt resistor can be used for current waveform reconstruction. The higher
//  number of shunt resistors allow the higher duty cycle operation and better
//	dc bus utilization. The users should adjust the PI saturation levels
//  carefully during open loop tests (i.e pi_id.Umax, pi_iq.Umax and Umins) as
//	in project manuals. Violation of this procedure yields distorted  current
// waveforms and unstable closed loop operations which may damage the inverter.

// ****************************************************
// Initialize DATALOG module
// ****************************************************
	DLOG_4CH_F_init(&dlog_4ch1);

	dlog_4ch1.input_ptr1  = &DlogCh1;	//data value
	dlog_4ch1.input_ptr2  = &DlogCh2;
	dlog_4ch1.input_ptr3  = &DlogCh3;
	dlog_4ch1.input_ptr4  = &DlogCh4;

	dlog_4ch1.output_ptr1 = &DBUFF_4CH1[0];
	dlog_4ch1.output_ptr2 = &DBUFF_4CH2[0];
	dlog_4ch1.output_ptr3 = &DBUFF_4CH3[0];
	dlog_4ch1.output_ptr4 = &DBUFF_4CH4[0];

	dlog_4ch1.size       = 200;
	dlog_4ch1.pre_scalar = 5;
	dlog_4ch1.trig_value = 0.01;
	dlog_4ch1.status     = 2;

	// display variables on DAC
	dispVar1 = &motor1.park.Angle;
	dispVar2 = &motor2.park.Angle;

// ****************************************************************************
// ****************************************************************************
// Call DMC Protection function
// ****************************************************************************
// ****************************************************************************
	DMC1_Protection_Config();
	DMC2_Protection_Config();

// TODO
// ****************************************************************************
// ****************************************************************************
// Feedbacks OFFSET Calibration Routine
// ****************************************************************************
// ****************************************************************************
#if (MOTOR1_DRV == DRV8301)
	// Set DC-CAL to 0 to enable MOTOR1 DRV8301 current amplifiers
	GPIO_WritePin(MOTOR1_DC_CAL_GPIO,  0);
#endif

#if (MOTOR2_DRV == DRV8301)
	// Set DC-CAL to 0 to enable MOTOR2 DRV8301 current amplifiers
	GPIO_WritePin(MOTOR2_DC_CAL_GPIO,  0);
#endif

#if (MOTOR1_DRV == DRV8301) || (MOTOR2_DRV == DRV8301)
	DELAY_US(5);	// delay to allow DRV830x amplifiers to settle
#endif

    // ************************************************************************
    // PWM and QEP Clocks Enable
    // ************************************************************************
    EALLOW;
      CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;   // EPWM CLK enable
      (motor1.QepRegs)->QEPCTL.all |= (QPEN_ENABLE + UTE_ENABLE);  // QEP & UT enable
      (motor2.QepRegs)->QEPCTL.all |= (QPEN_ENABLE + UTE_ENABLE);  // QEP & UT enable
    EDIS;
    // ************************************************************************

	motor1.offset_shntA = 0;
	motor1.offset_shntB = 0;
	motor1.offset_shntC = 0;

	motor2.offset_shntA = 0;
	motor2.offset_shntB = 0;
	motor2.offset_shntC = 0;

	for (OffsetCalCounter=0; OffsetCalCounter<20000; )
	{
	    while(!(AdcaRegs.ADCINTFLG.bit.ADCINT1))
	        ;  // Use asm(" NOP") if next instruction were to read ADC directly
        if(OffsetCalCounter>1000)
        {
            motor1.offset_shntA = K1*motor1.offset_shntA + K2*(IFB_A1)*ADC_PU_SCALE_FACTOR; 	//Mtr1 : Phase A offset
            motor1.offset_shntB = K1*motor1.offset_shntB + K2*(IFB_B1)*ADC_PU_SCALE_FACTOR; 	//Mtr1 : Phase B offset
            motor1.offset_shntC = K1*motor1.offset_shntC + K2*(IFB_C1)*ADC_PU_SCALE_FACTOR; 	//Mtr1 : Phase C offset

            motor2.offset_shntA = K1*motor2.offset_shntA + K2*(IFB_A2)*ADC_PU_SCALE_FACTOR; 	//Mtr2 : Phase A offset
            motor2.offset_shntB = K1*motor2.offset_shntB + K2*(IFB_B2)*ADC_PU_SCALE_FACTOR; 	//Mtr2 : Phase B offset
            motor2.offset_shntC = K1*motor2.offset_shntC + K2*(IFB_C2)*ADC_PU_SCALE_FACTOR; 	//Mtr2 : Phase C offset
        }
        AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;      //clear ADCINT1 FLG
        OffsetCalCounter++;
	}

	// ********************************************
	// Init OFFSET regs with identified values
	// ********************************************
	EALLOW;

	AdccRegs.ADCPPB1OFFREF = motor1.offset_shntA*4096.0;      // set shunt Iu1 offset
	AdcbRegs.ADCPPB1OFFREF = motor1.offset_shntB*4096.0;      // set shunt Iv1 offset
	AdcaRegs.ADCPPB1OFFREF = motor1.offset_shntC*4096.0;      // set shunt Iw1 offset

	AdccRegs.ADCPPB2OFFREF = motor2.offset_shntA*4096.0;      // set shunt Iu2 offset
	AdcbRegs.ADCPPB2OFFREF = motor2.offset_shntB*4096.0;      // set shunt Iv2 offset
	AdcaRegs.ADCPPB2OFFREF = motor2.offset_shntC*4096.0;      // set shunt Iw2 offset

	EDIS;

// ****************************************************************************
// ****************************************************************************
//TODO ISR Mapping
// ****************************************************************************
// ****************************************************************************

	EALLOW;
    // Configure EPWM1 INT as Motor control Interrupt
    EPWM_ADCSoC.ETSEL.bit.INTSEL = (SAMPLING_METHOD == SINGLE_SAMPLING) ?
                                    ET_CTR_PRD :     // Select INT @ ctr = PRD
                                    ET_CTR_PRDZERO;  // Select INT @ ctr = PRD or ZERO
    EPWM_ADCSoC.ETSEL.bit.INTEN  = 1;                // Enable Interrupt from EPWM module
    EPWM_ADCSoC.ETPS.bit.INTPRD  = ET_1ST;           // Needs to be 1 for INTFRC to work

    PieVectTable.EPWM_ADCSoC_INT  = &MotorControlISR;
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1;               // Enable PWM1INT in PIE group 3

    IER |= M_INT3;                                   // Enable PIE group 3 INT
    EDIS;

// ****************************************************************************
// ****************************************************************************
//TODO Enable Interrupts
// ****************************************************************************
// ****************************************************************************
	EALLOW;
	EINT;          // Enable Global interrupt INTM
	ERTM;          // Enable Global realtime interrupt DBGM
	EDIS;

// ***************************************************************************
//  Initialisations COMPLETE
//  - IDLE loop. Just loop forever
// ***************************************************************************
	for(;;)  //infinite loop
	{
		// State machine entry & exit point
		//===========================================================
		(*Alpha_State_Ptr)();	// jump to an Alpha state (A0,B0,...)
		//===========================================================
	}
} //END MAIN CODE

/******************************************************************************
 * ****************************************************************************
 * ****************************************************************************
 * ****************************************************************************
 */

//==============================================================================
//	STATE-MACHINE SEQUENCING AND SYNCRONIZATION FOR SLOW BACKGROUND TASKS
//==============================================================================

//--------------------------------- FRAMEWORK ----------------------------------
void A0(void)
{
	// loop rate synchronizer for A-tasks
	if(CpuTimer0Regs.TCR.bit.TIF == 1)
	{
		CpuTimer0Regs.TCR.bit.TIF = 1;	// clear flag

		//-----------------------------------------------------------
		(*A_Task_Ptr)();		// jump to an A Task (A1,A2,A3,...)
		//-----------------------------------------------------------

		VTimer0[0]++;			// virtual timer 0, instance 0 (spare)
	}

	Alpha_State_Ptr = &B0;		// Comment out to allow only A tasks
}

void B0(void)
{
	// loop rate synchronizer for B-tasks
	if(CpuTimer1Regs.TCR.bit.TIF == 1)
	{
		CpuTimer1Regs.TCR.bit.TIF = 1;				// clear flag

		//-----------------------------------------------------------
		(*B_Task_Ptr)();		// jump to a B Task (B1,B2,B3,...)
		//-----------------------------------------------------------
		VTimer1[0]++;			// virtual timer 1, instance 0 (spare)
        SerialCommsTimer++;
	}

	Alpha_State_Ptr = &C0;		// Allow C state tasks
}

void C0(void)
{
	// loop rate synchronizer for C-tasks
	if(CpuTimer2Regs.TCR.bit.TIF == 1)
	{
		CpuTimer2Regs.TCR.bit.TIF = 1;				// clear flag

		//-----------------------------------------------------------
		(*C_Task_Ptr)();		// jump to a C Task (C1,C2,C3,...)
		//-----------------------------------------------------------
		VTimer2[0]++;			//virtual timer 2, instance 0 (spare)
	}

	Alpha_State_Ptr = &A0;	// Back to State A0
}


//==============================================================================
//	A - TASKS (executed in every 50 usec)
//==============================================================================

//--------------------------------------------------------
void A1(void)
//--------------------------------------------------------
{
#if BUILDLEVEL >= FCL_LEVEL5
    static Uint16 firstTime = 1;
#endif

    DMC_Protection(&motor1);  // Motor 1 -- DMC protections
    DMC_Protection(&motor2);  // Motor 2 -- DMC protections

    // -----------------------------------------------------------------------------
    // Re-calibrate QEPs of both motors
    // -----------------------------------------------------------------------------
    if (QepRecalFlag)
    {
        QepRecalFlag = 0;
        QepCalibSm = LoopFlush;
        motor1.SpeedRef = MOTOR1_FORCE_ANGLE_SPEED;
        motor2.SpeedRef = MOTOR2_FORCE_ANGLE_SPEED;
    }

#if BUILDLEVEL >= FCL_LEVEL5
    // -----------------------------------------------------------------------------
    // RUN the motors if QEP calibration is already done
    // -----------------------------------------------------------------------------
    if (QepCalibSm == Done)
    {
        if (firstTime)
        {
            firstTime = 0;
            loadMotor = MOTOR2;
//            motor1.RunMotor = RUN;
        }
        // -----------------------------------
        // setup drive motor and load motor
        // -----------------------------------
        if (loadMotor == MOTOR1)
            loadMotorInit(&motor1);    // motor-1 is load ; motor-2 is driver
        else if (loadMotor == MOTOR2)
            loadMotorInit(&motor2);    // motor-2 is load ; motor-1 is driver
        else if (loadMotor == NONE)
        {
            resetLoadMotor(&motor1);   // motor-1 --> back to reset state
            resetLoadMotor(&motor2);   // motor-2 --> back to reset state
        }
    }
    else
        firstTime = 1;
#endif

    //-------------------
	//the next time CpuTimer0 'counter' reaches Period value go to A2
	A_Task_Ptr = &A2;
	//-------------------
}

//-----------------------------------------------------------------
void A2(void) // SPARE (not used)
//-----------------------------------------------------------------
{

	//-------------------
	//the next time CpuTimer0 'counter' reaches Period value go to A3
	A_Task_Ptr = &A3;
	//-------------------
}

//-----------------------------------------
void A3(void) // SPARE (not used)
//-----------------------------------------
{

	//-----------------
	//the next time CpuTimer0 'counter' reaches Period value go to A1
	A_Task_Ptr = &A1;
	//-----------------
}



//==============================================================================
//	B - TASKS (executed in every 100 usec)
//==============================================================================

//----------------------------------- USER -------------------------------------

//----------------------------------------
void B1(void) // SPARE
//----------------------------------------
{

#if BUILDLEVEL == FCL_LEVEL6
    //----------------------------
    // SFRA test
    //----------------------------
    SFRA_F_BACKGROUND(&SFRA1);
    SerialHostComms();

    if(SFRA_InitFlag == 1)
    {
        SFRA_F_INIT(&SFRA1);
        SFRA_InitFlag = 0;
        SFRA1.start = 1;
    }
#endif

	//-----------------
	//the next time CpuTimer1 'counter' reaches Period value go to B2
	B_Task_Ptr = &B2;
	//-----------------
}

//----------------------------------------
void B2(void) //  SPARE
//----------------------------------------
{

	//-----------------
	//the next time CpuTimer1 'counter' reaches Period value go to B3
	B_Task_Ptr = &B3;
	//-----------------
}

//----------------------------------------
void B3(void) //  SPARE
//----------------------------------------
{

	//-----------------
	//the next time CpuTimer1 'counter' reaches Period value go to B1
	B_Task_Ptr = &B1;
	//-----------------
}


//==============================================================================
//	C - TASKS (executed in every 150 usec)
//==============================================================================

//--------------------------------- USER ---------------------------------------

//----------------------------------------
void C1(void)
//----------------------------------------
{

#if (MOTOR1_DRV != GaN_BP)
    Uint16 tmp1, tmp2;

	if (motor1.newCmdDRV)
	{
#if (MOTOR1_DRV == DRV8301)
		//write to DRV8301 control register 1, returns status register 1
		motor1.drv8301.stat_reg1.all = DRV8301_SPI_Write(&motor1, CNTRL_REG_1_ADDR);

		//write to DRV8301 control register 2, returns status register 1
		motor1.drv8301.stat_reg1.all = DRV8301_SPI_Write(&motor1, CNTRL_REG_2_ADDR);
#else
		for (tmp1=5; tmp1<= 0xc; tmp1++)
		{
			if (tmp1 != 8)
				tmp2 = DRV8305_SPI_Write(&motor1, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
		}
#endif
		motor1.newCmdDRV = 0;
	}
#endif

#if (MOTOR2_DRV != GaN_BP)

	if (motor2.newCmdDRV)
	{
#if (MOTOR2_DRV == DRV8301)
		//write to DRV8301 control register 1, returns status register 1
		motor2.drv8301.stat_reg1.all = DRV8301_SPI_Write(&motor2, CNTRL_REG_1_ADDR);

		//write to DRV8301 control register 2, returns status register 1
		motor2.drv8301.stat_reg1.all = DRV8301_SPI_Write(&motor2, CNTRL_REG_2_ADDR);
#else
		for (tmp1=5; tmp1<= 0xc; tmp1++)
		{
			if (tmp1 != 8)
				tmp2 = DRV8305_SPI_Write(&motor2, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
		}
#endif
		motor2.newCmdDRV = 0;
	}
#endif

	//-----------------
	//the next time CpuTimer2 'counter' reaches Period value go to C2
	C_Task_Ptr = &C2;
	//-----------------

}

//----------------------------------------
void C2(void)
//----------------------------------------
{
#if (MOTOR1_DRV == DRV8301)
	DRV8301_diagnostics(&motor1);
#elif (MOTOR1_DRV == DRV8305)
	DRV8305_diagnostics(&motor1);
#endif

#if (MOTOR2_DRV == DRV8301)
	DRV8301_diagnostics(&motor2);
#elif (MOTOR2_DRV == DRV8305)
	DRV8305_diagnostics(&motor2);
#endif

	//-----------------
	//the next time CpuTimer2 'counter' reaches Period value go to C3
	C_Task_Ptr = &C3;
	//-----------------
}


//-----------------------------------------
void C3(void) //  SPARE
//-----------------------------------------
{
	static Uint16 i;

	// LED blinking code
	if (++i >= LedCnt)
	{
		i = 0;
		GPIO_TogglePin(BLUE_LED_GPIO);
	}

	//-----------------
	//the next time CpuTimer2 'counter' reaches Period value go to C1
	C_Task_Ptr = &C1;
	//-----------------
}


#if BUILDLEVEL == FCL_LEVEL1
// ****************************************************************************
// ****************************************************************************
//TODO Motor Control ISR - Build level 1
//	  Checks target independent modules, duty cycle waveforms and PWM update
//	  Keep the motors disconnected at this level
// ****************************************************************************
// ****************************************************************************
inline void BuildLevel1(MOTOR_VARS * motor)
{
// -----------------------------------------------------------------------------
//  Connect inputs of the RMP module and call the ramp control macro
// -----------------------------------------------------------------------------
	motor->rc.TargetValue = motor->SpeedRef;
	RC_MACRO(motor->rc)

// -----------------------------------------------------------------------------
//  Connect inputs of the RAMP GEN module and call the ramp generator macro
// -----------------------------------------------------------------------------
	motor->rg.Freq = motor->rc.SetpointValue;
	RG_MACRO(motor->rg)

// -----------------------------------------------------------------------------
//  Connect inputs of the INV_PARK module and call the inverse park trans. macro
//	There are two option for trigonometric functions:
//  IQ sin/cos look-up table provides 512 discrete sin and cos points in Q30 format
//  IQsin/cos PU functions interpolate the data in the lookup table yielding higher resolution.
// -----------------------------------------------------------------------------
	motor->park.Angle   = motor->rg.Out;
	motor->park.Sine    = __sinpuf32(motor->park.Angle);
	motor->park.Cosine  = __cospuf32(motor->park.Angle);

	motor->ipark.Ds     = motor->VdTesting;
	motor->ipark.Qs     = motor->VqTesting;
	motor->ipark.Sine   = motor->park.Sine;
	motor->ipark.Cosine = motor->park.Cosine;
	IPARK_MACRO(motor->ipark)

// -----------------------------------------------------------------------------
//  Connect inputs of the SVGEN_DQ module and call the space-vector gen. macro
// -----------------------------------------------------------------------------
	motor->svgen.Ualpha = motor->ipark.Alpha;
	motor->svgen.Ubeta  = motor->ipark.Beta;
	SVGENDQ_MACRO(motor->svgen)

// -----------------------------------------------------------------------------
//  Computed Duty and Write to CMPA register
// -----------------------------------------------------------------------------
	motor->PwmARegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Ta)+INV_PWM_HALF_TBPRD;
	motor->PwmBRegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Tb)+INV_PWM_HALF_TBPRD;
	motor->PwmCRegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Tc)+INV_PWM_HALF_TBPRD;

// -----------------------------------------------------------------------------
//  Connect inputs of the DATALOG module
// -----------------------------------------------------------------------------
	DlogCh1 = motor->svgen.Ta;
	DlogCh2 = motor->svgen.Tb;
	DlogCh3 = motor->svgen.Tc;
	DlogCh4 = motor->svgen.Ta-motor->svgen.Tb;

//------------------------------------------------------------------------------
// Variable display on PWM DAC
//------------------------------------------------------------------------------
    PwmDac1(motor->svgen.Ta);
    PwmDac2(motor->svgen.Tb);
    PwmDac3(motor->svgen.Tc);
	PwmDac4(motor->svgen.Ta-motor->svgen.Tb);

	return;
}
#endif


#if BUILDLEVEL == FCL_LEVEL2
// ****************************************************************************
// ****************************************************************************
//TODO Motor Control ISR - - Build level 2
//	  Level 2 verifies
//	     - current sense schems
//         - analog-to-digital conversion - shunt current
//       - clarke/park transformations (CLARKE/PARK)
//       - Position sensor interface
//         - speed estimation
// ****************************************************************************
// ****************************************************************************
inline void BuildLevel2(MOTOR_VARS * motor)
{

	// -------------------------------------------------------------------------
	// Alignment Routine: this routine aligns the motor to zero electrical angle
	// and in case of QEP also finds the index location and initializes the
	// angle w.r.t. the index location
	// -------------------------------------------------------------------------
	if(motor->RunMotor == STOP)
		motor->lsw = Alignment;
	else if (motor->lsw == Alignment)
	{
		// for restarting from (motor->RunMotor = 0)
		motor->rc.TargetValue =  motor->rc.SetpointValue = 0;

		motor->lsw = WaitForIndex;   // for QEP, spin the motor to find the index pulse
	} // end else if (lsw==Alignment)

// -----------------------------------------------------------------------------
//  Connect inputs of the RMP module and call the ramp control macro
// -----------------------------------------------------------------------------
	if(motor->lsw==Alignment)motor->rc.TargetValue = 0;
	else motor->rc.TargetValue = motor->SpeedRef;
	RC_MACRO(motor->rc)

// -----------------------------------------------------------------------------
//  Connect inputs of the RAMP GEN module and call the ramp generator macro
// -----------------------------------------------------------------------------
    motor->rg.Freq = motor->rc.SetpointValue;
	RG_MACRO(motor->rg)

// -----------------------------------------------------------------------------
//  Measure phase currents, subtract the offset and normalize from (-0.5,+0.5) to (-1,+1).
//	Connect inputs of the CLARKE module and call the clarke transformation macro
// -----------------------------------------------------------------------------
	phaseCurrentSense(motor);
	CLARKE_MACRO(motor->clarke)

// -----------------------------------------------------------------------------
//	Measure DC bus voltage
// -----------------------------------------------------------------------------
    DCbusVoltageSense(motor);    //  Measure the DC bus voltage

// -----------------------------------------------------------------------------
//  Connect inputs of the SPEED_FR module and call the speed calculation macro
// -----------------------------------------------------------------------------
    motor->speed.ElecTheta = motor->ElecTheta;
	SPEED_FR_MACRO(motor->speed)

// -----------------------------------------------------------------------------
//  Connect inputs of the PARK module and call the park trans. macro
// -----------------------------------------------------------------------------
	motor->park.Alpha  = motor->clarke.Alpha;
	motor->park.Beta   = motor->clarke.Beta;
	motor->park.Angle  = motor->rg.Out;
	motor->park.Sine   = __sinpuf32(motor->park.Angle);
	motor->park.Cosine = __cospuf32(motor->park.Angle);
	PARK_MACRO(motor->park)

// -----------------------------------------------------------------------------
//	Connect inputs of the INV_PARK module and call the inverse park trans. macro
// -----------------------------------------------------------------------------
	motor->ipark.Ds = motor->VdTesting;
	motor->ipark.Qs = motor->VqTesting;

	motor->ipark.Sine   = motor->park.Sine;
	motor->ipark.Cosine = motor->park.Cosine;
	IPARK_MACRO(motor->ipark)

// -----------------------------------------------------------------------------
//  Connect inputs of the SVGEN_DQ module and call the space-vector gen. macro
// -----------------------------------------------------------------------------
  	motor->svgen.Ualpha = motor->ipark.Alpha;
 	motor->svgen.Ubeta  = motor->ipark.Beta;
	SVGENDQ_MACRO(motor->svgen)

// -----------------------------------------------------------------------------
//  Computed Duty and Write to CMPA register
// -----------------------------------------------------------------------------
	motor->PwmARegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Ta)+INV_PWM_HALF_TBPRD;
	motor->PwmBRegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Tb)+INV_PWM_HALF_TBPRD;
	motor->PwmCRegs->CMPA.bit.CMPA = (INV_PWM_HALF_TBPRD*motor->svgen.Tc)+INV_PWM_HALF_TBPRD;

// -----------------------------------------------------------------------------
//    Connect inputs of the DATALOG module
// -----------------------------------------------------------------------------
	DlogCh1 = motor->rg.Out;
	DlogCh2 = motor->speed.ElecTheta;   //  motor->svgen.Ta;      //
	DlogCh3 = motor->clarke.As;
	DlogCh4 = motor->clarke.Bs;

//-----------------------------------------------------------------------------
// Variable display on PWM DAC
//-----------------------------------------------------------------------------
    PwmDac1(motor->rg.Out);
    PwmDac2(motor->speed.ElecTheta);
    PwmDac3(motor->clarke.As);
    PwmDac4(motor->clarke.Bs);

	return;
}
#endif


// ****************************************************************************
// ****************************************************************************
//TODO Motor Control ISR
// ****************************************************************************
// ****************************************************************************

/**************************************************************************
 * NOTE :-                                                                *
 * BUILDLEVELS: 1-4                                                       *
 *   the motors may be kept separate for independent  verification of     *
 *   the function of the loop. If their shafts are tied together, it may  *
 *   be difficult to test them alright, with one dragging the other       *
 *                                                                        *
 * For buildlevel 5 and 6,                                                *
 *   the motors are supposed to be tied together so that one can be set   *
 *   up to load the other. SFRA can be done                               *
 *                                                                        *
 * BUILDLEVEL5:                                                           *
 *   The basic motor generator function is verified in this buildlevel.   *
 *   Between the two motors, one of them can be configured as load motor  *
 *   and the other will be automatically configured in generator mode,    *
 *   with current limit set to a lower value than the load motor so that  *
 *   the drive motor can produce more torque to haul the load motor       *
 *                                                                        *
 * BUILDLEVEL 6:                                                          *
 *   Basically, code wise, it is same as BUILDLEVEL5. For sake of         *
 *   clarity, SFRA analysis is done in this build level. SFRA can be done *
 *   for any of the loops, but can be tried in only one of the loops in   *
 *   any one of the motors at a given time.                               *
 * ************************************************************************
 */
interrupt void MotorControlISR(void)
{

//    GPIO_TogglePin(TEMP_GPIO, IsrTicker%2);
//    GpioDataRegs.GPDDAT.bit.GPIO104 = 1;

    #if (BUILDLEVEL == FCL_LEVEL1)
        // *********************************************************************
        // NOTE:-
        // if both motors are coupled during this test
        //     then one can drag / hinder the other
        // If both motors are to be tested together,
        //     then keep their shafts disengaged
        // else
        //     test only one motor at a time by commenting the other one
        // *********************************************************************
        BuildLevel1(&motor1);
        BuildLevel1(&motor2);

   #else

// -----------------------------------------------------------------------------
//  Obtain position encoder (QEP) feedback
// -----------------------------------------------------------------------------
    QepPosEstModule(&motor1);
    QepPosEstModule(&motor2);

    #if (BUILDLEVEL==FCL_LEVEL2)
        // *********************************************************************
        // NOTE:-
        // if both motors are coupled during this test
        //     then one can drag / hinder the other
        // If both motors are to be tested together,
        //     then keep their shafts disengaged
        // else
        //     test only one motor at a time by commenting the other one
        // *********************************************************************
        BuildLevel2(&motor1);
        BuildLevel2(&motor2);

    #else
// -----------------------------------------------------------------------------
//  Measure phase currents
// -----------------------------------------------------------------------------
    while(!(AdcaRegs.ADCINTFLG.bit.ADCINT1));
        asm(" NOP");

// -----------------------------------------------------------------------------
// Calibrate QEPs of both motors if not done already
// -----------------------------------------------------------------------------
    if (QepCalibSm != Done)
    {
        if (QepCalFlag == 1)
            QepCalibSm = QepCalib (&motor1, &motor2, QepCalibSm);
    }

// -----------------------------------------------------------------------------
// RUN the motors if QEP calibration is done already
// -----------------------------------------------------------------------------
    else  //if (QepCalibSm == Done)
    {
    #if (BUILDLEVEL==FCL_LEVEL3)
        // *********************************************************************
        // *********************************************************************
        // *********************************************************************
        // Build level 3 - CURRENT LOOP
        //
        //  NOTE:- Iq loop is closed using actual position feedback.
        //         Therefore, motor speed can race to high speed with a high
        //         IqRef. User's should ensure that the test value for
        //         Iq reference is low enough to not race the motor to
        //         high speeds. In other words, a loaded motor is needed.
        // *********************************************************************
        // *********************************************************************
        // NOTE:-
        // if both motors are coupled during this test
        //     then one can drag / hinder the other
        // If both motors are to be tested together,
        //     then keep their shafts disengaged
        // else
        //     test only one motor at a time by commenting the other one
        // *********************************************************************
        FCL_routine(&motor1);
        get_FCL_time();
        FCL_routine(&motor2);

        FCL_wrap_Routine(&motor1);
        currentLoopRoutine(&motor1);

        FCL_wrap_Routine(&motor2);
        currentLoopRoutine(&motor2);

    #elif (BUILDLEVEL==FCL_LEVEL4)
        // *********************************************************************
        // Build level 4 - SPEED LOOP
        //
        // NOTE:-
        // if both motors are coupled during this test
        //     then one can drag / hinder the other
        // If both motors are to be tested together,
        //     then keep their shafts disengaged
        // else
        //     test only one motor at a time by commenting the other one
        // *********************************************************************
        FCL_routine(&motor1);
        get_FCL_time();
        FCL_routine(&motor2);

        FCL_wrap_Routine(&motor1);
        spdLoopRoutine(&motor1);

        FCL_wrap_Routine(&motor2);
        spdLoopRoutine(&motor2);

    #elif (BUILDLEVEL==FCL_LEVEL5)
        // *********************************************************************
        // COUPLE both motor shafts for Motor-Generator operation
        // NOTE:
        //   Functionally, this build level is same as BUILDLEVEL 4
        // *********************************************************************
        FCL_routine(&motor1);
        get_FCL_time();
        FCL_routine(&motor2);

        FCL_wrap_Routine(&motor1);
        spdLoopRoutine(&motor1);

        FCL_wrap_Routine(&motor2);
        spdLoopRoutine(&motor2);

    #elif (BUILDLEVEL==FCL_LEVEL6)
        // *********************************************************************
        // COUPLE both motor shafts for Motor-Generator operation
        // NOTE:
        //   - Functionally, this build level is same as BUILDLEVEL 4 and 5
        //   - SFRA integration is done for frequency response analysis
        // *********************************************************************
        FCL_routine(&motor1);
        get_FCL_time();
        FCL_routine(&motor2);

        if (sfraCollectStart)
            sfraCollect(&motor2);     // Collect noise data from loop feedback

        FCL_wrap_Routine(&motor1);
        spdLoopRoutine(&motor1);

        FCL_wrap_Routine(&motor2);
        spdLoopRoutine(&motor2);

        sfraInject(&motor2);          // Inject noise signal into loop reference
        sfraCollectStart = 1;         // Enable noise data collection flag

    #endif  // end #if (BUILDLEVEL==FCL_LEVEL3)

    // -----------------------------------------------------------------------------
    //    Connect inputs of the DATALOG module - common code for build levels 3-6
    // -----------------------------------------------------------------------------
        DlogCh1 = motor1.rg.Out;
        DlogCh2 = motor1.speed.ElecTheta;   //  motor->svgen.Ta;      //
        DlogCh3 = motor1.clarke.As;
        DlogCh4 = motor1.clarke.Bs;

    //-----------------------------------------------------------------------------
    // Variable display on PWM DAC - common code for build levels 3-6
    //-----------------------------------------------------------------------------
        PwmDac1(motor1.rg.Out);
        PwmDac2(motor1.speed.ElecTheta);
        PwmDac3(motor1.clarke.As);
        PwmDac4(motor1.clarke.Bs);

    }   //end of else (if (QepCalibSm == Done))

    #endif   // end #if (BUILDLEVEL==FCL_LEVEL2)
    #endif   // end #if (BUILDLEVEL==FCL_LEVEL1)

//-----------------------------------------------------------------------------
// Variable display on Analog DAC - common to all build levels
//-----------------------------------------------------------------------------
#define  DAC_MACRO_PU(A)  ((_IQ(1.0) + A)*2048)

#if (MOTOR1_DRV != GaN_BP)
    DacaRegs.DACVALS.bit.DACVALS = DAC_MACRO_PU(*dispVar1);  // display variable of DAC-A
#endif
#if (MOTOR2_DRV != GaN_BP)
    DacbRegs.DACVALS.bit.DACVALS = DAC_MACRO_PU(*dispVar2);  // display variable on DAC-B
#endif

//-----------------------------------------------------------------------------
// GPIO flagging for timing purposes
//-----------------------------------------------------------------------------
	GpioDataRegs.GPDDAT.bit.GPIO104 = 0;
//	GPIO_WritePin(TEMP_GPIO, 0);

// -----------------------------------------------------------------------------
//    Call the DATALOG update function
// -----------------------------------------------------------------------------
	DLOG_4CH_F_FUNC(&dlog_4ch1);

// -----------------------------------------------------------------------------
// Verifying the ISR
// -----------------------------------------------------------------------------
    IsrTicker++;

// -----------------------------------------------------------------------------
//clear EPWMINT, ADCINT1/2 FLGs and ack PIE INT
// -----------------------------------------------------------------------------
    EPWM_ADCSoC.ETCLR.bit.INT = 1;              // clear EPWM INT FLG
    AdcaRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;      // clear ADCINT1 FLG
    AdcaRegs.ADCINTFLGCLR.bit.ADCINT2 = 1;      // clear ADCINT2 FLG
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;     // ACK the PWM interrupt

    return;

}// MainISR Ends Here

/*******************************************************************************
 * End of Code                                                                 *
 * *****************************************************************************
 */
