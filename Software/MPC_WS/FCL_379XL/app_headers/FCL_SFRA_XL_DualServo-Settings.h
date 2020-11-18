//#############################################################################
// FILE    : FCL_SFRA_XL_DualServo-Settings.h
// TITLE   : Header file with user settings
// VERSION : 1.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : Mar 19, 2018
//  Author        : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#ifndef DUALMTRSERVO_379D_XL_DUALMTRSERVO_SETTINGS_H_
#define DUALMTRSERVO_379D_XL_DUALMTRSERVO_SETTINGS_H_

///*-------------------------------------------------------------------------------
//Include project specific include files.
//-------------------------------------------------------------------------------*/
// define math type as float(1)
#define   MATH_TYPE      1
#include "IQmathLib.h"
#include "F28x_Project.h"

#define  DRV8301   0
#define  DRV8305   1
#define  GaN_BP    2

/* ****************************************************************************
 * NOTE:
 * DRV8301 Booster pack operates at lower voltage (24V). For FCL verification,
 * either DRV8305 or GaN booster pack is appropriate
 * ****************************************************************************
 */
#define  MOTOR1_DRV   GaN_BP   //select between DRV8305 and GaN_BP for inverter
#define  MOTOR2_DRV   GaN_BP   //select between DRV8305 and GaN_BP for inverter

#if MOTOR1_DRV != GaN_BP
  #define  MOTOR1_EXT_DEADBAND   // To use dead band of gate drivers
#endif
#if MOTOR2_DRV != GaN_BP
  #define  MOTOR2_EXT_DEADBAND   // To use dead band of gate drivers
#endif

/*------------------------------------------------------------------------------
Following is the list of the Build Level choices.
------------------------------------------------------------------------------*/
#define  FCL_LEVEL1   1      	// Module check out (do not connect the motors)
#define  FCL_LEVEL2   2         // Verify ADC, park/clarke, calibrate the offset and speed measurement
#define  FCL_LEVEL3   3         // Verify closed current(torque) loop and its PIs
#define  FCL_LEVEL4   4         // Verify speed loop of drive and load motor
#define  FCL_LEVEL5   5         // Verify dual motor - Motor-Generator dyno setup
#define  FCL_LEVEL6   6         // Get SFRA plots from load motor

/*------------------------------------------------------------------------------
This line sets the SAMPLING FREQUENCY to one of the available choices
------------------------------------------------------------------------------*/
#define  SINGLE_SAMPLING    1
#define  DOUBLE_SAMPLING    2

/*------------------------------------------------------------------------------
Here below, pick current loop controller option
------------------------------------------------------------------------------*/
//#define  CMPLX_CNTLR     1
//#define  PI_CNTLR        2

/*------------------------------------------------------------------------------
This line sets the user choice to one of the available choices.
------------------------------------------------------------------------------*/
#define   BUILDLEVEL          FCL_LEVEL1         // FCL_LEVEL1-6       //
#define   SAMPLING_METHOD     DOUBLE_SAMPLING    // SINGLE_SAMPLING    // - No Double sampling in DRV BPs
//#define   FCL_CNTLR           PI_CNTLR         // declared as variable in 'FCL_SFRA_DualServo.c' //

#ifndef BUILDLEVEL
#error  Critical: BUILDLEVEL must be defined !!
#endif  // BUILDLEVEL
//------------------------------------------------------------------------------

/*------------------------------------------------------------------------------
Set up the parameters for SFRA evaluation
------------------------------------------------------------------------------*/
//#define SFRA_ISR_FREQ      SAMPLING_FREQ
#define SFRA_FREQ_START    10    // SFRA sweep start frequency
#define SFRA_FREQ_LENGTH   26    // Number of SFRA sweep frequencies
//SFRA step Multiply = 10^(1/No of steps per decade(10 - 1))
#define FREQ_STEP_MULTIPLY 1.29154966f  // freq multiplier for next sweep freq
//------------------------------------------------------------------------------

#ifndef TRUE
#define FALSE 0
#define TRUE  1
#endif

#define PI 3.14159265358979

// Define the system frequency (MHz)
#if (DSP2803x_DEVICE_H==1)
#define SYSTEM_FREQUENCY 60
#elif (DSP280x_DEVICE_H==1)
#define SYSTEM_FREQUENCY 100
#elif (F28_2837xD==1)
#define SYSTEM_FREQUENCY 200
#elif (F28_2837xS==1)
#define SYSTEM_FREQUENCY 200
#endif

