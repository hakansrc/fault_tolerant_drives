//#############################################################################
// FILE    : DRV8305.h
// TITLE   : Header file for DRV8305 interface modules
// Version : 2.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : Mar 9, 2018
//  Author        : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#ifndef DUALMTRSERVO_379D_XL_DRV8305_H_
#define DUALMTRSERVO_379D_XL_DRV8305_H_

#include "motorVars.h"
#include "DRV830x_SPI.h"

/*****************************************************************************/
// function prototypes
/*****************************************************************************/
void InitDRV8305Regs(MOTOR_VARS * motor, uint16_t DRV_gain);
void InitDRV8305(MOTOR_VARS * motor);
void DRV8305_diagnostics (MOTOR_VARS * motor);

//=============================================================================

#endif /* DUALMTRSERVO_379D_XL_DRV8305_H_ */
