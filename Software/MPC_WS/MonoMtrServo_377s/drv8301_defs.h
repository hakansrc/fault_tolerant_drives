//----------------------------------------------------------------------------------
//	FILE:			drv8301_defs.c
//
//	Description:	Contains DRV8301 register definitions
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
// 4 Nov 2015 - DRV8301 register definitions
//----------------------------------------------------------------------------------

#ifndef DRV8301_DEFS_H_
#define DRV8301_DEFS_H_

#include "F2837xS_device.h"

/*****************************************************************************/
// Register Addresses
/*****************************************************************************/
//DRV8301 Register Addresses
#define STAT_REG_1_ADDR		0x00
#define STAT_REG_2_ADDR		0x01
#define CNTRL_REG_1_ADDR	0x02
#define CNTRL_REG_2_ADDR	0x03

//=============================================================================
// DRV8301 SPI Status Register 1 bit definitions:
struct  DRV8301_STATUS_REG_1_BITS {		// bit    	description
   Uint16 FETLC_OC:1;					// 0		Phase C, low-side FET OC
   Uint16 FETHC_OC:1;					// 1		Phase C, high-side FET OC
   Uint16 FETLB_OC:1;					// 2		Phase B, low-side FET OC
   Uint16 FETHB_OC:1;					// 3		Phase B, high-side FET OC
   Uint16 FETLA_OC:1;					// 4		Phase A, low-side FET OC
   Uint16 FETHA_OC:1;					// 5		Phase A, high-side FET OC
   Uint16 OTW:1;	        			// 6		Over-temperature warning
   Uint16 OTSD:1;	          			// 7		Over-temperature shut down
   Uint16 PVDD_UV:1;					// 8		PVDD < 6V
   Uint16 GVDD_UV:1;					// 9		GVDD < 8V
   Uint16 FAULT:1;						// 10		FAULTn pin is asserted
   Uint16 Reserved:5;					// 15:11
};

typedef union  {
   Uint16               			all;
   struct DRV8301_STATUS_REG_1_BITS	bit;
} DRV8301_STATUS_REG_1;
//==============================================
// DRV8301 SPI Status Register 2 bit definitions:
struct  DRV8301_STATUS_REG_2_BITS {		// bit    	description
   Uint16 DEVICE_ID:4;					// 3:0		Device ID
   Uint16 Reserved1:3;					// 6:4
   Uint16 GVDD_OV:1;					// 7		GVDD > 16V
   Uint16 Reserved2:8;					// 15:8
};

typedef union  {
   Uint16               			all;
   struct DRV8301_STATUS_REG_2_BITS	bit;
} DRV8301_STATUS_REG_2;
//==============================================
// DRV8301 SPI Control Register 1 bit definitions:
struct  DRV8301_CONTROL_REG_1_BITS {	// bit    	description
   Uint16 GATE_CURRENT:2;				// 1:0		Gate driver peak current
   Uint16 GATE_RESET:1;        			// 2		Reset all latched faults
   Uint16 PWM_MODE:1;          			// 3		Three or six pwm inputs
   Uint16 OC_MODE:2;					// 5:4		over-current mode,
   Uint16 OC_ADJ_SET:5;					// 10:6		Set Vds trip point for OC
   Uint16 Reserved:5;					// 15:11
};

typedef union  {
   Uint16               				all;
   struct DRV8301_CONTROL_REG_1_BITS	bit;
} DRV8301_CONTROL_REG_1;

enum {
	drv8301_gateCurrent_1700mA = 0,
	drv8301_gateCurrent_700mA = 1,
	drv8301_gateCurrent_250mA = 2
};

enum {
	drv8301_gate_reset = 1
};

enum {
	drv8301_pwmMode_6 = 0,
	drv8301_pwmMode_3 = 1
};

enum {
	drv8301_ocp_cbc = 0,
	drv8301_ocp_sd = 1,
	drv8301_ocp_rptonly = 2,
	drv8301_ocp_disable = 3
};

