//#############################################################################
// FILE    : DmcProtection.C
// TITLE   : Digital Motor Control protection functions
// Version : 1.0
//
//  Group           : C2000
//  Target Family   : F2837x
//  Created on      : Mar 9, 2018
//  Author          : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#include <FCL_SFRA_XL_DualServo-Settings.h>
#include "DualMtrServo.h"
#include "DMC_protections.h"

extern MOTOR_VARS  motor1, motor2;

// ******************************************************************************
// ******************************************************************************
// ******************************************************************************
//definitions for selecting DACH reference
#define REFERENCE_VDDA     0

//definitions for COMPH input selection
#define NEGIN_DAC          0
#define NEGIN_PIN          1

//definitions for CTRIPH/CTRIPOUTH output selection
#define CTRIP_ASYNCH       0
#define CTRIP_SYNCH        1
#define CTRIP_FILTER       2
#define CTRIP_LATCH        3

#define  TRIP4             3
#define  TRIP5             4

#define OCP_INA240_HI(A)     (1.65 + 1.35*A/INVERTER1_BASE_CURRENT)*4096/3
#define OCP_INA240_LO(A)     (1.65 - 1.35*A/INVERTER1_BASE_CURRENT)*4096/3

// *******************************************************
// Motor x -- DRV830x protections
// *******************************************************
#if (MOTOR1_DRV != GaN_BP)
  #define  ENABLE_INVERTER1()      GPIO_WritePin(MOTOR1_EN_GATE_GPIO, 1)  // enable DRV830x
  #define  DISABLE_INVERTER1()     GPIO_WritePin(MOTOR1_EN_GATE_GPIO, 0)  // disable DRV830x
#else
  #define  ENABLE_INVERTER1()      GPIO_WritePin(MOTOR1_EN_GATE_GPIO, 0)  // enable GaN board buffer ENABLE pin
  #define  DISABLE_INVERTER1()     GPIO_WritePin(MOTOR1_EN_GATE_GPIO, 1)  // disable GaN board buffer ENABLE pin
#endif

#if (MOTOR2_DRV != GaN_BP)
  #define  ENABLE_INVERTER2()      GPIO_WritePin(MOTOR2_EN_GATE_GPIO, 1)  // enable DRV830x
  #define  DISABLE_INVERTER2()     GPIO_WritePin(MOTOR2_EN_GATE_GPIO, 0)  // disable DRV830x
#else
  #define  ENABLE_INVERTER2()      GPIO_WritePin(MOTOR2_EN_GATE_GPIO, 0)  // enable GaN board buffer ENABLE pin
  #define  DISABLE_INVERTER2()     GPIO_WritePin(MOTOR2_EN_GATE_GPIO, 1)  // disable GaN board buffer ENABLE pin
#endif

//*****************************************************************************
// variables used for OCP
//========================
float curLimit = 8.0;

// CMPSS parameters for Over Current Protection
Uint16  clkPrescale = 20,
        sampwin     = 30,
        thresh      = 18,
        OCP_curHi   = OCP_INA240_HI(8.0),
        OCP_curLo   = OCP_INA240_LO(8.0);

//*****************************************************************************
// functions defined in this file
//================================
void cmpssConfig(volatile struct CMPSS_REGS *v, int16 Hi, int16 Lo);
void CMPSS_DIG_FILTER(volatile struct CMPSS_REGS * v, Uint16 curHi, Uint16 curLo);

//void PwmTripConfig(volatile struct EPWM_REGS * PwmRegs, Uint16 TripNum);
//void DMC1_Protection_Config(void);
//void DMC2_Protection_Config(void);
//void DMC_Protection (MOTOR_VARS * motor);
//void DISABLE_INVERTER(MOTOR_VARS * m);
//void ENABLE_INVERTER(MOTOR_VARS * m);

// ****************************************************************************
// ****************************************************************************
//TODO  DMC Protection Against Over Current Protection
// ****************************************************************************
// ****************************************************************************

void  DISABLE_INVERTER(MOTOR_VARS * m)
{
    if (m == &motor1)  DISABLE_INVERTER1();
    else               DISABLE_INVERTER2();
    return;
}

