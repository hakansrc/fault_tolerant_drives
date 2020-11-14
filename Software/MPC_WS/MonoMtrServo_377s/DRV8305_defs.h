//----------------------------------------------------------------------------------
//	FILE:			drv8305_defs.c
//
//	Description:	Contains DRV8305 register definitions
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
// 4 Nov 2015 - DRV8305 register definitions
//----------------------------------------------------------------------------------

#ifndef _DRV8305_DEFS_H
#define _DRV8305_DEFS_H

/*****************************************************************************/
// Register Addresses
/*****************************************************************************/
//DRV8305 Register Addresses
#define DRV8305_S1_WWD_ADDR		               0x01
#define DRV8305_S2_OV_VDS_FAULTS_ADDR	       0x02
#define DRV8305_S3_IC_FAULTS_ADDR	           0x03
#define DRV8305_S4_GD_VGS_FAULTS_ADDR          0x04
#define DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR   0x05
#define DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR   0x06
#define DRV8305_C7_GD_CNTRL_ADDR               0x07
#define DRV8305_C9_IC_OPS_ADDR                 0x09
#define DRV8305_CA_SHUNT_AMP_CNTRL_ADDR        0x0a
#define DRV8305_CB_VREG_CNTRL_ADDR             0x0b
#define DRV8305_CC_VDS_SNS_CNTRL_ADDR          0x0c

//=============================================================================

// DRV8305 Warning and Watchdog Register bit definitions:
struct  DRV8305_WWD_REG_BITS
{                                   // bit    	description
	   Uint16 OTW:1;				// 0	Over temp warning
	   Uint16 TMP_FLG3:1;			// 1	temp > 135degC
	   Uint16 TMP_FLG2:1;			// 2	temp > 125degC
	   Uint16 TMP_FLG1:1;			// 3	temp > 105degC
	   Uint16 VCHP_UVFL:1;			// 4	Charge pump UV flag warning
	   Uint16 VDS_STATUS:1;			// 5	Real time status of VDS sensor
	   Uint16 PVDD_OVFL:1;			// 6	PVDD ov flag
	   Uint16 PVDD_UVFL:1;			// 7	PVDD uv flag
	   Uint16 TMP_FLG4:1;			// 8	temp > 175degC
	   Uint16 Reserve:1;			// 9
	   Uint16 FAULT:1;				// 10	Latched fault
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               		all;
   struct DRV8305_WWD_REG_BITS	bit;
} DRV8305_WWD_REG;
// =============================
struct DRV8305_OV_VDS_FAULTS_REG_BITS
{                                   // bit    	description
	   Uint16 SNS_A_OCP:1;			// 0	Sense A over current protection flag
	   Uint16 SNS_B_OCP:1;			// 1	Sense B over current protection flag
	   Uint16 SNS_C_OCP:1;			// 2	Sense C over current protection flag
	   Uint16 Rerserved:2;			// 4:3
	   Uint16 FETLC_VDS:1;			// 5	VDS monitor fault - low side FET C
	   Uint16 FETHC_VDS:1;			// 6	VDS monitor fault - high side FET C
	   Uint16 FETLB_VDS:1;			// 7	VDS monitor fault - low side FET B
	   Uint16 FETHB_VDS:1;			// 8	VDS monitor fault - high side FET B
	   Uint16 FETLA_VDS:1;			// 9	VDS monitor fault - low side FET A
	   Uint16 FETHA_VDS:1;			// 10	VDS monitor fault - high side FET A
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			        all;
   struct DRV8305_OV_VDS_FAULTS_REG_BITS	bit;
} DRV8305_OV_VDS_FAULTS_REG;
// =============================
struct DRV8305_IC_FAULTS_REG_BITS
{                                   // bit    	description
	   Uint16 VCPH_OVLO_ABS:1;		// 0	charge pump high side OV ABS fault
	   Uint16 VCPH_OVLO:1;		    // 1	charge pump high side OV fault
	   Uint16 VCPH_UVLO:1;		    // 2	charge pump high side UV fault
	   Uint16 Reserved:1;			// 3
	   Uint16 VCP_LSD_UVLO:1;		// 4    charge pump low side gate driver fault
	   Uint16 AVDD_UVLO:1;			// 5	AVDD uv fault
	   Uint16 VREG_UV:1;			// 6	VREG uv fault
	   Uint16 Reserved2:1;			// 7
	   Uint16 OTS:1;				// 8	Over temp fault
	   Uint16 WD_FAULT:1;			// 9	Watchdog fault
	   Uint16 PVDD_UVLO2:1;			// 10	PVDD uvder uv 2 fault
	   Uint16 Reserved3:5;			// 15-11
};

