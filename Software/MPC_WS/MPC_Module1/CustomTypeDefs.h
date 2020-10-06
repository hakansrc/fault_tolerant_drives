/*
 * CustomTypeDefs.h
 *
 *  Created on: 29 Eyl 2020
 *      Author: hakan sarac
 */

#ifndef CUSTOMTYPEDEFS_H_
#define CUSTOMTYPEDEFS_H_





#define NUMBEROFMPCLOOPS    10
#define OPT_FSW_MAX         10000
#define OPT_FSW_MIN         1000
#define OPT_FSW_STEP        1000

#define IQRIPPLECOEFF       100000.0
#define IQREFCOEFF          10000.0
#define IDREFCOEFF          15.0
#define FSWCOEFF            1250.0



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
    unsigned int            MinimumCostIndex;
    float                   MinimumCostValue;
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
    float SaturationMax;
    float SaturationMin;
}PID_Parameters;

#endif /* CUSTOMTYPEDEFS_H_ */
