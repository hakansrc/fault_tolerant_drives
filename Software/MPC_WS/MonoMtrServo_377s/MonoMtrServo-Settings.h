//----------------------------------------------------------------------------------
//	FILE:			MonoMtrServo-Settings.h
//
//	Description:	User settings file for Single motor control with 37xS launch pad
//
//	Version: 		1.0
//
//  Target:  		TMS320F28377S
//
//----------------------------------------------------------------------------------
//  Copyright Texas Instruments � 2004-2015
//----------------------------------------------------------------------------------
//  Revision History:
//----------------------------------------------------------------------------------
//  Date	  | Description / Status
//----------------------------------------------------------------------------------
// 4 Nov 2015 - User settings file
//----------------------------------------------------------------------------------

#ifndef MONOMTRSERVO_SETTINGS_H_
#define MONOMTRSERVO_SETTINGS_H_

///*-------------------------------------------------------------------------------
//Include project specific include files.
//-------------------------------------------------------------------------------*/
// define math type as float(1)
#define MATH_TYPE 1
#include "IQmathLib.h"
#include "F28x_Project.h"

#define DRV8301 0
#define DRV8305 1

#define MOTOR1_DRV DRV8305

/*------------------------------------------------------------------------------
Following is the list of the Build Level choices.
------------------------------------------------------------------------------*/
#define LEVEL1 1 // Module check out (do not connect the motors)
#define LEVEL2 2 // Verify ADC, park/clarke, calibrate the offset and speed measurement
#define LEVEL3 3 // Verify closed current(torque) loop and its PIs
#define LEVEL4 4 // Verify speed loop and speed PID
#define LEVEL5 5 // Verify position loop

/*------------------------------------------------------------------------------
This line sets the BUILDLEVEL to one of the available choices.
------------------------------------------------------------------------------*/
#define BUILDLEVEL LEVEL2

#ifndef BUILDLEVEL
#error Critical: BUILDLEVEL must be defined !!
#endif // BUILDLEVEL
//------------------------------------------------------------------------------

#ifndef TRUE
#define FALSE 0
#define TRUE 1
#endif

#define PI 3.14159265358979

// Define the system frequency (MHz)
#if (DSP2803x_DEVICE_H == 1)
#define SYSTEM_FREQUENCY 60
#elif (DSP280x_DEVICE_H == 1)
#define SYSTEM_FREQUENCY 100
#elif (F28_2837xD == 1)
#define SYSTEM_FREQUENCY 200
#elif (F28_2837xS == 1)
#define SYSTEM_FREQUENCY 200
#endif

// Timer definitions based on System Clock
// 150 MHz devices
#define mSec0_5 0.5 * SYSTEM_FREQUENCY * 1000	// 0.5 mS
#define mSec1 1 * SYSTEM_FREQUENCY * 1000		// 1.0 mS
#define mSec2 2.0 * SYSTEM_FREQUENCY * 1000		// 2.0 mS
#define mSec5 5 * SYSTEM_FREQUENCY * 1000		// 5.0 mS
#define mSec7_5 7.5 * SYSTEM_FREQUENCY * 1000	// 7.5 mS
#define mSec10 10 * SYSTEM_FREQUENCY * 1000		// 10 mS
#define mSec20 20 * SYSTEM_FREQUENCY * 1000		// 20 mS
#define mSec50 50 * SYSTEM_FREQUENCY * 1000		// 50 mS
#define mSec100 100 * SYSTEM_FREQUENCY * 1000	// 100 mS
#define mSec500 500 * SYSTEM_FREQUENCY * 1000	// 500 mS
#define mSec1000 1000 * SYSTEM_FREQUENCY * 1000 // 1000 mS

// Define the ISR frequency (kHz)
#define PWM_FREQUENCY 10
#define ISR_FREQUENCY PWM_FREQUENCY
#define INV_PWM_TICKS ((SYSTEM_FREQUENCY / 2.0) / PWM_FREQUENCY) * 1000
#define INV_PWM_TBPRD INV_PWM_TICKS / 2
#define INV_PWM_HALF_TBPRD INV_PWM_TICKS / 4

#define POS_KI_LOW_SPD 0.8 // _IQ(0.0001)
#define POS_KI_MED_SPD 1.0 //_IQ(0.001)
#define POS_KI_HI_SPD 1.2  //_IQ(0.01)

/*------------------------------------------------------------------------------
set the motor parameters to the one available
------------------------------------------------------------------------------*/

// Define the electrical motor parametes (Estun Servomotor)
#define RS 2.35	  // Stator resistance (ohm)
#define RR		  // Rotor resistance (ohm)
#define LS 0.0065 // Stator inductance (H)
#define LR		  // Rotor inductance (H)
#define LM		  // Magnatizing inductance (H)
#define POLES 8	  // Number of poles \
				  // Number of poles

// Define the base quantites
#define BASE_VOLTAGE 236.14		// Base peak phase voltage (volt), Vdc/sqrt(3)
#define BASE_SHUNT_CURRENT 9.95 // Base peak phase current (amp), Max. measurable peak curr.
#define BASE_LEM_CURRENT 12.0	//  ----- do -----
#define BASE_TORQUE				// Base torque (N.m)
#define BASE_FLUX				// Base flux linkage (volt.sec/rad)
#define BASE_FREQ 200			// Base electrical frequency (Hz)

//options for BASE_CURRENT based on DRV830x current-sense amplifier gain setting
//NOTE: DRV8302 can only be set to gain of 10 or 40
//#define DRV_GAIN	10
//#define DRV_GAIN	20
#define DRV_GAIN 40
//#define DRV_GAIN	80

#if DRV_GAIN == 10
#define BASE_CURRENT 82.5 // Base current (with DRV830x gain set to 10)
#elif DRV_GAIN == 20
#define BASE_CURRENT 41.25 // Base current (with DRV830x gain set to 20)
#elif DRV_GAIN == 40
#define BASE_CURRENT 20.625 // Base current (with DRV830x gain set to 40)
#elif DRV_GAIN == 80
#define BASE_CURRENT 10.3125 // Base current (with DRV830x gain set to 80)
#else
#error Invalid GAIN selection !!
#endif

/*****************************************************************************
 * ***************************************************************************
 */
#endif