typedef union  {
   Uint16               			    all;
   struct DRV8305_IC_FAULTS_REG_BITS	bit;
} DRV8305_IC_FAULTS_REG;
// =============================

struct DRV8305_GD_VGS_FAULTS_REG_BITS
{                                   // bit    	description
	   Uint16 Reserved:5;			// 4:0
	   Uint16 FETLC_VGS:1;			// 5     VGS monitor fault low side FET C
	   Uint16 FETHC_VGS:1;			// 6     VGS monitor fault high side FET C
	   Uint16 FETLB_VGS:1;			// 7     VGS monitor fault low side FET B
	   Uint16 FETHB_VGS:1;			// 8     VGS monitor fault high side FET B
	   Uint16 FETLA_VGS:1;			// 9     VGS monitor fault low side FET A
	   Uint16 FETHA_VGS:1;			// 10    VGS monitor fault high side FET A
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			        all;
   struct DRV8305_GD_VGS_FAULTS_REG_BITS	bit;
} DRV8305_GD_VGS_FAULTS_REG;
// =============================

struct DRV8305_HS_GATE_DRIVER_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 IDRIVEP_HS:4;			// 3:0	 high side gate driver peak source current
	   Uint16 IDRIVEN_HS:4;			// 7:4	 high side gate driver peak sink current
	   Uint16 TDRIVEN:2;			// 9:8   high side gate driver peak source time
	   Uint16 Reserved:1;           //
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			             all;
   struct DRV8305_HS_GATE_DRIVER_CNTRL_REG_BITS	 bit;
} DRV8305_HS_GATE_DRIVER_CNTRL_REG;

enum {
	drv8305_idriveP_hs_10mA = 0,
	drv8305_idriveP_hs_20mA = 1,
	drv8305_idriveP_hs_30mA = 2,
	drv8305_idriveP_hs_40mA = 3,
	drv8305_idriveP_hs_50mA = 4,
	drv8305_idriveP_hs_60mA = 5,
	drv8305_idriveP_hs_70mA = 6,
	drv8305_idriveP_hs_125mA = 7,
	drv8305_idriveP_hs_250mA = 8,
	drv8305_idriveP_hs_500mA = 9,
	drv8305_idriveP_hs_750mA = 10,
	drv8305_idriveP_hs_1000mA = 11
};

enum {
	drv8305_idriveN_hs_20mA = 0,
	drv8305_idriveN_hs_30mA = 1,
	drv8305_idriveN_hs_40mA = 2,
	drv8305_idriveN_hs_50mA = 3,
	drv8305_idriveN_hs_60mA = 4,
	drv8305_idriveN_hs_70mA = 5,
	drv8305_idriveN_hs_80mA = 6,
	drv8305_idriveN_hs_250mA = 7,
	drv8305_idriveN_hs_500mA = 8,
	drv8305_idriveN_hs_750mA = 9,
	drv8305_idriveN_hs_1000mA = 10,
	drv8305_idriveN_hs_1250mA = 11
};

enum {
	drv8305_tdriveN_250nS = 0,
	drv8305_tdriveN_500nS = 1,
	drv8305_tdriveN_1000nS = 2,
	drv8305_tdriveN_2000nS = 3
};
// =============================

struct DRV8305_LS_GATE_DRIVER_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 IDRIVEP_LS:4;			// 3:0	 low side gate driver peak source current
	   Uint16 IDRIVEN_LS:4;			// 7:4	 low side gate driver peak sink current
	   Uint16 TDRIVEP:2;			// 9:8   low side gate driver peak source time
	   Uint16 Reserved:1;           //
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			              all;
   struct DRV8305_LS_GATE_DRIVER_CNTRL_REG_BITS	  bit;
} DRV8305_LS_GATE_DRIVER_CNTRL_REG;

