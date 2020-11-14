//----------------------------------------------------------------------------------
//	FILE:			MotorVars.h
//
//	Description:	Variable structure definition for motor control
//
//	Version: 		1.0
//
//  Target:  		TMS320F28377S
//
//----------------------------------------------------------------------------------
//  Copyright Texas Instruments © 2004-2015
//----------------------------------------------------------------------------------
//  Revision History:
//----------------------------------------------------------------------------------
//  Date	  | Description / Status
//----------------------------------------------------------------------------------
// 4 Nov 2015 - Variable structure defintion for motor control
//----------------------------------------------------------------------------------

#ifndef MOTORVARS_H_
#define MOTORVARS_H_

#define   MATH_TYPE      1
#include "IQmathLib.h"
#include "F28x_Project.h"
#include "MonoMtrServo-Settings.h"

#include "park.h"       		// Include header for the PARK object
#include "ipark.h"       		// Include header for the IPARK object
#include "pi.h"       			// Include header for the PIDREG3 object
#include "clarke.h"         	// Include header for the CLARKE object
#include "svgen.h"		       	// Include header for the SVGENDQ object
#include "rampgen.h"        	// Include header for the RAMPGEN object
#include "rmp_cntl.h"       	// Include header for the RMPCNTL object
#include "volt_calc.h"      	// Include header for the PHASEVOLTAGE object
#include "speed_est.h"          // Include header for the SPEED_ESTIMATION object
#include "speed_fr.h"			// Include header for the SPEED_MEAS_QEP object
#include "pid_grando.h"			// Include header for the PID_GRANDO object
#include "pid_reg3.h"			// Include header for the PID_REG3 object

#include "F2837x_QEP_Module.h"

#include "drv8301_defs.h"
#include "drv8305_defs.h"

// ****************************************************************************
// Motor variables - for Field Oriented Control
// ****************************************************************************
typedef struct {
	volatile struct EPWM_REGS * PwmARegs,
	                          * PwmBRegs,
							  * PwmCRegs;

	volatile struct EQEP_REGS * QepRegs;

	volatile struct SPI_REGS  * SpiRegs;

	Uint16                    drvScsPin;

	_iq  offset_shntA,   // shunt current feedback A - offset @ 0A
	     offset_shntB,   // shunt current feedback B - offset @ 0A
		 offset_shntC,   // shunt current feedback C - offset @ 0A

		 VdTesting,			// Vd reference (pu)
		 VqTesting,			// Vq reference (pu)
		 IdRef,			    // Id reference (pu)
		 IqRef,			    // Iq reference (pu)
		 SpeedRef,          // speed ref (pu)
	     ElecTheta,         // position encoder - elec angle (pu)
	     MechTheta;         // position encoder - mech angle (pu)

	float32 currentAs,      // phase A
	        currentBs,      // phase B
			currentCs;      // phase C

	int32   alignCntr,       // rotor alignment time at start up, Id current ramp up
	        alignCnt;        // rotor alignment time cntr

	Uint16  lsw,                    // switch
	        TripFlagDMC,            // motor trip flag
			clearTripFlagDMC,       // clear trip flag
			RunMotor,
	        SpeedLoopPrescaler,     // Speed loop pre scalar
	        SpeedLoopCount,         // Speed loop counter
		    PosSenseReverse,        // position sense reverse flag {0 ==> (A,B,C ==> Black, Red, White)}
		    newCmdDRV;              // send new command to DRV

	float32  T;               // sampling time

	// Transform variables
	CLARKE clarke;            // clarke transform
	PARK   park;              // park transform
	IPARK  ipark;             // inv park transform

	// Controller variables
//	PIDREG3         pid_pos;          // (optional - for eval)
	PI_CONTROLLER   pi_pos;
	PID_CONTROLLER	pid_spd;
	PI_CONTROLLER   pi_id;
	PI_CONTROLLER   pi_iq;

	SVGEN svgen;               // SVPWM variable

	RMPCNTL rc;                // ramp control

	RAMPGEN rg;                // sweep angle generator for forced angle control

	PHASEVOLTAGE volt;         // motor voltages

	SPEED_MEAS_QEP speed;      // speed calc

	QEP qep;                   // QEP variables

	DRV8301_Vars drv8301;      // DRV8301 parameters

	DRV8305_Vars drv8305;      // DRV8305 parameters

} MOTOR_VARS;

// ****************************************************************************
// Default values for motor variables with DRV8301 and DRV8305
// ****************************************************************************
#define DRV830x_MOTOR_DEFAULTS  {                         \
			&EPwm1Regs,	/*  PwmARegs  - change in main */ \
		    &EPwm1Regs, /*  PwmBRegs  - change in main */ \
		    &EPwm1Regs, /*  PwmCRegs  - change in main */ \
		    &EQep1Regs, /*  QepRegs   - change in main */ \
            &SpiaRegs,  /*  SpiRegs   - change in main */ \
            0,          /*  drvScsPin - change in main */ \
			                                              \
		    0,          /*  offset_shntA          */      \
		    0,          /*  offset_shntB          */      \
		    0,          /*  offset_shntC          */      \
                                                          \
		    0,          /*  VdTesting             */      \
			_IQ(0.07),  /*  VqTesting             */      \
			0,          /*  IdRef                 */      \
			0,          /*  IqRef                 */      \
			0,          /*  SpeedRef              */      \
	        0,          /*  posEncElecTheta       */      \
		    0,          /*  posEncMechTheta       */      \
                                                          \
			0,0,0,      /*  currents A, B, C      */      \
                                                          \
			0,			/*  alignCntr			  */      \
            20000,		/*  alignCnt 			  */      \
			                                              \
		    0,          /*  lsw                   */      \
		    0,          /*  TripFlagDMC           */      \
			0,          /*	clearTripFlagDMC      */      \
			0,          /*	RunMotor              */      \
	        10,         /*  SpeedLoopPrescaler    */      \
	        1,          /*  SpeedLoopCount        */      \
		    0,          /*  PosSenseReverse   {0 ==> (A,B,C ==> Black, Red, White)}  */      \
		    0,          /*  newCmdDRV = 0         */      \
                                                          \
			0.001/ISR_FREQUENCY,          /*  T   */      \
                                                          \
			CLARKE_DEFAULTS,   /*  clarke  */             \
		    PARK_DEFAULTS,     /*  park    */             \
		    IPARK_DEFAULTS,    /*  ipark   */             \
                                                          \
		    /* PIDREG3_DEFAULTS,    pid_pos    */         \
		    PI_CONTROLLER_DEFAULTS,  /*   pi_pos   */     \
		    {PID_TERM_DEFAULTS, PID_PARAM_DEFAULTS, PID_DATA_DEFAULTS},  /*  pid_spd  */   \
		    PI_CONTROLLER_DEFAULTS,   /*  pi_id   */      \
		    PI_CONTROLLER_DEFAULTS,   /*  pi_iq   */      \
                                                          \
		    SVGEN_DEFAULTS,           /* svgen    */      \
		    RMPCNTL_DEFAULTS,         /* rc       */      \
		    RAMPGEN_DEFAULTS,         /* rg       */      \
		    PHASEVOLTAGE_DEFAULTS,    /* volt     */      \
		    SPEED_MEAS_QEP_DEFAULTS,  /* speed    */      \
		    QEP_DEFAULTS,             /* qep      */      \
		    DRV8301_DEFAULTS,         /* drv8301  */      \
			DRV8305_DEFAULTS          /* drv8305  */      \
}

#endif /* MOTORVARS_H_ */
