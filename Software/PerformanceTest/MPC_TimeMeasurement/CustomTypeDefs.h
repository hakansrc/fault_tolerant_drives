/*
 * CustomTypeDefs.h
 *
 *  Created on: 29 Eyl 2020
 *      Author: hakan sarac
 */

#ifndef CUSTOMTYPEDEFS_H_
#define CUSTOMTYPEDEFS_H_

#define P_COEFFICIENT       12.5    /*these values are random for now*/
#define I_COEFFICIENT       12.5    /*these values are random for now*/
#define PI_TS_COEFFICIENT   12.5    /*these values are random for now*/

#define PI                  3.1415926
#define TWO_PI_OVER_THREE   2.09439510

typedef struct{
    float Dvalue;
    float Qvalue;
    float ZeroValue;
}Transformed;

typedef struct{
    float PhaseA;
    float PhaseB;
    float PhaseC;
    Transformed transformed;
}MeasuredParams;

typedef struct{
    float Dvalue;
    float Qvalue;
    float Alfavalue;
    float Betavalue;
}TransformValues;


typedef struct{
    float   Vd;
    float   Vq;
    float   Valfa;
    float   Vbeta;
    float   VoltageVectorAngleRad;
    float   Magnitude;
    float   ma;
    float   SvpwmT1;
    float   SvpwmT2;
    float   SvpwmT0;
    float   VoltageDuring_SvpwmT1;
    float   VoltageDuring_SvpwmT2;
    float   VoltageDuring_SvpwmT0;
    float   Iq_Ripple_Prediction;
    float   IdPrediction;
    float   IqPrediction;
    float   TePrediction;
}PredictionParameters;

typedef struct{
    float   Electrical;
    float   Mechanical;
}Angle;
typedef Angle AngularSpeed;

typedef struct{
    MeasuredParams          PhaseCurrent;
    PredictionParameters    FirstHorizon;
    PredictionParameters    SecondHorizon;
    Angle                   Angle;
    AngularSpeed            AngularSpeed;
}ModuleParameters;

typedef struct{
    float P_coeff;
    float I_coeff;
    float Ts;
    float Output;
    float Output_prev;
    float Input;
    float Input_prev;
}PID_Parameters;

#endif /* CUSTOMTYPEDEFS_H_ */
