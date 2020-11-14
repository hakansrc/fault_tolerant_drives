//----------------------------------------------------------------------------------
//	FILE:			drv8301.c
//
//	Description:	Contains DRV8301 interface functions
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
// 4 Nov 2015 - DRV8301 interface functions
//----------------------------------------------------------------------------------

#include "drv8301.h"

#include "MonoMtrServo-Settings.h"

void InitDRV8301Regs(MOTOR_VARS * motor)
{
	motor->drv8301.cntrl_reg1.all = 0;
	motor->drv8301.cntrl_reg1.bit.GATE_CURRENT = drv8301_gateCurrent_700mA;
	motor->drv8301.cntrl_reg1.bit.PWM_MODE     = drv8301_pwmMode_3;
	motor->drv8301.cntrl_reg1.bit.OC_MODE      = drv8301_ocp_sd;
	motor->drv8301.cntrl_reg1.bit.OC_ADJ_SET   = drv8301_oc_60mV;

	motor->drv8301.cntrl_reg2.all = 0;
	motor->drv8301.cntrl_reg2.bit.OCTW_SET   = drv8301_octw_ot;
	motor->drv8301.cntrl_reg2.bit.OC_TOFF    = drv8301_oc_toff_cbc;
	motor->drv8301.cntrl_reg2.bit.GAIN       = (DRV_GAIN == 10) ? drv8301_gain_10 :
			                                   (DRV_GAIN == 20) ? drv8301_gain_20 :
					                           (DRV_GAIN == 40) ? drv8301_gain_40 : drv8301_gain_80;
	motor->drv8301.cntrl_reg2.bit.DC_CAL_CH1 = drv8301_dc_cal_noshort;
	motor->drv8301.cntrl_reg2.bit.DC_CAL_CH2 = drv8301_dc_cal_noshort;

	return;
}

//*****************************************************************************
//*****************************************************************************
// Initialise DRV8301
//*****************************************************************************
//*****************************************************************************
#if 0
void InitDRV8301(MOTOR_VARS * motor, Uint16 scsPin)
{
	//write to DRV8301 control register 1, returns status register 1
	motor->drv8301.stat_reg1.all = DRV8301_SPI_Write(motor, CNTRL_REG_1_ADDR);

	//write to DRV8301 control register 2, returns status register 1
	motor->drv8301.stat_reg1.all = DRV8301_SPI_Write(motor, CNTRL_REG_2_ADDR);

	// read back DRV status reg 2 and control regs 1 and 2 for verification
	motor->drv8301.stat_reg2.all = DRV8301_SPI_Read(motor, STAT_REG_2_ADDR) & 0x80;

	motor->drv8301.readCntrl1 = DRV8301_SPI_Read(motor, CNTRL_REG_1_ADDR) & 0x7ff;

	motor->drv8301.readCntrl2 = DRV8301_SPI_Read(motor, CNTRL_REG_2_ADDR) & 0x7ff;

	// DRV Fault diagnostics - check Status reg 1
	motor->drv8301.DRV_fault = 0;
	if (motor->drv8301.stat_reg1.all)
		motor->drv8301.DRV_fault = 1;

	// DRV Fault diagnostics - check Status reg 2
	if (motor->drv8301.stat_reg2.all)
		motor->drv8301.DRV_fault += 2;

	// SPI error diagnostics - check control reg 1
	if (motor->drv8301.readCntrl1 != motor->drv8301.cntrl_reg1.all)
		motor->drv8301.DRV_fault += 4;

	// SPI error diagnostics - check control reg 2
	if (motor->drv8301.readCntrl2 != motor->drv8301.cntrl_reg2.all)
		motor->drv8301.DRV_fault += 8;

	while (motor->drv8301.DRV_fault)
		;

	return;
}
#else
void InitDRV8301(MOTOR_VARS * motor)
{
	Uint16 temp, *ptr1, *ptr2;

	//================================================================================
	// write all DRV8301 control registers, and read all control and status registers
	//================================================================================
	motor->drv8301.stat_reg1.all = DRV8301_SPI_Write(motor, CNTRL_REG_1_ADDR);       // write conrol reg 1, read status reg 1
	motor->drv8301.stat_reg1.all = DRV8301_SPI_Write(motor, CNTRL_REG_2_ADDR);       // write conrol reg 2, read status reg 1

	motor->drv8301.stat_reg2.all = DRV8301_SPI_Read(motor, STAT_REG_2_ADDR) & 0x80;  // read status reg 2
	motor->drv8301.readCntrl1 = DRV8301_SPI_Read(motor, CNTRL_REG_1_ADDR) & 0x7ff;   // read control reg 1
	motor->drv8301.readCntrl2 = DRV8301_SPI_Read(motor, CNTRL_REG_2_ADDR) & 0x7ff;   // read control reg 2

	//===============================================
	// DRV Fault diagnostics - check Status reg 1
	//===============================================
	ptr1 = (Uint16 *) &(motor->drv8301.stat_reg1.all);
	ptr2 = (Uint16 *) &(motor->drv8301.readCntrl1);
	motor->drv8301.DRV_fault = 0;

	// verify status registers
	for (temp = 0; temp<= 1; temp++)
	{
		if (*ptr1++)
			motor->drv8301.DRV_fault |= 1 << temp;
	}

	// verify control registers
	for (; temp<= 3; temp++)
	{
		if (*ptr1++ != *ptr2++)
			motor->drv8301.DRV_fault |= 1 << temp;
	}

	return;
}
#endif
//*****************************************************************************
//*****************************************************************************
// DRV based fault diagnostics
//*****************************************************************************
//*****************************************************************************
void DRV8301_diagnostics (MOTOR_VARS * motor)
{
	//read back DRV8301 status register 1
	motor->drv8301.stat_reg1.all = DRV8301_SPI_Read(motor, STAT_REG_1_ADDR);

	// read back DRV status reg 2
	motor->drv8301.stat_reg2.all = DRV8301_SPI_Read(motor, STAT_REG_2_ADDR) & 0x80;

	if (motor->drv8301.stat_reg1.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	if (motor->drv8301.stat_reg2.all)
	{
		// conditional code to identify source of problem and follow up actions
	}

	return;
}

/****************************************************************************
 * End of Code *
 * ***************************************************************************
 */