// Timer definitions based on System Clock
#define		mSec0_5		0.5*SYSTEM_FREQUENCY*1000		// 0.5 mS
#define		mSec1		1*SYSTEM_FREQUENCY*1000		// 1.0 mS
#define		mSec2		2.0*SYSTEM_FREQUENCY*1000		// 2.0 mS
#define		mSec5		5*SYSTEM_FREQUENCY*1000		// 5.0 mS
#define		mSec7_5		7.5*SYSTEM_FREQUENCY*1000		// 7.5 mS
#define		mSec10		10*SYSTEM_FREQUENCY*1000		// 10 mS
#define		mSec20		20*SYSTEM_FREQUENCY*1000		// 20 mS
#define		mSec50		50*SYSTEM_FREQUENCY*1000		// 50 mS
#define		mSec100		100*SYSTEM_FREQUENCY*1000		// 100 mS
#define		mSec500		500*SYSTEM_FREQUENCY*1000	// 500 mS
#define		mSec1000	1000*SYSTEM_FREQUENCY*1000	// 1000 mS

//*****************************************************************************
//*****************************************************************************
//*****************************************************************************
// Define the PWM frequency and ISR frequency (kHz)
#define  PWM_FREQUENCY           10.0

#if (SAMPLING_METHOD == SINGLE_SAMPLING)
  #define ISR_FREQUENCY           (PWM_FREQUENCY)
#elif (SAMPLING_METHOD == DOUBLE_SAMPLING)
  #define ISR_FREQUENCY           (2*PWM_FREQUENCY)
#endif

//========================================================================
    /* Default PWM clock is divided by 2 in F2837x.
     * ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV=1 ==> 100MHz EPWM clk
     * Deadband needs to be 0.05us, count = 0.05us/10ns = 5
     */
#ifndef MOTOR1_EXT_DEADBAND
  #define  MOTOR1_DEAD_BAND_TIME        5  // 0.05us
#endif

#ifndef MOTOR2_EXT_DEADBAND
  #define  MOTOR2_DEAD_BAND_TIME        5  // 0.05us
#endif
//========================================================================

#define REFERENCE_VDAC     0
#define REFERENCE_VREF     1

#define  INV_PWM_TICKS              ((SYSTEM_FREQUENCY/2.0)/PWM_FREQUENCY)*1000
#define  QEP_UNIT_TIMER_TICKS       ((SYSTEM_FREQUENCY/(2*PWM_FREQUENCY))*1000)
#define  INV_PWM_TBPRD              INV_PWM_TICKS/2
#define  INV_PWM_HALF_TBPRD         INV_PWM_TICKS/4
#define  SAMPLING_FREQ              (ISR_FREQUENCY*1000)
#define  TPWM_CARRIER               (1000.0/(PWM_FREQUENCY))    //in uSec
#define  MOTOR1_FCL_BANDWIDTH_Hz    (SAMPLING_FREQ / 18)
#define  MOTOR2_FCL_BANDWIDTH_Hz    (SAMPLING_FREQ / 18)

//FCL Computation time predetermined from library
//tests on F2837xD
#define  FCL_COMPUTATION_TIME      (3.0)  //in uS

// Force angle speed used while spinning the shaft for QEP calibration
#define  MOTOR1_RATED_SPEED        (MOTOR1_RATED_FREQ / MOTOR1_BASE_FREQ)
#define  MOTOR2_RATED_SPEED        (MOTOR2_RATED_FREQ / MOTOR2_BASE_FREQ)

#define  MOTOR1_FORCE_ANGLE_SPEED  0.0125*MOTOR1_RATED_SPEED
#define  MOTOR2_FORCE_ANGLE_SPEED  0.0125*MOTOR2_RATED_SPEED

//*****************************************************************************
//*****************************************************************************
//*****************************************************************************
/*------------------------------
 * MOTOR 1 Inverter Parameters
 * ----------------------------- */
