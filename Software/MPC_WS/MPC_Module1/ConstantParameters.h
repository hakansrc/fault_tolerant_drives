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

#define ADCRESULT_VDC   AdcaResultRegs.ADCRESULT0
#define ADCRESULT_VA    AdccResultRegs.ADCRESULT0
#define ADCRESULT_VB    AdcbResultRegs.ADCRESULT0
#define ADCRESULT_VC    AdcaResultRegs.ADCRESULT1
#define ADCRESULT_IA    AdccResultRegs.ADCRESULT1
#define ADCRESULT_IB    AdcbResultRegs.ADCRESULT1
#define ADCRESULT_IC    AdcaResultRegs.ADCRESULT2
#define ADCRESULT_VREF  AdcaResultRegs.ADCRESULT3


#endif /* CONSTANTPARAMETERS_H_ */
