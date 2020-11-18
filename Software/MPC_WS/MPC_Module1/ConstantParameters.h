/*
 * ValueDefinitions.h
 *
 *  Created on: 4 Eki 2020
 *      Author: hakan
 */

#ifndef CONSTANTPARAMETERS_H_
#define CONSTANTPARAMETERS_H_

#define MODE_RUN    1
#define MODE_ALIGN  2

#define PI                  3.1415926
#define TWO_PI_OVER_THREE   2.09439510


#define DEADBAND_FED        150 /*ns*/
#define DEADBAND_RED        150 /*ns*/
#define SYSCLKFREQUENCY     200000000   /*Hz*/
#define SYSCLKPERIOD        5           /*ns*/
#define INITIALPWMFREQ      10000       /*Hz*/


#define ACQPS_PERIOD        30          /*clock cycles. TODO test this*/
#define EPWM1_SOCA_TRG      5

#define M1_ADCRESULT_VA     AdcaResultRegs.ADCRESULT0
#define M1_ADCRESULT_VB     AdccResultRegs.ADCRESULT0
#define M1_ADCRESULT_VC     AdcbResultRegs.ADCRESULT0
#define M1_ADCRESULT_VDC    AdcaResultRegs.ADCRESULT1
#define M1_ADCRESULT_IA     AdccResultRegs.ADCRESULT1
#define M1_ADCRESULT_IB     AdcbResultRegs.ADCRESULT1
#define M1_ADCRESULT_IC     AdcaResultRegs.ADCRESULT2




#endif /* CONSTANTPARAMETERS_H_ */
