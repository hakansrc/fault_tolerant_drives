//#############################################################################
// FILE    : DMC_protections.h
// TITLE   : Header file for DMC protection modules
// Version : 1.0
//
//  Group         : C2000
//  Target Family : F2837x
//  Created on    : Nov 9, 2017
//  Author        : Ramesh Ramamoorthy
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 11/2017 $
// $Copyright: Copyright (C) 2013-2017 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


#ifndef APP_HEADERS_DMC_PROTECTIONS_H_
#define APP_HEADERS_DMC_PROTECTIONS_H_

//********************************************************************************
extern void PwmTripConfig(volatile struct EPWM_REGS * PwmRegs, Uint16 TripNum);
extern void DMC1_Protection_Config(void);
extern void DMC2_Protection_Config(void);

extern void DMC_Protection (MOTOR_VARS * motor);
extern void DISABLE_INVERTER(MOTOR_VARS * m);
extern void ENABLE_INVERTER(MOTOR_VARS * m);

//********************************************************************************

#endif /* APP_HEADERS_DMC_PROTECTIONS_H_ */
