//#############################################################################
// FILE    : pwmdac.h
// TITLE   : Header file having PWM DAC interface functions
// VERSION : 1.0
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

#ifndef APP_HEADERS_PWMDAC_H_
#define APP_HEADERS_PWMDAC_H_

//********************************************************************************

extern volatile struct EPWM_REGS  * Pwmdac12_PwmRegs,
                                  * Pwmdac34_PwmRegs;

void PwmDac_Init(void);
void PwmDac1(float32 A);
void PwmDac2(float32 A);
void PwmDac3(float32 A);
void PwmDac4(float32 A);

//********************************************************************************


#endif /* APP_HEADERS_PWMDAC_H_ */
