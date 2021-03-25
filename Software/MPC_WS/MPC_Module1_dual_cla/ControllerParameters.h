/*
 * ControllerParameters.h
 *
 *  Created on: 4 Eki 2020
 *      Author: hakan
 */

#ifndef CONTROLLERPARAMETERS_H_
#define CONTROLLERPARAMETERS_H_

#define P_COEFFICIENT       0.35f
#define I_COEFFICIENT       10.0f
#define PI_TS_COEFFICIENT   (0.000025f)

#define ENABLE_MPC  1


#define MODE_MPCCONTROLLER      1
#define MODE_CLA_MPCCONTROLLER  4
#define MODE_ALIGNMENT          2
#define MODE_RLLOAD             3
#define MODE_NO_OPERATION       0

#define INITIALPWMFREQ 10000      /*Hz*/
#define INITIALPWMPRD  (1.0/((float)INITIALPWMFREQ))

#define ALIGNMENTCOUNTVALUE ((uint32_t)20000)
#define MPC_STARTCOUNTVALUE (ALIGNMENTCOUNTVALUE+ (uint32_t)35000)


#define NUMBEROFMPCLOOPS 10
#define OPT_FSW_MAX 10000.0f
#define OPT_FSW_MIN 1000.0f
#define OPT_FSW_STEP 1000.0f

#define IQRIPPLECOEFF 100000.0f
#define IQREFCOEFF 10000.0f
#define IDREFCOEFF 15.0f
#define FSWCOEFF 1250.0f

#define M1_VD_VQ_KP M1_LS_VALUE/2.0f*moduleparams.OptimizationFsw[indexcount]
#define M1_VD_VQ_KI M1_RS_VALUE/M1_LS_VALUE

#define M2_VD_VQ_KP M2_LS_VALUE/2.0f*moduleparams.OptimizationFsw[indexcount]
#define M2_VD_VQ_KI M2_RS_VALUE/M2_LS_VALUE

#define M1_VD_VQ_KP_CLA M1_LS_VALUE/2.0f*moduleparams->OptimizationFsw[indexcount]
#define M1_VD_VQ_KI_CLA M1_RS_VALUE/M1_LS_VALUE
#define M2_VD_VQ_KP_CLA M2_LS_VALUE/2.0f*moduleparams->OptimizationFsw[indexcount]
#define M2_VD_VQ_KI_CLA M2_RS_VALUE/M2_LS_VALUE


#endif /* CONTROLLERPARAMETERS_H_ */
