//#############################################################################
// FILE:    DRV8305.c
// TITLE:   DRV8305 interface modules
// Version: 1.0
//
//  Group           : C2000
//  Target Family   : F2837x
//  Created on      : Sep 2015
//  Author          : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#include <FCL_SFRA_XL_DualServo-Settings.h>
#include "drv8305.h"

void InitDRV8305Regs(MOTOR_VARS * motor, uint16_t DRV_gain)
{
	motor->drv8305.cntrl5_hs_gd.all = 0;
	motor->drv8305.cntrl6_ls_gd.all = 0;
	motor->drv8305.cntrl7_gd.all = 0;
	motor->drv8305.cntrl9_IC_ops.all = 0;
	motor->drv8305.cntrlA_shunt_amp.all = 0;
	motor->drv8305.cntrlB_Vreg.all = 0;
	motor->drv8305.cntrlC_Vds_SNS.all = 0;

	motor->drv8305.cntrl5_hs_gd.bit.IDRIVEN_HS = drv8305_idriveN_hs_60mA;
	motor->drv8305.cntrl5_hs_gd.bit.IDRIVEP_HS = drv8305_idriveP_hs_50mA;
	motor->drv8305.cntrl5_hs_gd.bit.TDRIVEN    = drv8305_tdriveN_250nS;

	motor->drv8305.cntrl6_ls_gd.bit.IDRIVEN_LS = drv8305_idriveN_ls_60mA;
	motor->drv8305.cntrl6_ls_gd.bit.IDRIVEP_LS = drv8305_idriveP_ls_50mA;
	motor->drv8305.cntrl6_ls_gd.bit.TDRIVEP    = drv8305_tdriveP_250nS;

	motor->drv8305.cntrl7_gd.bit.COMM_OPTION = drv8305_comm_diode_FW;
	motor->drv8305.cntrl7_gd.bit.PWM_MODE    = drv8305_PWM_mode_3;
	motor->drv8305.cntrl7_gd.bit.DEAD_TIME   = drv8305_deadTime_60nS;
	motor->drv8305.cntrl7_gd.bit.TBLANK      = drv8305_tblank_2us;
	motor->drv8305.cntrl7_gd.bit.TVDS        = drv8305_tblank_4us;

	motor->drv8305.cntrl9_IC_ops.bit.Flip_OTS        = drv8305_disable_OTS;
	motor->drv8305.cntrl9_IC_ops.bit.DIS_VPVDD_UVLO2 = drv8305_enable_PVDD_UVLO2_fault;
	motor->drv8305.cntrl9_IC_ops.bit.DIS_GDRV_FAULT  = drv8305_enable_gdrv_fault;
	motor->drv8305.cntrl9_IC_ops.bit.EN_SNS_CLAMP    = drv8305_disable_Sns_Clamp;
	motor->drv8305.cntrl9_IC_ops.bit.WD_DLY          = drv8305_wd_dly_20mS;
	motor->drv8305.cntrl9_IC_ops.bit.DIS_SNS_OCP     = drv8305_enable_SnsOcp;
	motor->drv8305.cntrl9_IC_ops.bit.WD_EN           = drv8305_disable_WD;
	motor->drv8305.cntrl9_IC_ops.bit.SLEEP           = drv8305_sleep_No;
	motor->drv8305.cntrl9_IC_ops.bit.CLR_FLTS        = drv8305_ClrFaults_No;      // fault clearing bit
	motor->drv8305.cntrl9_IC_ops.bit.SET_VCPH_UV     = drv8305_set_Vcph_UV_4p9V;

	motor->drv8305.cntrlA_shunt_amp.bit.GAIN_CS1   = (DRV_gain == 10) ? drv8305_gain_CS_10 :
                                                     (DRV_gain == 20) ? drv8305_gain_CS_20 :
                                                     (DRV_gain == 40) ? drv8305_gain_CS_40 : drv8305_gain_CS_80;
	motor->drv8305.cntrlA_shunt_amp.bit.GAIN_CS2   = (DRV_gain == 10) ? drv8305_gain_CS_10 :
                                                     (DRV_gain == 20) ? drv8305_gain_CS_20 :
                                                     (DRV_gain == 40) ? drv8305_gain_CS_40 : drv8305_gain_CS_80;
	motor->drv8305.cntrlA_shunt_amp.bit.GAIN_CS3   = (DRV_gain == 10) ? drv8305_gain_CS_10 :
                                                     (DRV_gain == 20) ? drv8305_gain_CS_20 :
                                                     (DRV_gain == 40) ? drv8305_gain_CS_40 : drv8305_gain_CS_80;
	motor->drv8305.cntrlA_shunt_amp.bit.CS_BLANK   = drv8305_cs_blank_0ns;
	motor->drv8305.cntrlA_shunt_amp.bit.DC_CAL_CH1 = drv8305_dc_cal_off;
	motor->drv8305.cntrlA_shunt_amp.bit.DC_CAL_CH2 = drv8305_dc_cal_off;
	motor->drv8305.cntrlA_shunt_amp.bit.DC_CAL_CH3 = drv8305_dc_cal_off;

	motor->drv8305.cntrlB_Vreg.bit.VREF_SCALING   = drv8305_vref_scaling_2;
	motor->drv8305.cntrlB_Vreg.bit.SLEEP_DLY      = drv8305_sleep_dly_10uS;
	motor->drv8305.cntrlB_Vreg.bit.DIS_VREG_PWRGD = 0;                               // temporary //
	motor->drv8305.cntrlB_Vreg.bit.VREG_UV_LEVEL  = drv8305_vreg_UV_level_30percent;

	motor->drv8305.cntrlC_Vds_SNS.bit.VDS_LEVEL   = drv8305_vds_level_1175mV;
	motor->drv8305.cntrlC_Vds_SNS.bit.VDS_MODE    = drv8305_vds_mode_latchedShutDown;

	return;
}

