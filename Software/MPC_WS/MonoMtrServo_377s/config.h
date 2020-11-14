//----------------------------------------------------------------------------------
//	FILE:			config.h
//
//	Description:	Contains peripheral definitions not included in
//                   lib or device support
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
// 4 Nov 2015 - Peripheral config definitions
//----------------------------------------------------------------------------------

#ifndef CONFIG_H_
#define CONFIG_H_

void InitMotor1EPwmGpio(void);

void InitMotor1EQepGpio(void);

void InitMotor1SpiGpio(void);

void InitMotor1_DRV_Gpio(void);

void InitSysCtrl1(void);
void ConfigureADC(void);
void PWM_1ch_UpDwnCnt_CNF(volatile struct EPWM_REGS * ePWM, Uint16 period, int16 db);
void PWM_1ch_UpDwnCnt_CNF_noDB(volatile struct EPWM_REGS * ePWM, Uint16 period);
void InitSpiRegs_DRV830x(volatile struct SPI_REGS *s);

//==============================
// ADC trigger selection table
//==============================
#define  ADCTRIG0_SW_ONLY        0
#define  ADCTRIG1_CPU1_T0        1
#define  ADCTRIG2_CPU1_T1        2
#define  ADCTRIG3_CPU1_T2        3
#define  ADCTRIG4_GPIOEXTSOC     4

#define  ADCTRIG5_EPWM1SOCA      5
#define  ADCTRIG6_EPWM1SOCB      6

#define  ADCTRIG7_EPWM2SOCA      7
#define  ADCTRIG8_EPWM2SOCB      8

#define  ADCTRIG9_EPWM3SOCA      9
#define  ADCTRIG10_EPWM3SOCB    10

#define  ADCTRIG11_EPWM4SOCA    11
#define  ADCTRIG12_EPWM4SOCB    12

#define  ADCTRIG13_EPWM5SOCA    13
#define  ADCTRIG14_EPWM5SOCB    14

#define  ADCTRIG15_EPWM6SOCA    15
#define  ADCTRIG16_EPWM6SOCB    16

#define  ADCTRIG17_EPWM7SOCA    17
#define  ADCTRIG18_EPWM7SOCB    18

#define  ADCTRIG19_EPWM8SOCA    19
#define  ADCTRIG20_EPWM8SOCB    20

#define  ADCTRIG21_EPWM9SOCA    21
#define  ADCTRIG22_EPWM9SOCB    22

#define  ADCTRIG23_EPWM10SOCA   23
#define  ADCTRIG24_EPWM10SOCB   24

#define  ADCTRIG25_EPWM11SOCA   25
#define  ADCTRIG26_EPWM11SOCB   26

#define  ADCTRIG27_EPWM12SOCA   27
#define  ADCTRIG28_EPWM12SOCB   28

#define  M1_ADCTRIG   ADCTRIG7_EPWM2SOCA
#define  M2_ADCTRIG   ADCTRIG7_EPWM2SOCA

#endif /* CONFIG_H_ */
