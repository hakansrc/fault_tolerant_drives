//#############################################################################
// FILE    : pwmdac.c
// TITLE   : PWM DAC functions
// Version : 1.0
//
//  Group           : C2000
//  Target Family   : F2837x
//  Created on      : Nov 9, 2017
//  Author          : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#include <FCL_SFRA_XL_DualServo-Settings.h>
#include "F28x_Project.h"
#include "F2837xD_IO_assignment.h"
#include "pwmdac.h"

// ****************************************************************************
#define  PWMDAC_FREQUENCY      100    // in KHz
#define  PWMDAC_TICKS       ((((long)SYSTEM_FREQUENCY*1000)/PWMDAC_FREQUENCY)/2)

volatile struct EPWM_REGS  * Pwmdac12_PwmRegs,
                           * Pwmdac34_PwmRegs;
//
//void PwmDac_Init(void);
//void PwmDac1(float32 A);
//void PwmDac2(float32 A);
//void PwmDac3(float32 A);
//void PwmDac4(float32 A);

// ****************************************************************************
// ****************************************************************************
void PwmDac_config_AB(volatile struct EPWM_REGS * ePWM, Uint16 period)
{
    EALLOW;
    // Time Base SubModule Registers
    ePWM->TBCTL.bit.PRDLD = TB_IMMEDIATE; // set Immediate load
    ePWM->TBPRD = period / 2; // PWM frequency = 1 / period
    ePWM->TBPHS.bit.TBPHS = 0;
    ePWM->TBCTR = 0;
    ePWM->TBCTL.bit.CTRMODE   = TB_COUNT_UPDOWN;
    ePWM->TBCTL.bit.HSPCLKDIV = TB_DIV1;
    ePWM->TBCTL.bit.CLKDIV    = TB_DIV1;

    ePWM->TBCTL.bit.PHSEN    = TB_DISABLE;
    ePWM->TBCTL.bit.SYNCOSEL = TB_CTR_ZERO; // sync "down-stream"

    // Counter Compare Submodule Registers
    ePWM->CMPA.bit.CMPA = 0; // set duty 0% initially
    ePWM->CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    ePWM->CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;

    // Action Qualifier SubModule Registers
    ePWM->AQCTLA.bit.CAU = AQ_CLEAR;
    ePWM->AQCTLA.bit.CAD = AQ_SET;

    // Counter Compare Submodule Registers
    ePWM->CMPB.bit.CMPB = 0; // set duty 0% initially
    ePWM->CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    ePWM->CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;

    // Action Qualifier SubModule Registers
    ePWM->AQCTLB.bit.CBU = AQ_CLEAR;
    ePWM->AQCTLB.bit.CBD = AQ_SET;

    // Send CMPA and CMPB EPWMs - Disable deadband
    ePWM->DBCTL.bit.OUT_MODE = DB_DISABLE;
    EDIS;
}

// ****************************************************************************
void InitPwmDacGpio(void)
{
    GPIO_SetupPinMux(PWMDAC1_GPIO, GPIO_MUX_CPU1, PWMDAC1_MUX);  // set up DAC1
    GPIO_SetupPinMux(PWMDAC2_GPIO, GPIO_MUX_CPU1, PWMDAC2_MUX);  // set up DAC2
    GPIO_SetupPinMux(PWMDAC3_GPIO, GPIO_MUX_CPU1, PWMDAC3_MUX);  // set up DAC3
    GPIO_SetupPinMux(PWMDAC4_GPIO, GPIO_MUX_CPU1, PWMDAC4_MUX);  // set up DAC4

    return;
}

// ****************************************************************************
void PwmDac_Init(void)
{
    PwmDac_config_AB(Pwmdac12_PwmRegs, PWMDAC_TICKS);
    PwmDac_config_AB(Pwmdac34_PwmRegs, PWMDAC_TICKS);
    InitPwmDacGpio();

    return;
}

// ****************************************************************************
void PwmDac1(float32 A)
{
    Pwmdac12_PwmRegs->CMPA.bit.CMPA = (1.0 + A)*PWMDAC_TICKS/4;
}

// ****************************************************************************
void PwmDac2(float32 A)
{
    Pwmdac12_PwmRegs->CMPB.bit.CMPB = (1.0 + A)*PWMDAC_TICKS/4;
}

// ****************************************************************************
void PwmDac3(float32 A)
{
    Pwmdac34_PwmRegs->CMPA.bit.CMPA = (1.0 + A)*PWMDAC_TICKS/4;
}

// ****************************************************************************
void PwmDac4(float32 A)
{
    Pwmdac34_PwmRegs->CMPB.bit.CMPB = (1.0 + A)*PWMDAC_TICKS/4;
}

// ****************************************************************************
// ****************************************************************************
// ****************************************************************************
