//#############################################################################
// FILE    : F2837xD_IO_assignment.h
// TITLE   : Header file for GPIO assignments for target functions
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


#ifndef F2837xD_IO_ASSIGNMENT_H_
#define F2837xD_IO_ASSIGNMENT_H_


/******************************************************************************
Peripheral Assignments:

   MOTOR 1: (DRV8305 and GaN BP)
         - EPWMs ==>> EPWM1, EPWM2,  EPWM3  ---> A, B, C
         - QEP   ==>> EQep1
         - SPI   ==>> Spia

         Analog signals - Motor 1
         Vdc  ADC 14  (DRV8305 --> Va)
         Va   ADC C3  (DRV8305 --> Vb)
         Vb   ADC B3  (DRV8305 --> Vc)
         Vc   ADC A3  (DRV8305 --> Vdc)
         Ia   ADC C2
         Ib   ADC B2
         Ic   ADC A2

   MOTOR 2: (DRV8305 and GaN BP)
         - EPWMs ==>> EPWM4, EPWM5,  EPWM6  ---> A, B, C
         - QEP   ==>> EQep2
         - SPI   ==>> Spib

         Analog Signals - Motor 2
         Vdc  ADC 15  (DRV8305 --> Va)
         Va   ADC C5  (DRV8305 --> Vb)
         Vb   ADC B5  (DRV8305 --> Vc)
         Vc   ADC A5  (DRV8305 --> Vdc)
         Ia   ADC C4
         Ib   ADC B4
         Ic   ADC A4
******************************************************************************/

// *************************************************
// ************ GPIO pin assignments ***************
// *************************************************

// General purpose usage
//=======================
#define  BLUE_LED_GPIO    31
#define  BLUE_LED_MUX      0

#define  RED_LED_GPIO     34
#define  RED_LED_MUX       0

#define  TEMP_GPIO        104
#define  TEMP_MUX          0

// PWMDACs
//=========
#define  PWMDAC1_GPIO     159
#define  PWMDAC1_MUX       1

#define  PWMDAC2_GPIO     160
#define  PWMDAC2_MUX       1

#define  PWMDAC3_GPIO     157
#define  PWMDAC3_MUX       1

#define  PWMDAC4_GPIO     158
#define  PWMDAC4_MUX       1

// ***************************************************************
// SCI comm
// ==========
#define  SCI_TX_GPIO        42
#define  SCI_TX_MUX         15

#define  SCI_RX_GPIO        43
#define  SCI_RX_MUX         15

// ***************************************************************
// MOTOR 1 EPWM selections
// ========================
#define  MOTOR1_EPWM_AH_GPIO     0
#define  MOTOR1_EPWM_AH_MUX      1

#define  MOTOR1_EPWM_AL_GPIO     1
#define  MOTOR1_EPWM_AL_MUX      1

#define  MOTOR1_EPWM_BH_GPIO     2
#define  MOTOR1_EPWM_BH_MUX      1

#define  MOTOR1_EPWM_BL_GPIO     3
#define  MOTOR1_EPWM_BL_MUX      1

#define  MOTOR1_EPWM_CH_GPIO     4
#define  MOTOR1_EPWM_CH_MUX      1

#define  MOTOR1_EPWM_CL_GPIO     5
#define  MOTOR1_EPWM_CL_MUX      1


// MOTOR 2 EPWM selections
// ========================
#define  MOTOR2_EPWM_AH_GPIO     6
#define  MOTOR2_EPWM_AH_MUX      1

#define  MOTOR2_EPWM_AL_GPIO     7
#define  MOTOR2_EPWM_AL_MUX      1

#define  MOTOR2_EPWM_BH_GPIO     8
#define  MOTOR2_EPWM_BH_MUX      1

#define  MOTOR2_EPWM_BL_GPIO     9
#define  MOTOR2_EPWM_BL_MUX      1

#define  MOTOR2_EPWM_CH_GPIO    10
#define  MOTOR2_EPWM_CH_MUX      1

#define  MOTOR2_EPWM_CL_GPIO    11
#define  MOTOR2_EPWM_CL_MUX      1

// ***************************************************************
// MOTOR 1 EQEP selections
// ========================
#define  MOTOR1_QEPA_GPIO       20
#define  MOTOR1_QEPA_MUX         1

#define  MOTOR1_QEPB_GPIO       21
#define  MOTOR1_QEPB_MUX         1

#define  MOTOR1_QEPI_GPIO       99
#define  MOTOR1_QEPI_MUX         5

// MOTOR 2 EQEP selections
// ========================
#define  MOTOR2_QEPA_GPIO       54
#define  MOTOR2_QEPA_MUX         5

#define  MOTOR2_QEPB_GPIO       55
#define  MOTOR2_QEPB_MUX         5

#define  MOTOR2_QEPI_GPIO       57
#define  MOTOR2_QEPI_MUX         5

// ***************************************************************
// MOTOR 1 - SPI selections
// =========================
#define  MOTOR1_SDI_GPIO       58
#define  MOTOR1_SDI_MUX        15

#define  MOTOR1_SDO_GPIO       59
#define  MOTOR1_SDO_MUX        15

