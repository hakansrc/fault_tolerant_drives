//#############################################################################
// FILE    : DRV830x_SPI.h
// TITLE   : Header file for DRV830x SPI comm functions
// Version : 1.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : 03 Oct 2016
//  Author        : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 11/2017 $
// $Copyright: Copyright (C) 2013-2017 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#ifndef _DRV830x_SPI_H
#define _DRV830x_SPI_H

/*****************************************************************************/
//function prototypes
/*****************************************************************************/
#if 0
Uint16 DRV830x_SPI_Read(volatile struct SPI_REGS *s,
		                Uint16 address);
Uint16 DRV830x_SPI_Write(volatile struct SPI_REGS *s,
		                 Uint16 address,
						 Uint16 data);
#else
#include "motorVars.h"
Uint16 DRV8305_SPI_Read(MOTOR_VARS  * motor, Uint16 address);
Uint16 DRV8305_SPI_Write(MOTOR_VARS  * motor, Uint16 address);
Uint16 DRV8301_SPI_Read(MOTOR_VARS  * motor, Uint16 address);
Uint16 DRV8301_SPI_Write(MOTOR_VARS  * motor, Uint16 address);
#endif
//=============================================================================
// DRV830x SPI Input Data bit definitions:
struct  DRV830x_SPI_WRITE_WORD_BITS {       // bit    	description
   Uint16 DATA:11;          				// 10:0		FIFO reset
   Uint16 ADDRESS:4;        				// 14:11	Enhancement enable
   Uint16 R_W:1;          					// 15		R/W
};

union DRV830x_SPI_WRITE_WORD_REG {
   Uint16               				all;
   struct DRV830x_SPI_WRITE_WORD_BITS	bit;
};

//=============================================================================
#endif