#if MOTOR1_DRV == DRV8305

  // DRV inverter's current sense amplifier's gain setting
  #define  DRV1_GAIN_10  10
  #define  DRV1_GAIN_20  20
  #define  DRV1_GAIN_40  40
  #define  DRV1_GAIN_80  80

  #define  DRV1_GAIN  DRV1_GAIN_40

  #if   ( (DRV1_GAIN != DRV1_GAIN_10) &&  \
          (DRV1_GAIN != DRV1_GAIN_20) &&  \
          (DRV1_GAIN != DRV1_GAIN_40) &&  \
          (DRV1_GAIN != DRV1_GAIN_80) )
  #error  Invalid MOTOR 1 DRV GAIN selection !!
  #endif

  /*************************************************************************
   * NOTE:-
   * Base voltage and base current information needs tweaking to fit
   * within 3.0V reference.
   * For TMS320F28379x, the reference is 3.0V. Therefore,
   * the base voltage and base current values will vary.
   *
   * Original base current       = OBC (for a spread of 3.3V - 1.65V = 1.65V)
   * Revised base current (RBC)  = OBC * (3.0-1.65)/(3.3-1.65)
   *                   also, RBC = (3.0 - 1.65)/(SenseR * DRV_Gain)
   *
   * Original base voltage (OBV) = 45V (for a spread of 0 to 3.3V)
   * Revised base voltage (RBV)  = OBV * 3.0/3.3
   *                             = 40V
   *************************************************************************
   */
  #define  SENSE_RES1                0.007      // in Ohms
  #define  V_ISENSE_MID_VOLT1        1.65       // in Volts
  #define  Vmax_ISENSE1              (3.0-1.65) // in Volts - max range from mid point
  #define  INVERTER1_BASE_CURRENT    (Vmax_ISENSE1/(SENSE_RES1 * DRV1_GAIN))  // Base current (Amps)
           /*  INVERTER1_BASE_CURRENT
            *     - 19.28A @ DRV_GAIN = 10
            *     -  9.64A @ DRV_GAIN = 20
            *     -  4.82A @ DRV_GAIN = 40  (default)
            *     -  2.41A @ DRV_GAIN = 80
            * .................................................................
            * NOTE:-
            * ===========
            * If DRV 8305 is used at a higher gain setting, the OCP limit
            * should be reduced (default is 8A).
            * .................................................................
            */

  #define  INVERTER1_BASE_VOLTAGE    40.0  // Base voltage (volts)

#elif MOTOR1_DRV == GaN_BP

  /*************************************************************************
   * NOTE:-
   * Base voltage and base current information from TIDA-00909 doc is
   * based off of an ADC that works at 3.3V reference.
   * For TMS320F28379x, the reference is 3.0V. Therefore,
   * the base voltage and base current values will vary.
   *
   * Original base current = 16.5A (for a spread of 3.3V - 1.65V = 1.65V)
   * Revised base current  = 16.5*(3.0-1.65)/(3.3-1.65)
   *                       = 13.5A
   *
   * Original base voltage = 81.5V (for a spread of 0 to 3.3V)
   * Revised base voltage  = 81.5 * 3.0/3.3
   *                       = 74.1V
   *************************************************************************
   */
  #define  INVERTER1_BASE_CURRENT    13.5   // Base current (Amps) - revised from TIDA-00909 doc
  #define  INVERTER1_BASE_VOLTAGE    74.1   // Base voltage (Volt) - revised from TIDA-00909 doc

#endif
/*------------------------------
 * MOTOR 2 Inverter Parameters
 * ----------------------------- */
#if MOTOR2_DRV == DRV8305

  // DRV inverter's current sense amplifier's gain setting
  #define  DRV2_GAIN_10  10
  #define  DRV2_GAIN_20  20
  #define  DRV2_GAIN_40  40
  #define  DRV2_GAIN_80  80

  #define  DRV2_GAIN  DRV2_GAIN_40

  #if   ( (DRV2_GAIN != DRV2_GAIN_10) &&  \
          (DRV2_GAIN != DRV2_GAIN_20) &&  \
          (DRV2_GAIN != DRV2_GAIN_40) &&  \
          (DRV2_GAIN != DRV2_GAIN_80) )
  #error  Invalid MOTOR 2 DRV GAIN selection !!
  #endif

  /*************************************************************************
   * NOTE:-
   * Base voltage and base current information needs tweaking to fit
   * within 3.0V reference.
   * For TMS320F28379x, the reference is 3.0V. Therefore,
   * the base voltage and base current values will vary.
   *
   * Original base current       = OBC (for a spread of 3.3V - 1.65V = 1.65V)
   * Revised base current (RBC)  = OBC * (3.0-1.65)/(3.3-1.65)
   *                   also, RBC = (3.0 - 1.65)/(SenseR * DRV_Gain)
   *
   * Original base voltage (OBV) = 45V (for a spread of 0 to 3.3V)
   * Revised base voltage (RBV)  = OBV * 3.0/3.3
   *                             = 40V
   *************************************************************************
   */
  #define  SENSE_RES2                0.007      // in Ohms
  #define  V_ISENSE_MID_VOLT2        1.65       // in Volts
  #define  Vmax_ISENSE2              (3.0-1.65) // in Volts - max range from mid point
  #define  INVERTER2_BASE_CURRENT    (Vmax_ISENSE2/(SENSE_RES2 * DRV2_GAIN))   // Base current (Amps)
           /*  INVERTER2_BASE_CURRENT
            *     - 19.28A @ DRV_GAIN = 10
            *     -  9.64A @ DRV_GAIN = 20
            *     -  4.82A @ DRV_GAIN = 40  (default)
            *     -  2.41A @ DRV_GAIN = 80
            * .................................................................
            * NOTE:-
            * ===========
            * If DRV 8305 is used at a higher gain setting, the OCP limit
            * should be reduced (default is 8A).
            * .................................................................
            */

  #define  INVERTER2_BASE_VOLTAGE    40.0  // Base voltage (volts)