//*****************************************************************************
void  ENABLE_INVERTER(MOTOR_VARS * m)
{
    if (m == &motor1)  ENABLE_INVERTER1();
    else               ENABLE_INVERTER2();
    return;
}

//*****************************************************************************
void PwmTripConfig(volatile struct EPWM_REGS * PwmRegs, Uint16 TripNum)
{
    EALLOW;

    PwmRegs->DCTRIPSEL.bit.DCAHCOMPSEL = TripNum; //TripNum is input to DCAHCOMPSEL
    PwmRegs->TZDCSEL.bit.DCAEVT1       = TZ_DCAH_HI;
    PwmRegs->DCACTL.bit.EVT1SRCSEL     = DC_EVT1;
    PwmRegs->DCACTL.bit.EVT1FRCSYNCSEL = DC_EVT_ASYNC;
    PwmRegs->TZSEL.bit.DCAEVT1         = 1;
    PwmRegs->TZSEL.bit.CBC6    = 0x1;         // Emulator Stop
    PwmRegs->TZCTL.bit.TZA     = TZ_FORCE_LO; // TZA event force EPWMxA go low
    PwmRegs->TZCTL.bit.TZB     = TZ_FORCE_LO; // TZB event force EPWMxB go low
    PwmRegs->TZCLR.bit.DCAEVT1 = 1;           // Clear any spurious OV trip
    PwmRegs->TZCLR.bit.OST     = 1;           // clear any spurious OST set early

    EDIS;
}

//*****************************************************************************
void cmpssConfig(volatile struct CMPSS_REGS *v, int16 Hi, int16 Lo)
{
    EALLOW;
    // Set up COMPCTL register
    v->COMPCTL.bit.COMPDACE    = 1;             // Enable CMPSS
    v->COMPCTL.bit.COMPLSOURCE = NEGIN_DAC;     // NEG signal from DAC for COMP-L
    v->COMPCTL.bit.COMPHSOURCE = NEGIN_DAC;     // NEG signal from DAC for COMP-H
    v->COMPCTL.bit.COMPHINV    = 0;             // COMP-H output is NOT inverted
    v->COMPCTL.bit.COMPLINV    = 1;             // COMP-L output is inverted
    v->COMPCTL.bit.ASYNCHEN    = 0;             // Disable aynch COMP-H ouput
    v->COMPCTL.bit.ASYNCLEN    = 0;             // Disable aynch COMP-L ouput
    v->COMPCTL.bit.CTRIPHSEL    = CTRIP_FILTER; // Dig filter output ==> CTRIPH
    v->COMPCTL.bit.CTRIPOUTHSEL = CTRIP_FILTER; // Dig filter output ==> CTRIPOUTH
    v->COMPCTL.bit.CTRIPLSEL    = CTRIP_FILTER; // Dig filter output ==> CTRIPL
    v->COMPCTL.bit.CTRIPOUTLSEL = CTRIP_FILTER; // Dig filter output ==> CTRIPOUTL

    // Set up COMPHYSCTL register
    v->COMPHYSCTL.bit.COMPHYS   = 2; // COMP hysteresis set to 2x typical value

    // set up COMPDACCTL register
    v->COMPDACCTL.bit.SELREF    = 0; // VDDA is REF for CMPSS DACs
    v->COMPDACCTL.bit.SWLOADSEL = 0; // DAC updated on sysclock
    v->COMPDACCTL.bit.DACSOURCE = 0; // Ramp bypassed

    // Load DACs - High and Low
    v->DACHVALS.bit.DACVAL = Hi;     // Set DAC-H to allowed MAX +ve current
    v->DACLVALS.bit.DACVAL = Lo;     // Set DAC-L to allowed MAX -ve current

    // digital filter settings - HIGH side
    v->CTRIPHFILCLKCTL.bit.CLKPRESCALE = clkPrescale; // set time between samples, max : 1023
    v->CTRIPHFILCTL.bit.SAMPWIN        = sampwin;     // # of samples in window, max : 31
    v->CTRIPHFILCTL.bit.THRESH         = thresh;      // recommended : thresh > sampwin/2
    v->CTRIPHFILCTL.bit.FILINIT        = 1;           // Init samples to filter input value

    // digital filter settings - LOW side
    v->CTRIPLFILCLKCTL.bit.CLKPRESCALE = clkPrescale; // set time between samples, max : 1023
    v->CTRIPLFILCTL.bit.SAMPWIN        = sampwin;     // # of samples in window, max : 31
    v->CTRIPLFILCTL.bit.THRESH         = thresh;      // recommended : thresh > sampwin/2
    v->CTRIPLFILCTL.bit.FILINIT        = 1;           // Init samples to filter input value

    // Clear the status register for latched comparator events
    v->COMPSTSCLR.bit.HLATCHCLR = 1;
    v->COMPSTSCLR.bit.LLATCHCLR = 1;
    EDIS;

    return;
}

