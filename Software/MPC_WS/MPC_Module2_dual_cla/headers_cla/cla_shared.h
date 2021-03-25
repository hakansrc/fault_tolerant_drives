#ifndef _CLA_SHARED_H_
#define _CLA_SHARED_H_

#ifdef __cplusplus
extern "C" {
#endif



#include <stdint.h>
#include "CLAmath.h"
#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"
#include "CustomTypeDefs.h"
#include "hw_types.h"
#include "hw_memmap.h"
#include "hw_epwm.h"
#include "hw_eqep.h"
#include "hw_adc.h"

//
// Globals
//

extern uint32_t             Cla1Task1_counter;
extern float                M2_FswDecided_cla;
extern unsigned int         M2_OperationMode;
extern ModuleParameters     Module2_Parameters_cla;
extern PID_Parameters       PI_iq_cla;
extern float                M2_minimumloss_iqref_cla;


float CLA_Power(float base, uint16_t power);
float CLA_floating_modulus(float a,float b);
void GetSvpwmDutyCycles_cla(float T1, float T2, float T0,float Ts,float VectorAngleRad, float *DutyA, float *DutyB, float *DutyC);
void ExecuteFirstPrediction_cla(ModuleParameters *moduleparams, unsigned int indexcount);
void ExecuteSecondPrediction_cla(ModuleParameters *moduleparams, unsigned int indexcount);
void Run_PI_Controller_cla(PID_Parameters *pidparams);
void GetEncoderReadings_cla(ModuleParameters *moduleparams);
void GetAdcReadings_cla(ModuleParameters *moduleparams);
void CalculateParkTransform_cla(ModuleParameters *moduleparams);
float CLA_fabsf(float value);


__interrupt void Cla1Task1 ( void );
/*
__interrupt void Cla1Task2();
__interrupt void Cla1Task3();
__interrupt void Cla1Task4();
__interrupt void Cla1Task5();
__interrupt void Cla1Task6();
__interrupt void Cla1Task7();
__interrupt void Cla1Task8();
*/

#ifdef __cplusplus
}
#endif // extern "C"

#endif //end of _CLA_SHARED_H_ definition

//
// End of file
//
