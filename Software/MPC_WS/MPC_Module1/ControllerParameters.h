/*
 * ControllerParameters.h
 *
 *  Created on: 4 Eki 2020
 *      Author: hakan
 */

#ifndef CONTROLLERPARAMETERS_H_
#define CONTROLLERPARAMETERS_H_

#define P_COEFFICIENT       0.35
#define I_COEFFICIENT       10.0
#define PI_TS_COEFFICIENT   (0.000025)


#define MODE_MPCCONTROLLER  1
#define MODE_ALIGNMENT      2
#define MODE_RLLOAD         3
#define MODE_NO_OPERATION   0

#define INITIALPWMFREQ 10000      /*Hz*/
#define INITIALPWMPRD  (1.0/((float)INITIALPWMFREQ))

#define ALIGNMENTCOUNTVALUE 50000


#define NUMBEROFMPCLOOPS 10
#define OPT_FSW_MAX 10000
#define OPT_FSW_MIN 1000
#define OPT_FSW_STEP 1000

#define IQRIPPLECOEFF 100000.0
#define IQREFCOEFF 10000.0
#define IDREFCOEFF 15.0
#define FSWCOEFF 1250.0









#endif /* CONTROLLERPARAMETERS_H_ */