//**************************************************************************
void DMC1_Protection_Config(void)
{
    EALLOW;

    // Use Mux to generate TRIP4
    // Clear everything first
    EPwmXbarRegs.TRIP4MUX0TO15CFG.all  = 0x0000;    // clear all MUXes - MUX  0 to 15
    EPwmXbarRegs.TRIP4MUX16TO31CFG.all = 0x0000;    // clear all MUXes - MUX 16 to 31
    EPwmXbarRegs.TRIP4MUXENABLE.all    = 0x0000;    // Disable all the muxes first

    EDIS;

#if (MOTOR1_DRV != GaN_BP)
    // Configure GPIO used for Trip Mechanism
    // Configure as Input - Motor 1 - FAULT - (active low), trip PWM based on this
    GPIO_SetupPinOptions(MOTOR1_FAULT_GPIO, GPIO_INPUT, GPIO_INVERT);
    GPIO_SetupPinMux(MOTOR1_FAULT_GPIO, 0, MOTOR1_FAULT_MUX);

    EALLOW;
    // Enable Mux for InputXbar1
    InputXbarRegs.INPUT1SELECT = MOTOR1_FAULT_GPIO; // Select FAULT as INPUTXBAR1
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX1 = 1;     // Enable Mux for ored input of inputxbar1
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX1   = 1;     // Enable MUX1 to generate TRIP4
    EDIS;

#if (MOTOR1_DRV == DRV8301)
    // Configure GPIO used for Trip Mechanism
    // Configure as Input - Motor 1 - OCTW - (active low), trip PWM based on this
    GPIO_SetupPinOptions(MOTOR1_OCTW_GPIO, GPIO_INPUT, GPIO_INVERT);
    GPIO_SetupPinMux(MOTOR1_OCTW_GPIO, 0, MOTOR1_OCTW_MUX);

    EALLOW;
    // Enable Mux for InputXbar2
    InputXbarRegs.INPUT2SELECT = MOTOR1_OCTW_GPIO;  // Select OCTW as INPUTXBAR2
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX3 = 1;     // Enable Mux for ored input of inputxbar2
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX3   = 1;     // Enable MUX3 to generate TRIP4
    EDIS;
#endif
#endif

    // =========================================================
    // CMPSS used for programmable OCP
    // =========================================================
    // LEM Current phase V(ADC A2, COMP1) and W(ADC B2, COMP3), High Low Compare event trips
    OCP_curHi = OCP_INA240_HI(curLimit);
    OCP_curLo = OCP_INA240_LO(curLimit);
    cmpssConfig(motor1.CmpssARegs, OCP_curHi, OCP_curLo);  //Enable CMPSS1 - LEM A
    cmpssConfig(motor1.CmpssBRegs, OCP_curHi, OCP_curLo);  //Enable CMPSS3 - LEM B
    cmpssConfig(motor1.CmpssCRegs, OCP_curHi, OCP_curLo);  //Enable CMPSS6 - LEM C

    EALLOW;
    // Connect Muxes for ored input of CMPSSxH and xL
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX10 = 1;  //cmpss6 - tripH or tripL - current Ia
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX4  = 1;  //cmpss3 - tripH or tripL - current Ib
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX0  = 1;  //cmpss1 - tripH or tripL - current Ic

    // Enable Mux to generate TRIP4
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX10 = 1;   // current Ia
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX4  = 1;   // current Ib
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX0  = 1;   // current Ic
    EDIS;

    PwmTripConfig(motor1.PwmARegs, TRIP4);
    PwmTripConfig(motor1.PwmBRegs, TRIP4);
    PwmTripConfig(motor1.PwmCRegs, TRIP4);

    return;
}

