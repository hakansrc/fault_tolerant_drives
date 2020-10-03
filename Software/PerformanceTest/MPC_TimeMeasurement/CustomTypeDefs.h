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

#define NUMBEROFMPCLOOPS    40
#define OPT_FSW_MAX         40000
#define OPT_FSW_MIN         1000
#define OPT_FSW_STEP        1000

#define IQRIPPLECOEFF       10000.0
#define IDREFCOEFF          10000.0
#define IQREFCOEFF          15.0
#define FSWCOEFF            1500.0



typedef struct{
    float Dvalue;
    float Qvalue;
    float ZeroValue;
}Transformed;

typedef struct{
    float Vdc;
}VoltageMeasured;

typedef struct{
    float PhaseA;
    float PhaseB;
    float PhaseC;
    Transformed transformed;
}CurrentMeasured;

typedef struct{
#if 0
    float PhaseA;               /*remove*/
    float PhaseB;               /*remove*/
    float PhaseC;               /*remove*/
    Transformed transformed;    /*remove*/
#endif
    VoltageMeasured Voltage;
    CurrentMeasured Current;
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
    float   VoltageVectorAngleRad_Mod;
    float   Magnitude;
    float   ma;
    float   SvpwmT1;
    float   SvpwmT2;
    float   SvpwmT0;
    float   VoltageDuring_SvpwmT1;
    float   VoltageDuring_SvpwmT2;
    float   VoltageDuring_SvpwmT0;
    float   Iq_Ripple_Prediction;
    float   Iq_Delta_DuringT1;
    float   Iq_Delta_DuringT2;
    float   Iq_Delta_DuringT0;
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
    float   Iq;
    float   Id;
}ReferenceValues;

typedef struct{
    MeasuredParams          Measured;
    PredictionParameters    FirstHorizon[NUMBEROFMPCLOOPS];
    PredictionParameters    SecondHorizon[NUMBEROFMPCLOOPS];
    float                   OptimizationFsw[NUMBEROFMPCLOOPS];
    float                   Cost[NUMBEROFMPCLOOPS];
    ReferenceValues         Reference;
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