enum {
	drv8305_idriveP_ls_10mA = 0,
	drv8305_idriveP_ls_20mA = 1,
	drv8305_idriveP_ls_30mA = 2,
	drv8305_idriveP_ls_40mA = 3,
	drv8305_idriveP_ls_50mA = 4,
	drv8305_idriveP_ls_60mA = 5,
	drv8305_idriveP_ls_70mA = 6,
	drv8305_idriveP_ls_125mA = 7,
	drv8305_idriveP_ls_250mA = 8,
	drv8305_idriveP_ls_500mA = 9,
	drv8305_idriveP_ls_750mA = 10,
	drv8305_idriveP_ls_1000mA = 11
};

enum {
	drv8305_idriveN_ls_20mA = 0,
	drv8305_idriveN_ls_30mA = 1,
	drv8305_idriveN_ls_40mA = 2,
	drv8305_idriveN_ls_50mA = 3,
	drv8305_idriveN_ls_60mA = 4,
	drv8305_idriveN_ls_70mA = 5,
	drv8305_idriveN_ls_80mA = 6,
	drv8305_idriveN_ls_250mA = 7,
	drv8305_idriveN_ls_500mA = 8,
	drv8305_idriveN_ls_750mA = 9,
	drv8305_idriveN_ls_1000mA = 10,
	drv8305_idriveN_ls_1250mA = 11
};

enum {
	drv8305_tdriveP_250nS = 0,
	drv8305_tdriveP_500nS = 1,
	drv8305_tdriveP_1000nS = 2,
	drv8305_tdriveP_2000nS = 3
};
// =============================

struct DRV8305_GD_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 TVDS:2;				// 1:0    VDS sense deglitch
	   Uint16 TBLANK:2;				// 3:2	  VDS sense blanking
	   Uint16 DEAD_TIME:3;			// 6:4	  Dead time
	   Uint16 PWM_MODE:2;			// 8:7	  PWM mode
	   Uint16 COMM_OPTION:1;		// 9	  Rectification control
	   Uint16 Reserved:1;			// 10
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			    all;
   struct DRV8305_GD_CNTRL_REG_BITS	    bit;
} DRV8305_GD_CNTRL_REG;

enum {
	drv8305_tvds_0uS = 0,
	drv8305_tvds_2uS = 1,
	drv8305_tvds_4uS = 2,
	drv8305_tvds_8uS = 3
};

enum {
	drv8305_tblank_0us = 0,
	drv8305_tblank_2us = 1,
	drv8305_tblank_4us = 2,
	drv8305_tblank_8us = 3
};

enum {
	drv8305_deadTime_40nS = 0,
	drv8305_deadTime_60nS = 1,
	drv8305_deadTime_100nS = 2,
	drv8305_deadTime_500nS = 3,
	drv8305_deadTime_1000nS = 4,
	drv8305_deadTime_2000nS = 5,
	drv8305_deadTime_4000nS = 6,
	drv8305_deadTime_6000nS = 7
};

enum {
	drv8305_PWM_mode_6 = 0,
	drv8305_PWM_mode_3 = 1,
	drv8305_PWM_mode_1 = 2
};

enum {
	drv8305_comm_diode_FW = 0,
	drv8305_comm_active_FW = 1
};
// =============================

struct DRV8305_IC_OPS_REG_BITS
{                                   // bit    	description
	   Uint16 SET_VCPH_UV:1;		// 0	  set charge pump uv threshold level
	   Uint16 CLR_FLTS:1;			// 1	  clear faults
	   Uint16 SLEEP:1;				// 2	  put device into sleep mode
	   Uint16 WD_EN:1;				// 3	  watchdog enable
	   Uint16 DIS_SNS_OCP:1;		// 4	  disable SNS oc fault and reporting
	   Uint16 WD_DLY:2;				// 6:5	  watchdog delay
	   Uint16 EN_SNS_CLAMP:1;		// 7	  enable sense amplifier clamp
	   Uint16 DIS_GDRV_FAULT:1;		// 8	  disable gate driver fault and reporting
	   Uint16 DIS_VPVDD_UVLO2:1;	// 9	  disable PVDD_UVLO2 fault and reporting
	   Uint16 Flip_OTS:1;			// 10	  enable OTS
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               		    all;
   struct DRV8305_IC_OPS_REG_BITS	bit;
} DRV8305_IC_OPS_REG;

enum {
	drv8305_set_Vcph_UV_4p9V = 0,
	drv8305_set_Vcph_UV_4p6V = 1
};