//*****************************************************************************
void DMC2_Protection_Config(void)
{
    EALLOW;

    // Use Mux to generate TRIP5
    // Clear everything first
    EPwmXbarRegs.TRIP5MUX0TO15CFG.all  = 0x0000;    // clear all MUXes - MUX  0 to 15
    EPwmXbarRegs.TRIP5MUX16TO31CFG.all = 0x0000;    // clear all MUXes - MUX 16 to 31
    EPwmXbarRegs.TRIP5MUXENABLE.all    = 0x0000;    // Disable all the muxes first

    EDIS;

#if (MOTOR2_DRV != GaN_BP)
    // Configure GPIO used for Trip Mechanism
    // Configure as Input - Motor 2 - FAULT - (active low), trip PWM based on this
    GPIO_SetupPinOptions(MOTOR2_FAULT_GPIO, GPIO_INPUT, GPIO_INVERT);
    GPIO_SetupPinMux(MOTOR2_FAULT_GPIO, 0, MOTOR2_FAULT_MUX);

    EALLOW;
    // Enable Mux for InputXbar4
    InputXbarRegs.INPUT4SELECT = MOTOR2_FAULT_GPIO; // Select FAULT as INPUTXBAR4
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX7 = 1;     // Enable Mux for ored input of inputXbar4
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX7   = 1;     // Enable Mux 7 to generate TRIP5
    EDIS;

#if (MOTOR2_DRV == DRV8301)
    // Configure GPIO used for Trip Mechanism
    // Configure as Input - Motor 2 - OCTW - (active low), trip PWM based on this
    GPIO_SetupPinOptions(MOTOR2_OCTW_GPIO, GPIO_INPUT, GPIO_INVERT);
    GPIO_SetupPinMux(MOTOR2_OCTW_GPIO, 0, MOTOR2_OCTW_MUX);

    EALLOW;
    // Enable Mux for InputXbar3
    InputXbarRegs.INPUT3SELECT = MOTOR2_OCTW_GPIO;  // Select OCTW as INPUTXBAR3
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX5 = 1;     // Enable Mux for ored input of InputXbar3
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX5   = 1;     // Enable Mux 5 to generate TRIP5
    EDIS;
#endif
#endif

    // =========================================================
    // CMPSS used for programmable OCP
    // =========================================================
    // LEM Current phase V(ADC A2, COMP1) and W(ADC B2, COMP3), High Low Compare event trips
    OCP_curHi = OCP_INA240_HI(curLimit);
    OCP_curLo = OCP_INA240_LO(curLimit);
    cmpssConfig(motor2.CmpssARegs, OCP_curHi, OCP_curLo);  //Enable CMPSS2 - LEM A
    cmpssConfig(motor2.CmpssBRegs, OCP_curHi, OCP_curLo);  //Enable CMPSS5 - LEM B
    cmpssConfig(motor2.CmpssCRegs, OCP_curHi, OCP_curLo);  //Enable CMPSS5 - LEM C

    EALLOW;
    // Connect Muxes for ored input of CMPSSxH and xL
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX8  = 1;  //cmpss2 - tripH or tripL - current Ia
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX2  = 1;  //cmpss5 - tripH or tripL - current Ib
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX2  = 1;  //cmpss5 - tripH or tripL - current Ic

    // Enable Mux to generate TRIP5
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX8  = 1;   // current Ia
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX2  = 1;   // current Ib
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX2  = 1;   // current Ic
    EDIS;

    PwmTripConfig(motor2.PwmARegs, TRIP5);
    PwmTripConfig(motor2.PwmBRegs, TRIP5);
    PwmTripConfig(motor2.PwmCRegs, TRIP5);

    return;
}

