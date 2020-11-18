//#############################################################################
// FILE    : sfra_gui.h
// TITLE   : Header file having SFRA GUI interface functions and data
// VERSION : 1.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : Nov 9, 2017
//  Author        : C2000 Systems Lab
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 11/2017 $
// $Copyright: Copyright (C) 2013-2017 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################

#ifndef APP_HEADERS_SFRA_GUI_H_
#define APP_HEADERS_SFRA_GUI_H_

//********************************************************************************

extern SFRA_F SFRA1;
extern int16 SFRA_InitFlag;
extern void SFRA_Init(float SFRA_ISR_FREQ);
extern void SCIA_Init(long SCI_VBUS_CLOCKRATE, long SCI_BAUDRATE);
extern void SerialHostComms(void);

// SFRA control data interface with GUI
typedef struct
{
    uint32_t driveSpeedSet;
    uint32_t loadCurrentSet;
    uint32_t driveSpeedFbk;
    uint32_t loadCurrentFbk;
    uint32_t driveLatency;
    uint32_t loadLatency;
    uint16_t loadMotor;
    uint16_t runDrive;
    uint16_t runLoad;
} SFRA_CONTROL;

extern SFRA_CONTROL sfraControl;

//********************************************************************************

#endif /* APP_HEADERS_SFRA_GUI_H_ */