enum {
	drv8305_ClrFaults_No = 0,
	drv8305_ClrFaults_Yes = 1
};

enum {
	drv8305_sleep_No = 0,
	drv8305_sleep_Yes = 1
};

enum {
	drv8305_disable_WD = 0,
	drv8305_enable_WD = 1
};

enum {
	drv8305_enable_SnsOcp = 0,
	drv8305_disable_SnsOcp = 1
};

enum {
	drv8305_wd_dly_10mS = 0,
	drv8305_wd_dly_20mS = 1,
	drv8305_wd_dly_50mS = 2,
	drv8305_wd_dly_100mS = 3
};

enum {
	drv8305_disable_Sns_Clamp = 0,
	drv8305_enable_Sns_Clamp_Yes = 1
};

enum {
	drv8305_enable_gdrv_fault = 0,
	drv8305_disable_gdrv_fault = 1
};

enum {
	drv8305_enable_PVDD_UVLO2_fault = 0,
	drv8305_disable_PVDD_UVLO2_fault = 1
};

enum {
	drv8305_disable_OTS = 0,
	drv8305_enable_OTS = 1
};
// =============================

struct DRV8305_SHUNT_AMP_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 GAIN_CS1:2;			// 1:0    gain of CS amplifier 1
	   Uint16 GAIN_CS2:2;			// 3:2	  gain of CS amplifier 2
	   Uint16 GAIN_CS3:2;			// 5:4	  gain of CS amplifier 3
	   Uint16 CS_BLANK:2;			// 7:6	  current shunt amplifier blanking time
	   Uint16 DC_CAL_CH1:1;			// 8	  DC cal of CS amplifier 1
	   Uint16 DC_CAL_CH2:1;			// 9	  DC cal of CS amplifier 2
	   Uint16 DC_CAL_CH3:1;			// 10	  DC cal of CS amplifier 3
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			        all;
   struct DRV8305_SHUNT_AMP_CNTRL_REG_BITS	bit;
} DRV8305_SHUNT_AMP_CNTRL_REG;

enum {
	drv8305_gain_CS_10 = 0,
	drv8305_gain_CS_20 = 1,
	drv8305_gain_CS_40 = 2,
	drv8305_gain_CS_80 = 3
};

enum {
	drv8305_cs_blank_0ns = 0,
	drv8305_cs_blank_500ns = 1,
	drv8305_cs_blank_2500ns = 2,
	drv8305_cs_blank_10000ns = 3
};

enum {
	drv8305_dc_cal_off = 0,
	drv8305_dc_cal_calibration = 1
};
// =============================

struct DRV8305_VREG_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 VREG_UV_LEVEL:2;		// 1:0	  VREG uv set point
	   Uint16 DIS_VREG_PWRGD:1;		// 2
	   Uint16 SLEEP_DLY:2;			// 4:3	  Delay to power down VREG after SLEEP
	   Uint16 Reserved:3;			// 7:5
	   Uint16 VREF_SCALING:2;		// 9:8	  VREF scaling
	   Uint16 Reserved2:1;			// 10
	   Uint16 Reserved3:5;			// 15-11
};

typedef union  {
   Uint16               			    all;
   struct DRV8305_VREG_CNTRL_REG_BITS	bit;
} DRV8305_VREG_CNTRL_REG;

enum {
	drv8305_vreg_UV_level_10percent = 0,
	drv8305_vreg_UV_level_20percent = 1,
	drv8305_vreg_UV_level_30percent = 2
};

enum {
	drv8305_sleep_dly_0uS = 0,
	drv8305_sleep_dly_10uS = 1,
	drv8305_sleep_dly_50uS = 2,
	drv8305_sleep_dly_1000uS = 3
};

enum {
	drv8305_vref_scaling_2 = 1,
	drv8305_vref_scaling_4 = 2
};
// =============================

struct DRV8305_VDS_SNS_CNTRL_REG_BITS
{                                   // bit    	description
	   Uint16 VDS_MODE:3;			// 0	  VDS mode
	   Uint16 VDS_LEVEL:5;			// 0	  VDS comparator threshold
	   Uint16 Reserved:3;			// 0
	   Uint16 Reserved2:5;			// 15-11
};

