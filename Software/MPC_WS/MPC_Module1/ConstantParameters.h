/*
 * ValueDefinitions.h
 *
 *  Created on: 4 Eki 2020
 *      Author: hakan
 */

#ifndef CONSTANTPARAMETERS_H_
#define CONSTANTPARAMETERS_H_

#define MODE_RUN 1
#define MODE_ALIGN 2
#define MODE_RL_LOAD 3

#define CS_DC_OFFSET 2.68 // this is the current measuring offset caused by the CS of the inverter

#define PI 3.1415926
#define TWO_PI_OVER_THREE 2.09439510

#define BUILDMODE MODE_RL_LOAD

#define BASE_CURRENT 20.625 // Base current (with DRV830x gain set to 40)


#define DEADBAND_FED 0          /*ns*/
#define DEADBAND_RED 0          /*ns*/
#define SYSCLKFREQUENCY 200000000 /*Hz*/
#define SYSCLKPERIOD 5            /*ns*/
#define INITIALPWMFREQ 10000      /*Hz*/

#define ACQPS_PERIOD 30 /*clock cycles. TODO test this*/
#define EPWM1_SOCA_TRG 5

#define M1_ADCRESULT_VA AdcaResultRegs.ADCRESULT0
#define M1_ADCRESULT_VB AdccResultRegs.ADCRESULT0
#define M1_ADCRESULT_VC AdcbResultRegs.ADCRESULT0
#define M1_ADCRESULT_VDC AdcaResultRegs.ADCRESULT1
#define M1_ADCRESULT_IA AdccResultRegs.ADCRESULT1
#define M1_ADCRESULT_IB AdcbResultRegs.ADCRESULT1
#define M1_ADCRESULT_IC AdcaResultRegs.ADCRESULT2


#define M1_IA_FAULTFLAG Cmpss6Regs.COMPSTS.bit.COMPHSTS
#define M1_IB_FAULTFLAG Cmpss3Regs.COMPSTS.bit.COMPHSTS
#define M1_IC_FAULTFLAG Cmpss1Regs.COMPSTS.bit.COMPHSTS

#define M1_IA_FAULTFLAG_LATCH Cmpss6Regs.COMPSTS.bit.COMPHLATCH
#define M1_IB_FAULTFLAG_LATCH Cmpss3Regs.COMPSTS.bit.COMPHLATCH
#define M1_IC_FAULTFLAG_LATCH Cmpss1Regs.COMPSTS.bit.COMPHLATCH


/*WARNING the -1 multipled values of the followings are the actual current values*/
#define M1_PPBADCRESULT_IA ((signed int)AdccResultRegs.ADCPPB1RESULT.all)
#define M1_PPBADCRESULT_IB ((signed int)AdcbResultRegs.ADCPPB1RESULT.all)
#define M1_PPBADCRESULT_IC ((signed int)AdcaResultRegs.ADCPPB2RESULT.all)
#define ADC_PU_SCALE_FACTOR 0.000244140625     //1/2^12
#define ADC_PU_PPB_SCALE_FACTOR 0.000488281250 //1/2^11

#define VREF 3.3
#define VREF_SCALE 2.0 //k value for drv8305
#define ADC_MAX_12BIT 4095
#define CURRENT_SENSE_RESISTOR 0.007 //ohm

#define VA_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_VA) / ((float)ADC_MAX_12BIT))
#define VB_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_VB) / ((float)ADC_MAX_12BIT))
#define VC_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_VC) / ((float)ADC_MAX_12BIT))
#define VDC_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_VDC) / ((float)ADC_MAX_12BIT))
#define IA_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_IA) / ((float)ADC_MAX_12BIT))
#define IB_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_IB) / ((float)ADC_MAX_12BIT))
#define IC_PIN_VOLTAGE_FLOAT (VREF * ((float)M1_ADCRESULT_IC) / ((float)ADC_MAX_12BIT))

#define VA_VOLTAGE_FLOAT VA_PIN_VOLTAGE_FLOAT * 66.99 / 4.99
#define VB_VOLTAGE_FLOAT VB_PIN_VOLTAGE_FLOAT * 66.99 / 4.99
#define VC_VOLTAGE_FLOAT VC_PIN_VOLTAGE_FLOAT * 66.99 / 4.99
#define VDC_VOLTAGE_FLOAT VDC_PIN_VOLTAGE_FLOAT * 66.99 / 4.99
#define IA_CURRENT_FLOAT (IA_PIN_VOLTAGE_FLOAT - VREF / VREF_SCALE) / ((float)DRV_GAIN) / CURRENT_SENSE_RESISTOR - CS_DC_OFFSET
#define IB_CURRENT_FLOAT (IB_PIN_VOLTAGE_FLOAT - VREF / VREF_SCALE) / ((float)DRV_GAIN) / CURRENT_SENSE_RESISTOR - CS_DC_OFFSET
#define IC_CURRENT_FLOAT (IC_PIN_VOLTAGE_FLOAT - VREF / VREF_SCALE) / ((float)DRV_GAIN) / CURRENT_SENSE_RESISTOR - CS_DC_OFFSET

#endif /* CONSTANTPARAMETERS_H_ */