#define  MOTOR1_CLK_GPIO       60
#define  MOTOR1_CLK_MUX        15

#define  MOTOR1_SCS_GPIO       61
#define  MOTOR1_SCS_MUX        15

// MOTOR 2 - SPI selections
// =========================
#define  MOTOR2_SDI_GPIO       63
#define  MOTOR2_SDI_MUX        15

#define  MOTOR2_SDO_GPIO       64
#define  MOTOR2_SDO_MUX        15

#define  MOTOR2_CLK_GPIO       65
#define  MOTOR2_CLK_MUX        15

#define  MOTOR2_SCS_GPIO       66
#define  MOTOR2_SCS_MUX        15

// ***************************************************************
// MOTOR 1 DRVxx selections
// ========================
#define  MOTOR1_EN_GATE_GPIO   124
#define  MOTOR1_EN_GATE_MUX     0

#define  MOTOR1_FAULT_GPIO     19
#define  MOTOR1_FAULT_MUX       0

#if (MOTOR1_DRV == DRV8301)
  #define  MOTOR1_DC_CAL_GPIO    125
  #define  MOTOR1_DC_CAL_MUX      0

  #define  MOTOR1_OCTW_GPIO      18
  #define  MOTOR1_OCTW_MUX        0
#else
  #define  MOTOR1_WAKE_GPIO      125
  #define  MOTOR1_WAKE_MUX        0

  #define  MOTOR1_PWRGD_GPIO     // tied to RESET# input of MCU - no use in code
#endif

// MOTOR 2 DRVxx selections
// ========================
#define  MOTOR2_EN_GATE_GPIO   26
#define  MOTOR2_EN_GATE_MUX     0

#define  MOTOR2_FAULT_GPIO     139
#define  MOTOR2_FAULT_MUX       0

#if (MOTOR2_DRV == DRV8301)
  #define  MOTOR2_DC_CAL_GPIO    27
  #define  MOTOR2_DC_CAL_MUX      0

  #define  MOTOR2_OCTW_GPIO      56
  #define  MOTOR2_OCTW_MUX        0
#else
  #define  MOTOR2_WAKE_GPIO      27
  #define  MOTOR2_WAKE_MUX        0

  #define  MOTOR2_PWRGD_GPIO     // tied to RESET# input of MCU - no use in code
#endif

// *************************************************
// ************ ADC pin assignments ***************
// *************************************************

// MOTOR 1 Analog definitions
// ============================
#define IFB_A1       AdccResultRegs.ADCRESULT0
#define IFB_B1       AdcbResultRegs.ADCRESULT0
#define IFB_C1       AdcaResultRegs.ADCRESULT0
#define IFB_A1_PPB   ((signed int)AdccResultRegs.ADCPPB1RESULT.all)
#define IFB_B1_PPB   ((signed int)AdcbResultRegs.ADCPPB1RESULT.all)
#define IFB_C1_PPB   ((signed int)AdcaResultRegs.ADCPPB1RESULT.all)

#if (MOTOR1_DRV == DRV8301)
  #define VFB_A1       AdccResultRegs.ADCRESULT2
  #define VFB_B1       AdcbResultRegs.ADCRESULT2
  #define VFB_C1       AdcaResultRegs.ADCRESULT2
  #define VFB_DC1      AdcaResultRegs.ADCRESULT4
#else
  #define VFB_A1       AdcaResultRegs.ADCRESULT2
  #define VFB_B1       AdccResultRegs.ADCRESULT2
  #define VFB_C1       AdcbResultRegs.ADCRESULT2
  #define VFB_DC1      AdcaResultRegs.ADCRESULT4
#endif

// MOTOR 2 Analog definitions
// ============================
#define IFB_A2       AdccResultRegs.ADCRESULT1
#define IFB_B2       AdcbResultRegs.ADCRESULT1
#define IFB_C2       AdcaResultRegs.ADCRESULT1
#define IFB_A2_PPB   ((signed int)AdccResultRegs.ADCPPB2RESULT.all)
#define IFB_B2_PPB   ((signed int)AdcbResultRegs.ADCPPB2RESULT.all)
#define IFB_C2_PPB   ((signed int)AdcaResultRegs.ADCPPB2RESULT.all)

#if (MOTOR2_DRV == DRV8301)
  #define VFB_A2       AdccResultRegs.ADCRESULT3
  #define VFB_B2       AdcbResultRegs.ADCRESULT3
  #define VFB_C2       AdcaResultRegs.ADCRESULT3
  #define VFB_DC2      AdcaResultRegs.ADCRESULT5
#else
  #define VFB_A2       AdcaResultRegs.ADCRESULT3
  #define VFB_B2       AdccResultRegs.ADCRESULT3
  #define VFB_C2       AdcbResultRegs.ADCRESULT3
  #define VFB_DC2      AdcaResultRegs.ADCRESULT5
#endif

#define ADC_PU_SCALE_FACTOR        0.000244140625     //1/2^12
#define ADC_PU_PPB_SCALE_FACTOR    0.000488281250     //1/2^11
/*****************************************************************************
 * ***************************************************************************
 */

#endif /* F2837xS_IO_ASSIGNMENT_H_ */