typedef union  {
   Uint16               			        all;
   struct DRV8305_VDS_SNS_CNTRL_REG_BITS	bit;
} DRV8305_VDS_SNS_CNTRL_REG;

enum {
	drv8305_vds_mode_latchedShutDown = 0,
	drv8305_vds_mode_reportWhenOC    = 1,
	drv8305_vds_mode_noProtection    = 2
};

enum {
	drv8305_vds_level_60mV = 0,
	drv8305_vds_level_68mV = 1,
	drv8305_vds_level_76mV = 2,
	drv8305_vds_level_86mV = 3,
	drv8305_vds_level_97mV = 4,
	drv8305_vds_level_109mV = 5,
	drv8305_vds_level_123mV = 6,
	drv8305_vds_level_138mV = 7,
	drv8305_vds_level_155mV = 8,
	drv8305_vds_level_175mV = 9,
	drv8305_vds_level_197mV = 10,
	drv8305_vds_level_222mV = 11,
	drv8305_vds_level_250mV = 12,
	drv8305_vds_level_282mV = 13,
	drv8305_vds_level_317mV = 14,
	drv8305_vds_level_358mV = 15,
	drv8305_vds_level_403mV = 16,
	drv8305_vds_level_454mV = 17,
	drv8305_vds_level_511mV = 18,
	drv8305_vds_level_576mV = 19,
	drv8305_vds_level_648mV = 20,
	drv8305_vds_level_730mV = 21,
	drv8305_vds_level_822mV = 22,
	drv8305_vds_level_926mV = 23,
	drv8305_vds_level_1043mV = 24,
	drv8305_vds_level_1175mV = 25,
	drv8305_vds_level_1324mV = 26,
	drv8305_vds_level_1491mV = 27,
	drv8305_vds_level_1679mV = 28,
	drv8305_vds_level_1892mV = 29,
	drv8305_vds_level_2131mV = 30
};

//=============================================================================
typedef struct  {
	Uint16                              Rsvd0;
	DRV8305_WWD_REG                     status1_wwd;
	DRV8305_OV_VDS_FAULTS_REG           status2_ov_vds;
	DRV8305_IC_FAULTS_REG               status3_IC;
	DRV8305_GD_VGS_FAULTS_REG           status4_gd_Vgs;
	DRV8305_HS_GATE_DRIVER_CNTRL_REG    cntrl5_hs_gd;
	DRV8305_LS_GATE_DRIVER_CNTRL_REG    cntrl6_ls_gd;
	DRV8305_GD_CNTRL_REG                cntrl7_gd;
	Uint16                              Rsvd8;
	DRV8305_IC_OPS_REG                  cntrl9_IC_ops;
	DRV8305_SHUNT_AMP_CNTRL_REG         cntrlA_shunt_amp;
	DRV8305_VREG_CNTRL_REG              cntrlB_Vreg;
	DRV8305_VDS_SNS_CNTRL_REG           cntrlC_Vds_SNS;

	// DRV8305 variables
	Uint16 readCntrl5,
	       readCntrl6,
		   readCntrl7,
	       readCntrl9,
		   readCntrlA,
	       readCntrlB,
		   readCntrlC,

		   DRV_fault;

} DRV8305_Vars;

#define  DRV8305_DEFAULTS  {               \
		0,     /*  Rsvd0              */   \
		0,     /*  status1_wwd        */   \
		0,     /*  status2_ov_vds     */   \
		0,     /*  status3_IC         */   \
		0,     /*  status4_gd_Vgs     */   \
		0,     /*  cntr5_hs_gd        */   \
		0,     /*  cntr6_ls_gd        */   \
		0,     /*  cntr7_gd           */   \
		0,     /*  Rsvd8              */   \
		0,     /*  cntr9_IC_ops       */   \
		0,     /*  cntrA_shunt_amp    */   \
		0,     /*  cntrB_Vreg         */   \
		0,     /*  cntrC_Vds_SNS      */   \
                                           \
		0,     /*  readCntrl5         */   \
		0,     /*  readCntrl6         */   \
		0,     /*  readCntrl7         */   \
		0,     /*  readCntrl9         */   \
		0,     /*  readCntrlA         */   \
		0,     /*  readCntrlB         */   \
		0,     /*  readCntrlC         */   \
		0,     /*  DRV_fault          */   \
}

#endif