#elif MOTOR2_DRV == GaN_BP

  /*************************************************************************
   * NOTE:-
   * Base voltage and base current information from TIDA-00909 doc is
   * based off of an ADC that works at 3.3V reference.
   * For TMS320F28379x, the reference is 3.0V. Therefore,
   * the base voltage and base current values will vary.
   *
   * Original base current = 16.5A (for a spread of 3.3V - 1.65V = 1.65V)
   * Revised base current  = 16.5*(3.0-1.65)/(3.3-1.65)
   *                       = 13.5A
   *
   * Original base voltage = 81.5V (for a spread of 0 to 3.3V)
   * Revised base voltage  = 81.5 * 3.0/3.3
   *                       = 74.1V
   *************************************************************************
   */
  #define  INVERTER2_BASE_CURRENT    13.5   // Base current (Amps) - revised from TIDA-00909 doc
  #define  INVERTER2_BASE_VOLTAGE    74.1   // Base voltage (Volt) - revised from TIDA-00909 doc

#endif

//*****************************************************************************
//*****************************************************************************
//*****************************************************************************
/*-----------------------------------------
 * MOTOR 1 BASE quantities
 *-----------------------------------------*/
#define MOTOR1_BASE_VOLTAGE    24.0       // Base peak phase voltage (volt)
//#define MOTOR1_BASE_CURRENT     4.0       // Base peak phase current (amp)
#define MOTOR1_BASE_CURRENT     4.4       // Base peak phase current (amp)
#define MOTOR1_BASE_TORQUE     		      // Base torque (N.m)
#define MOTOR1_BASE_FLUX       			  // Base flux linkage (volt.sec/rad)
#define MOTOR1_RATED_FREQ     400.0       // Rated motor electrical freq
#define MOTOR1_BASE_FREQ      500.0       // Base electrical frequency (Hz) -for inverter

/*----------------------------------------------------
 * MOTOR 1 PARAMETERS (Teknic Motor : M-2310P-LN-04K)
 *----------------------------------------------------*/
#define  RS1       0.36                   // Stator resistance (ohm)
#define  RR1                              // Rotor resistance (ohm)
#define  LS1       0.0002                 // Stator inductance (H)
#define  LR1                              // Rotor inductance (H)
#define  LM1                              // Magnetizing inductance (H)
#define  POLES1    8                      // Number of poles
#define  QEP1_PPR  1000                   // QEP pulse per rotation

/*-----------------------------------------
 * MOTOR 2 BASE quantities
 *-----------------------------------------*/
#define MOTOR2_BASE_VOLTAGE    24.0       // Base peak phase voltage (volt)
//#define MOTOR2_BASE_CURRENT     4.0       // Base peak phase current (amp)
#define MOTOR2_BASE_CURRENT     4.4       // Base peak phase current (amp)
#define MOTOR2_BASE_TORQUE                // Base torque (N.m)
#define MOTOR2_BASE_FLUX                  // Base flux linkage (volt.sec/rad)
#define MOTOR2_RATED_FREQ     400.0       // Rated motor electrical freq
#define MOTOR2_BASE_FREQ      500.0       // Base electrical frequency (Hz) - for inverter

/*----------------------------------------------------
 * MOTOR 2 PARAMETERS (Teknic Motor : M-2310P-LN-04K)
 *----------------------------------------------------*/
#define  RS2       0.36                   // Stator resistance (ohm)
#define  RR2                              // Rotor resistance (ohm)
#define  LS2       0.0002                 // Stator inductance (H)
#define  LR2                              // Rotor inductance (H)
#define  LM2                              // Magnetizing inductance (H)
#define  POLES2    8                      // Number of poles
#define  QEP2_PPR  1000                   // QEP pulse per rotation

/*****************************************************************************
 * ***************************************************************************
 */
#endif
