/*
 * CustomTypeDefs.h
 *
 *  Created on: 29 Eyl 2020
 *      Author: hakan sarac
 */

#ifndef CUSTOMTYPEDEFS_H_
#define CUSTOMTYPEDEFS_H_


typedef struct
{
    float Frequency;
    float ma;
} OpenLoopOperation;

typedef struct
{
    float Dvalue;
    float Qvalue;
    float ZeroValue;
} Transformed;

typedef struct
{
    float Vdc;
} VoltageMeasured;

typedef struct
{
    float PhaseA;
    float PhaseB;
    float PhaseC;
    Transformed transformed;
} CurrentMeasured;

typedef struct
{
    VoltageMeasured Voltage;
    CurrentMeasured Current;
} MeasuredParams;

typedef struct
{
    float Dvalue;
    float Qvalue;
    float Alfavalue;
    float Betavalue;
} TransformValues;

typedef struct
{
    float Vd;
    float Vq;
    float Valfa;
    float Vbeta;
    float VoltageVectorAngleRad;
    float VoltageVectorAngleRad_Mod;
    float Magnitude;
    float ma;
    float SvpwmT1;
    float SvpwmT2;
    float SvpwmT0;
    float VoltageDuring_SvpwmT1;
    float VoltageDuring_SvpwmT2;
    float VoltageDuring_SvpwmT0;
    float Iq_Ripple_Prediction;
    float Iq_Delta_DuringT1;
    float Iq_Delta_DuringT2;
    float Iq_Delta_DuringT0;
    float IdPrediction;
    float IqPrediction;
    float TePrediction;
} PredictionParameters;


typedef struct
{
    float Electrical;
    float Mechanical;
} Angle;
typedef Angle AngularSpeed;

typedef struct
{
    float Iq;
    float Id;
} ReferenceValues;

typedef struct
{
    float PhaseA;
    float PhaseB;
    float PhaseC;
} Offset;

typedef struct
{
    MeasuredParams Measured;
    PredictionParameters FirstHorizon[NUMBEROFMPCLOOPS];
    PredictionParameters SecondHorizon[NUMBEROFMPCLOOPS];
    unsigned int MinimumCostIndex;
    float MinimumCostValue;
    float OptimizationFsw[NUMBEROFMPCLOOPS];
    float Cost[NUMBEROFMPCLOOPS];
    ReferenceValues Reference;
    Angle AngleRad;
    Angle AngleRadPrev;
    Angle AngleRadTemp;
    AngularSpeed AngularSpeedRadSec;
    AngularSpeed AngularSpeedRPM;
    Offset OffsetValue;
    float PhaseADutyCycle;
    float PhaseBDutyCycle;
    float PhaseCDutyCycle;
} ModuleParameters;

typedef struct
{
    float P_coeff;
    float I_coeff;
    float Ts;
    float Output;
    float Output_prev;
    float Input;
    float Input_prev;
    float SaturationMax;
    float SaturationMin;
} PID_Parameters;

enum
{
    drv8301_gain_10 = 0,
    drv8301_gain_20 = 1,
    drv8301_gain_40 = 2,
    drv8301_gain_80 = 3
};

struct DRV830x_SPI_WRITE_WORD_BITS
{                       // bit    	description
    Uint16 DATA : 11;   // 10:0		FIFO reset
    Uint16 ADDRESS : 4; // 14:11	Enhancement enable
    Uint16 R_W : 1;     // 15		R/W
};
union DRV830x_SPI_WRITE_WORD_REG
{
    Uint16 all;
    struct DRV830x_SPI_WRITE_WORD_BITS bit;
};

#endif /* CUSTOMTYPEDEFS_H_ */
