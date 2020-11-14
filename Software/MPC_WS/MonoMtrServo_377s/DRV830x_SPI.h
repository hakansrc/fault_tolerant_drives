//----------------------------------------------------------------------------------
//	FILE:			drv830x_SPI.h
//
//	Description:	Contains DRV830x SPI driver declaration
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
// 4 Nov 2015 - DRV830x SPI driver declaration
//----------------------------------------------------------------------------------

//============================================================================
//============================================================================
#ifndef _DRV830x_SPI_H
#define _DRV830x_SPI_H

/*****************************************************************************/
//function prototypes
/*****************************************************************************/
#if 0
Uint16 DRV830x_SPI_Read(volatile struct SPI_REGS *s,
		                Uint16 address,
						Uint16 scsPin);
Uint16 DRV830x_SPI_Write(volatile struct SPI_REGS *s,
		                 Uint16 address,
						 Uint16 data,
						 Uint16 scsPin);
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