// ****************************************************************************
// Setup OCP limits and digital filter parameters of CMPSS
void CMPSS_DIG_FILTER(volatile struct CMPSS_REGS * v, Uint16 curHi, Uint16 curLo)
{
    // comparator references
    v->DACHVALS.bit.DACVAL = curHi;   // positive max current limit
    v->DACLVALS.bit.DACVAL = curLo;   // negative max current limit

    // digital filter settings - HIGH side
    v->CTRIPHFILCLKCTL.bit.CLKPRESCALE = clkPrescale;    // set time between samples, max : 1023
    v->CTRIPHFILCTL.bit.SAMPWIN        = sampwin;        // # of samples in window, max : 31
    v->CTRIPHFILCTL.bit.THRESH         = thresh;         // recommended : thresh > sampwin/2

    // digital filter settings - LOW side
    v->CTRIPLFILCLKCTL.bit.CLKPRESCALE = clkPrescale;    // Max count of 1023 */
    v->CTRIPLFILCTL.bit.SAMPWIN        = sampwin;        // # of samples in window, max : 31
    v->CTRIPLFILCTL.bit.THRESH         = thresh;         // recommended : thresh > sampwin/2

    return;
}

// ****************************************************************************
void DMC_Protection (MOTOR_VARS * motor)
{
    // *******************************************************
    // Current limit setting / tuning in Debug environment
    // *******************************************************
    EALLOW;
      OCP_curHi = OCP_INA240_HI(curLimit);
      OCP_curLo = OCP_INA240_LO(curLimit);

      CMPSS_DIG_FILTER(motor->CmpssARegs, OCP_curHi, OCP_curLo);     // LEM - A
      CMPSS_DIG_FILTER(motor->CmpssBRegs, OCP_curHi, OCP_curLo);     // LEM - B
      CMPSS_DIG_FILTER(motor->CmpssCRegs, OCP_curHi, OCP_curLo);     // LEM - C
    EDIS;

    // Check for PWM trip due to over current
    if ( (motor->PwmARegs)->TZFLG.bit.OST |
         (motor->PwmBRegs)->TZFLG.bit.OST |
         (motor->PwmCRegs)->TZFLG.bit.OST
       )
    {
        EALLOW;
          (motor->PwmARegs)->TZFRC.bit.OST = 0;
          (motor->PwmBRegs)->TZFRC.bit.OST = 0;
          (motor->PwmCRegs)->TZFRC.bit.OST = 0;
        EDIS;

        motor->TripFlagDMC = 1;           // Trip on DMC (fault trip )
        DISABLE_INVERTER(motor);
        motor->RunMotor = STOP;
        motor->cntlr_id.Out = 0;
        motor->cntlr_iq.Out = 0;
    }

    // If clear cmd received, reset PWM trip
    if (motor->clearTripFlagDMC)
    {
        ENABLE_INVERTER(motor);
        DELAY_US(50000);                        // DRV830x settling time

        motor->TripFlagDMC = 0;
        motor->clearTripFlagDMC = 0;

        // clear EPWM trip flags
        EALLOW;
          (motor->PwmARegs)->TZCLR.bit.OST = 1;
          (motor->PwmBRegs)->TZCLR.bit.OST = 1;
          (motor->PwmCRegs)->TZCLR.bit.OST = 1;

          // clear HLATCH - (not in TRIP gen path)
          (motor->CmpssARegs)->COMPSTSCLR.bit.HLATCHCLR = 1;
          (motor->CmpssBRegs)->COMPSTSCLR.bit.HLATCHCLR = 1;
          (motor->CmpssCRegs)->COMPSTSCLR.bit.HLATCHCLR = 1;

          // clear LLATCH - (not in TRIP gen path)
          (motor->CmpssARegs)->COMPSTSCLR.bit.LLATCHCLR = 1;
          (motor->CmpssBRegs)->COMPSTSCLR.bit.LLATCHCLR = 1;
          (motor->CmpssCRegs)->COMPSTSCLR.bit.LLATCHCLR = 1;
        EDIS;
    }

    return;
}

// ****************************************************************************
// ****************************************************************************
// ****************************************************************************