//*****************************************************************************
//*****************************************************************************
// Initialise DRV8301
//*****************************************************************************
//*****************************************************************************
void InitDRV8305(MOTOR_VARS * motor)
{
	Uint16 tmp1, *ptr1, *ptr2;

	// ===============================================================
	// write all control regs, ignore the return value of each write
	// ===============================================================
//	for (tmp1=5; tmp1<= 0xc; tmp1++)
//	{
//		if (tmp1 != 8)
//			tmp2 = DRV8305_SPI_Write(motor, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
//	}

	tmp1 = DRV8305_SPI_Write(motor, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR);         //write to DRV8305 control reg 5
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR);         //write to DRV8305 control reg 6
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_C7_GD_CNTRL_ADDR);                     //write to DRV8305 control reg 7
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_C9_IC_OPS_ADDR);                       //write to DRV8305 control reg 9
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR);              //write to DRV8305 control reg A
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_CB_VREG_CNTRL_ADDR);                   //write to DRV8305 control reg B
	tmp1 = DRV8305_SPI_Write(motor, DRV8305_CC_VDS_SNS_CNTRL_ADDR);                //write to DRV8305 control reg C

	// ===============================================
	// read all status and control registers
	// ===============================================
	motor->drv8305.status1_wwd.all    = DRV8305_SPI_Read(motor, DRV8305_S1_WWD_ADDR) & 0x05ff;            // read DRV8305 status reg 1
	motor->drv8305.status2_ov_vds.all = DRV8305_SPI_Read(motor, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7;  // read DRV8305 status reg 2
	motor->drv8305.status3_IC.all     = DRV8305_SPI_Read(motor, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;      // read DRV8305 status reg 3
	motor->drv8305.status4_gd_Vgs.all = DRV8305_SPI_Read(motor, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0;  // read DRV8305 status reg 4
	motor->drv8305.readCntrl5 = DRV8305_SPI_Write(motor, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff;  // read DRV8305 control reg 5
	motor->drv8305.readCntrl6 = DRV8305_SPI_Write(motor, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff;  // read DRV8305 control reg 6
	motor->drv8305.readCntrl7 = DRV8305_SPI_Write(motor, DRV8305_C7_GD_CNTRL_ADDR) & 0x03ff;              // read DRV8305 control reg 7
	motor->drv8305.readCntrl9 = DRV8305_SPI_Write(motor, DRV8305_C9_IC_OPS_ADDR) & 0x07ff;                // read DRV8305 control reg 9
	motor->drv8305.readCntrlA = DRV8305_SPI_Write(motor, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR) & 0x07ff;       // read DRV8305 control reg A
	motor->drv8305.readCntrlB = DRV8305_SPI_Write(motor, DRV8305_CB_VREG_CNTRL_ADDR) & 0x031f;            // read DRV8305 control reg B
	motor->drv8305.readCntrlC = DRV8305_SPI_Write(motor, DRV8305_CC_VDS_SNS_CNTRL_ADDR) & 0x00ff;         // read DRV8305 control reg C

	// ===============================================
	// DRV Fault diagnostics -  and Control regs
	// ===============================================
	ptr1 = (Uint16 *) &(motor->drv8305.Rsvd0);
	ptr2 = (Uint16 *) &(motor->drv8305.readCntrl5);
	motor->drv8305.DRV_fault = 0;

	// check all Status regs
	for (tmp1 = 1; tmp1<= 0x4; tmp1++)
	{
		if (ptr1[tmp1])
			motor->drv8305.DRV_fault |= 1 << tmp1;
	}

	// check all control regs
	for (; tmp1<= 0xc; tmp1++)
	{
		if (tmp1 != 8)
			if (ptr1[tmp1] != *ptr2++)
				motor->drv8305.DRV_fault |= 1 << tmp1;
	}

	return;
}

//*****************************************************************************
//*****************************************************************************
// DRV based fault diagnostics
//*****************************************************************************
//*****************************************************************************
void DRV8305_diagnostics (MOTOR_VARS * motor)
{
	motor->drv8305.status1_wwd.all = DRV8305_SPI_Read(motor, DRV8305_S1_WWD_ADDR) & 0x05ff;               // read DRV8305 status reg 1
	motor->drv8305.status2_ov_vds.all = DRV8305_SPI_Read(motor, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7;  // read DRV8305 status reg 2
	motor->drv8305.status3_IC.all = DRV8305_SPI_Read(motor, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;          // read DRV8305 status reg 3
	motor->drv8305.status4_gd_Vgs.all = DRV8305_SPI_Read(motor, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0;  // read DRV8305 status reg 4

	if (motor->drv8305.status1_wwd.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	if (motor->drv8305.status2_ov_vds.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	if (motor->drv8305.status3_IC.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	if (motor->drv8305.status4_gd_Vgs.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	return;
}

/****************************************************************************
 * End of Code *
 * ***************************************************************************
 */
