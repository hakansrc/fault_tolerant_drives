//#############################################################################
// FILE    : DRV8301.h
// TITLE   : Header file for DRV8301 interface modules
// Version : 1.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : 22 Sept 2015
//  Author        : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 11/2017 $
// $Copyright: Copyright (C) 2013-2017 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################

#ifndef DUALMTRSERVO_379D_XL_DRV8301_H_
#define DUALMTRSERVO_379D_XL_DRV8301_H_

#include "motorVars.h"
#include "DRV830x_SPI.h"

/*****************************************************************************/
// function prototypes
/*****************************************************************************/
void InitDRV8301Regs (MOTOR_VARS * motor, uint16_t DRV_gain);
void InitDRV8301 (MOTOR_VARS * motor);
void DRV8301_diagnostics (MOTOR_VARS * motor);

//=============================================================================

#endif /* DUALMTRSERVO_379D_XL_DRV8301_H_ */
