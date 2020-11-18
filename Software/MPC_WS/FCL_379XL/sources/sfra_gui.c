//#############################################################################
// FILE    : sfra_gui.c
// TITLE   : SFRA GUI functions customized for Motor Control
// Version : 1.0
//
//  Group           : C2000
//  Target Family   : F2837x
//  Created on      : Mar 19, 2017
//  Author          : C2000 Systems Lab
//#############################################################################
// $TI Release: C2000 FCL SFRA $
// $Release Date: 03/2018 $
// $Copyright: Copyright (C) 2013-2018 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//#############################################################################


//#define MATH_TYPE 1          //Floating point
#include <FCL_SFRA_XL_DualServo-Settings.h>
#include  "SFRA_F_Include.h"
#include  <sfra_gui.h>

#if 0
//#define SFRA_ISR_FREQ      SAMPLING_FREQ
#define SFRA_FREQ_START    10
#define SFRA_FREQ_LENGTH   26
//SFRA step Multiply = 10^(1/No of steps per decade(10 - 1))
#define FREQ_STEP_MULTIPLY 1.29154966f
#endif

// ****************************************************************************
// Variables used by SFRA routine
// ================================

//extern SFRA_F SFRA1;
//extern int16 SFRA_InitFlag;
//extern void SFRA_Init(float SFRA_ISR_FREQ);


//*************************SFRA variables *************************************

SFRA_CONTROL  sfraControl;
SFRA_F        SFRA1;

//extern to access tables in ROM (not really ROM in Soprano)
extern long FPUsinTable[];

float32 Plant_MagVect[SFRA_FREQ_LENGTH];
float32 Plant_PhaseVect[SFRA_FREQ_LENGTH];
float32 OL_MagVect[SFRA_FREQ_LENGTH];
float32 OL_PhaseVect[SFRA_FREQ_LENGTH];
float32 FreqVect[SFRA_FREQ_LENGTH];

//Flag for reinitializing FRA variables
int16 SFRA_InitFlag;

//GUI support variables
// sets a limit on the amount of external GUI controls - increase as necessary
int16 *varSetTxtList[16]; //16 textbox controlled variables
int16 *varSetBtnList[16]; //16 button controlled variables
int16 *varSetSldrList[16]; //16 slider controlled variables
int16 *varGetList[16]; //16 variables sendable to GUI
int32 *arrayGetList[16]; //16 arrays sendable to GUI
Uint32 *dataSetList[16]; //16 32-bit textbox or label controlled variables


// ******************************************************************************
void SFRA_Init(float SFRA_ISR_FREQ)
{
    // **************** SFRA INIT CODE START **********************
    //SFRA Object Initialization

    SFRA1.amplitude    = 0.02;  // 0.02      //injection amplitude
    SFRA1.Vec_Length   = SFRA_FREQ_LENGTH;   //length of SFRA
    SFRA1.ISR_Freq     = SFRA_ISR_FREQ;      //SFRA ISR Frequency
    SFRA1.Freq_Start   = SFRA_FREQ_START;    //Start Frequency of the SFRA analysis
    SFRA1.Freq_Step    = FREQ_STEP_MULTIPLY; //Frequency Step
    SFRA1.FreqVect     = FreqVect;           //Assign array location to Pointers in the SFRA object
    SFRA1.GH_MagVect   = OL_MagVect;
    SFRA1.GH_PhaseVect = OL_PhaseVect;
    SFRA1.H_MagVect    = Plant_MagVect;
    SFRA1.H_PhaseVect  = Plant_PhaseVect;
    SFRA_F_INIT(&SFRA1);

#if BUILDLEVEL == FCL_LEVEL6
    // **************** SFRA INIT CODE START **********************
    //"Set" variables
    // assign GUI Buttons to desired flag addresses
    varSetBtnList[0] = (int16*)&SFRA_InitFlag;
    //"Get" variables
    //---------------------------------------
    // assign a GUI "getable" parameter address
    varGetList[0] = (int16*)&(SFRA1.Vec_Length);
    varGetList[1] = (int16*)&(SFRA1.status);
    varGetList[2] = (int16*)&(SFRA1.FreqIndex);
    //"Setable" variables
    //----------------------------------------
    // assign GUI "setable" by Text parameter address
    dataSetList[0] = (Uint32*)&(SFRA1.Freq_Start);
    dataSetList[1] = (Uint32*)&(SFRA1.amplitude);
    dataSetList[2] = (Uint32*)&(SFRA1.Freq_Step);
    // assign a GUI "getable" parameter array address
    arrayGetList[0] = (int32*)FreqVect;
    arrayGetList[1] = (int32*)OL_MagVect;
    arrayGetList[2] = (int32*)OL_PhaseVect;
    arrayGetList[3] = (int32*)Plant_MagVect;
    arrayGetList[4] = (int32*)Plant_PhaseVect;
    arrayGetList[5] = (int32*)&(SFRA1.Freq_Start);
    arrayGetList[6] = (int32*)&(SFRA1.amplitude);
    arrayGetList[7] = (int32*)&(SFRA1.Freq_Step);

#endif

    return;
}

// *****************************************************************************