enum {
	drv8301_oc_60mV = 0,
	drv8301_oc_68mV = 1,
	drv8301_oc_76mV = 2,
	drv8301_oc_86mV = 3,
	drv8301_oc_97mV = 4,
	drv8301_oc_109mV = 5,
	drv8301_oc_123mV = 6,
	drv8301_oc_138mV = 7,
	drv8301_oc_155mV = 8,
	drv8301_oc_175mV = 9,
	drv8301_oc_197mV = 10,
	drv8301_oc_222mV = 11,
	drv8301_oc_250mV = 12,
	drv8301_oc_282mV = 13,
	drv8301_oc_317mV = 14,
	drv8301_oc_358mV = 15,
	drv8301_oc_403mV = 16,
	drv8301_oc_454mV = 17,
	drv8301_oc_511mV = 18,
	drv8301_oc_576mV = 19,
	drv8301_oc_648mV = 20,
	drv8301_oc_730mV = 21,
	drv8301_oc_822mV = 22,
	drv8301_oc_926mV = 23,
	drv8301_oc_1043mV = 24,
	drv8301_oc_1175mV = 25,
	drv8301_oc_1324mV = 26,
	drv8301_oc_1491mV = 27,
	drv8301_oc_1679mV = 28,
	drv8301_oc_1892mV = 29,
	drv8301_oc_2131mV = 30,
	drv8301_oc_2400mV = 31
};
//==============================================
// DRV8301 SPI Control Register 2 bit definitions:
struct  DRV8301_CONTROL_REG_2_BITS {	// bit    	description
   Uint16 OCTW_SET:2;					// 1:0		Report OT and / or OC
   Uint16 GAIN:2;        				// 3:2		Gain of shunt amplifier
   Uint16 DC_CAL_CH1:1;        			// 4		Shunt amp 1 connect/ disconnect
   Uint16 DC_CAL_CH2:1;        			// 5		Shunt amp 2 connect/ disconnect
   Uint16 OC_TOFF:1;					// 6		CBC / off time control @ OC
   Uint16 Reserved:9;					// 15:7
};

typedef union  {
   Uint16               				all;
   struct DRV8301_CONTROL_REG_2_BITS	bit;
} DRV8301_CONTROL_REG_2;

enum {
	drv8301_octw_ocot = 0,
	drv8301_octw_ot = 1,
	drv8301_octw_oc = 2
};

enum {
	drv8301_gain_10 = 0,
	drv8301_gain_20 = 1,
	drv8301_gain_40 = 2,
	drv8301_gain_80 = 3
};

enum {
	drv8301_dc_cal_noshort = 0,
	drv8301_dc_cal_short = 1
};

enum {
	drv8301_oc_toff_cbc = 0,
	drv8301_oc_toff_offtimecntl = 1
};

//=============================================================================
typedef struct  {
	// DRV8301 parameters
	DRV8301_STATUS_REG_1   stat_reg1;
	DRV8301_STATUS_REG_2   stat_reg2;
	DRV8301_CONTROL_REG_1  cntrl_reg1;
	DRV8301_CONTROL_REG_2  cntrl_reg2;

	// DRV8301 variables
	Uint16 readCntrl1,
	       readCntrl2,
		   DRV_fault;
} DRV8301_Vars;

#define  DRV8301_DEFAULTS {                        \
		0,    /* DRV8301_stat_reg1;    */          \
		0,    /* DRV8301_stat_reg2;    */          \
		0,    /* DRV8301_cntrl_reg1;   */          \
		0,    /* DRV8301_cntrl_reg2;   */          \
                                                   \
		0,    /* Uint16 readCntrl1,    */          \
		0,    /* readCntrl2,           */          \
		0,    /* DRV_fault = 0,        */          \
}

//=============================================================================

#endif /* DRV8301_DEFS_H_ */
