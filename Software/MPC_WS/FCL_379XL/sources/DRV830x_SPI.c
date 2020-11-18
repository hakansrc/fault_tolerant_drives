//#############################################################################
// FILE    : DRV830x_SPI.c
// TITLE   : DRV830x SPI comm functions
// Version : 1.0
//
//  Group           : C2000
//  Target Family   : F2837x
//  Created on      : Oct 2016
//  Author          : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2017 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#include "F28x_Project.h"     // Headerfile Include File
#include "DRV830x_SPI.h"
#include "motorVars.h"

/*****************************************************************************/
// SPI driver to interface with DRV830x
/*****************************************************************************/
Uint16 SPI_Driver(volatile struct SPI_REGS *s, Uint16 data)
{
	s->SPITXBUF = data;					    // send out the data
	while(s->SPISTS.bit.INT_FLAG == 0);		// wait for the packet to complete
	data = s->SPIRXBUF;					    // data read to clear the INT_FLAG bit

	return(data);
}

#if 0
/*****************************************************************************/
// Read from a DRV830x Register
/*****************************************************************************/
Uint16 DRV830x_SPI_Read(volatile struct SPI_REGS *s, Uint16 address)
{
	union DRV830x_SPI_WRITE_WORD_REG w;
	volatile Uint16 dummy;
	
	w.bit.R_W = 1;							// read - 1
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = 0;							// dummy data;
	
	dummy = SPI_Driver(s, w.all);   // dump the returned value
	DELAY_US(1);
	return(SPI_Driver(s, 0));       // return the returned value
}

/*****************************************************************************/
// Write to a DRV830x Register
/*****************************************************************************/
Uint16 DRV830x_SPI_Write(volatile struct SPI_REGS *s, Uint16 address, Uint16 data)
{
	union DRV830x_SPI_WRITE_WORD_REG w;

	w.bit.R_W = 0;							// write - 1
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = data;						// data to be written

	return(SPI_Driver(s, w.all));	// return the returned value
}

#else

/*****************************************************************************/
// Read from DRV8305 Register at a certain address
/*****************************************************************************/
Uint16 DRV8305_SPI_Read(MOTOR_VARS  * motor, Uint16 address)
{
	union DRV830x_SPI_WRITE_WORD_REG w;

	w.bit.R_W = 1;							// read - 1
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = 0;		                    // data to be written

	return(SPI_Driver(motor->SpiRegs, w.all));
}

/*****************************************************************************/
// Write to a DRV8305 Register at a certain address
/*****************************************************************************/
Uint16 DRV8305_SPI_Write(MOTOR_VARS  * motor, Uint16 address)
{
	union DRV830x_SPI_WRITE_WORD_REG w;
	Uint16 * cntrlReg;

    cntrlReg = &(motor->drv8305.Rsvd0);

	w.bit.R_W = 0;							// write - 0
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = cntrlReg[address];		    // data to be written

	return(SPI_Driver(motor->SpiRegs, w.all));
}

/*****************************************************************************/
// Read from DRV8301 Register at a certain address
/*****************************************************************************/
Uint16 DRV8301_SPI_Read(MOTOR_VARS  * motor, Uint16 address)
{
	union DRV830x_SPI_WRITE_WORD_REG w;
	volatile Uint16 dummy;

	w.bit.R_W = 1;							// read - 1
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = 0;		                    // data to be written

	dummy = SPI_Driver(motor->SpiRegs, w.all);
	DELAY_US(1);
	return(SPI_Driver(motor->SpiRegs, 0));
}

/*****************************************************************************/
// Write to a DRV8301 Register at a certain address
/*****************************************************************************/
Uint16 DRV8301_SPI_Write(MOTOR_VARS  * motor, Uint16 address)
{
	union DRV830x_SPI_WRITE_WORD_REG w;
	Uint16 * cntrlReg;
	
    cntrlReg = (Uint16 *) &(motor->drv8301.stat_reg1);

	w.bit.R_W = 0;							// write - 0
	w.bit.ADDRESS = address;				// load the address
	w.bit.DATA = cntrlReg[address];		    // data to be written
	
	return(SPI_Driver(motor->SpiRegs, w.all));
}

#endif
/*****************************************************************************/
// EOF
/*****************************************************************************/
