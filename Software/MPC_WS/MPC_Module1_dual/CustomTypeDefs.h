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
} Transformed; /*12 bytes*/

typedef struct
{
    float Vdc;
} VoltageMeasured; /*4 bytes*/

typedef struct
{
    float PhaseA;
    float PhaseB;
    float PhaseC;
    Transformed transformed;
} CurrentMeasured;      /*12+12=24 bytes*/

typedef struct
{
    VoltageMeasured Voltage;
    CurrentMeasured Current;
} MeasuredParams;       /*24+4=28bytes*/

typedef struct
{
    float Dvalue;
    float Qvalue;
} TransformValues;

typedef struct
{
    float IdPrediction;
    float IqPrediction;
    float VdPrediction;
    float VqPrediction;
} FirstHorizonParameters;   // 16 bytes

typedef struct
{
    float IdPrediction;
    float IqPrediction;
    float VdPrediction;
    float VqPrediction;
} CurrentHorizonParameters; // 16 bytes


typedef struct
{
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
} Angle;    /*8 bytes*/

typedef Angle AngularSpeed;

typedef struct
{
    float Iq;
    float Id;
} ReferenceValues; /*8 bytes*/

typedef struct
{
    float PhaseA;
    float PhaseB;
    float PhaseC;
} Offset;   /*12 bytes*/


typedef struct
{
    MeasuredParams Measured;                                            /*  28 bytes    -> 14 for C2000*/
    CurrentHorizonParameters CurrentHorizon[NUMBEROFMPCLOOPS];  /* 16*10=   160 bytes   -> 80 for C2000*/
    FirstHorizonParameters FirstHorizon[NUMBEROFMPCLOOPS];      /* 16*10=   160 bytes   -> 80 for C2000*/
    PredictionParameters SecondHorizon[NUMBEROFMPCLOOPS];       /* 76*10=   760 bytes   -> 380 for C2000*/
    float MinimumCostValue;                                             /*  4 byte      -> 2 for C2000*/
    float OptimizationFsw[NUMBEROFMPCLOOPS];                    /* 10*4=    40 bytes    -> 20 for C2000*/
    float Cost[NUMBEROFMPCLOOPS];                               /* 10*4=    40 bytes    -> 20 for C2000*/
    ReferenceValues Reference;                                          /*  8 bytes     -> 4 for C2000*/
    Angle AngleRad;                                                     /*  8 bytes     -> 4 for C2000*/
    Angle AngleRadPrev;                                                 /*  8 bytes     -> 4 for C2000*/
    Angle AngleRadTemp;                                                 /*  8 bytes     -> 4 for C2000*/
    AngularSpeed AngularSpeedRadSec;                                    /*  8 bytes     -> 4 for C2000*/
    AngularSpeed AngularSpeedRPM;                                       /*  8 bytes     -> 4 for C2000*/
    Offset OffsetValue;                                                 /*  12 bytes    -> 6 for C2000*/
    float PhaseADutyCycle;                                              /*  4 byte      -> 2 for C2000*/
    float PhaseBDutyCycle;                                              /*  4 byte      -> 2 for C2000*/
    float PhaseCDutyCycle;                                              /*  4 byte      -> 2 for C2000*/
    unsigned int MinimumCostIndex;                                      /*  4 bytes     -> 1 for C2000*/
} ModuleParameters;                                                     /*  = 1268 bytes-> = 633 for C2000 (this is because an address can hold 2 bytes in 28379d)*/

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
} PID_Parameters; // = 18bytes for C2000 (this is because an address can hold 2 bytes in 28379d)

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
