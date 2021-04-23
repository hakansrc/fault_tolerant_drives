#include <math.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>
#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>

#include "cla_shared.h"

#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"
#include "DRV8305_defs.h"
//#include "MultipleFloatDataSender.h" // float data sender will only work from CPU1
#include "CustomTypeDefs.h"

#pragma DATA_SECTION("CLAData")
uint32_t    Cla1Task1_counter = 0;
#pragma DATA_SECTION("CLAData")
float       M2_FswDecided_prev_cla = 1000;
#pragma DATA_SECTION("CLAData")
float       M2_FswDecided_cla = 1000;
#pragma DATA_SECTION("CLAData")
ModuleParameters Module2_Parameters_cla;
#pragma DATA_SECTION("CLAData")
PID_Parameters      PI_iq_cla;

#pragma DATA_SECTION("CLAData")
unsigned int        M2_OperationMode = MODE_NO_OPERATION; /*this will be changed */


#pragma DATA_SECTION("CLAData")
float    M2_minimumloss_iqref_cla = 0;

#pragma DATA_SECTION("M2_MINIMUMLOSS_IQ_LOCATION")
float M2_minimumloss_iqref = 0.0f;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
uint16_t    FaultFlagLocal = NO_FAULT;


#pragma DATA_SECTION("GLOBAL_FAULT_FLAG_LOCATION")
uint16_t    FaultFlagGlobal = NO_FAULT;

uint32_t    ControlISRCounter = 0;
#pragma DATA_SECTION("M1_SPEEDREF_LOCATION")
float       SpeedRefRPM = 50;
#pragma DATA_SECTION("M2_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module2_Parameters;
#pragma DATA_SECTION("PI_IQ_LOCATION")
PID_Parameters      PI_iq;
#pragma DATA_SECTION("M1_OPERATION_MODE_LOCATION")
unsigned int        M1_OperationMode = MODE_NO_OPERATION; /*this will be changed */
//#pragma DATA_SECTION("M2_OPERATION_MODE_LOCATION")
//unsigned int        M2_OperationMode = MODE_NO_OPERATION; /*this will be changed */
#pragma DATA_SECTION("M1_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module1_Parameters;
#pragma DATA_SECTION("M1_FSWDECIDED_LOCATION")
float       M1_FswDecided = 0;
#pragma DATA_SECTION("M2_FSWDECIDED_LOCATION")
float       M2_FswDecided = 0;



uint32_t    SvpwmSectorNumber = 0;

uint32_t            CLA1Task1End_counter = 0;

/*
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
 */

//float SpeedRefRPM = 50.0f;
float SpeedRefRadSec = 0.0f;
#pragma DATA_SECTION("M2_PI_IQ_LOCATION")
PID_Parameters PI_iq_cpu2;
#pragma DATA_SECTION("M1_IQREF_LOCATION")
float M1_Iqref = 0.0f;
#pragma DATA_SECTION("M2_IQREF_LOCATION")
float M2_Iqref = 0.0f;
#pragma DATA_SECTION("CLAData")
float M2_Iqref_cla = 0.0f;
#pragma DATA_SECTION("Cla1ToCpuMsgRAM")
unsigned int index_value_prev = 0;

__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/
__interrupt void epwm4_isr(void);       /*prototype of the ISR functions*/

__interrupt void CLATask1_PCC_Is_Done(void);

__interrupt void ipc0_isr(void);       /*prototype of the ISR functions*/

void InitializeEpwm4Registers(void);
void InitializeEpwm5Registers(void);
void InitializeEpwm6Registers(void);
void InitializationRoutine(void);
void RunTimeProtectionControl(void);
void ZeroiseModule2Parameters(void);
void Run_PI_Controller(PID_Parameters &pidparams);
inline uint64_t    GetTimeFloat(void);
inline uint64_t    GetTime(void);
#if 0
void GetSvpwmDutyCycles(float T1, float T2, float T0,float Ts,float VectorAngleRad, float &DutyA, float &DutyB, float &DutyC);
void GetEncoderReadings_Cpu2(ModuleParameters &moduleparams);
void GetAdcReadings(ModuleParameters &moduleparams);
void CalculateParkTransform(ModuleParameters &moduleparams);
void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
#endif
uint32_t    IPCWaitCounter = 0;

void CLA_configClaMemory(void);
void CLA_initCpu1Cla1(void);

uint16_t    Ipc0Counter=0;

float IqRefByPass = 6.0f;

#pragma DATA_SECTION("M1_INTERRUPT_MOMENT_LOCATION")
int64_t   M1_Interrupt_Moment = 0.0f;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
float   M1_FswDecided_to_cla = 1000.0f;
#pragma DATA_SECTION("CpuToCla1MsgRAM")
int64_t   M1_Interrupt_Moment_to_cla = 0;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
float   M1fsw_M2fsw_PhaseDifference_to_cla = 0;

#pragma DATA_SECTION("Cla1ToCpuMsgRAM")
float   M1fsw_M2fsw_PhaseDifference_prediction = 0;


#pragma DATA_SECTION("CpuToCla1MsgRAM")
int64_t M2_Interrupt_Moment_to_cla = 0;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
float somecoeff = 0.5f;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
float phase_cost_coeff = 10000.0f;

#pragma DATA_SECTION("Cla1ToCpuMsgRAM")
int64_t   M1_Next_Interrupt_Moment = 0;
#pragma DATA_SECTION("Cla1ToCpuMsgRAM")
int64_t   M2_Next_Interrupt_Moment = 0;


#pragma DATA_SECTION("Cla1ToCpuMsgRAM")
float   fsw_cost_multipler = 1.0f;

#pragma DATA_SECTION("CpuToCla1MsgRAM")
CostFunctionCoefficients    CostFunctionCoeff;

int main(void)
{

    InitSysCtrl();  /*initialize the peripheral clocks*/

#if 0 // remove from cpu2
    EALLOW;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0; // EPWM Clock Divide Select: /1 of PLLSYSCLK
    EDIS;
#endif

    InitPieCtrl();  /*initialize the PIE table (interrupt related)*/
    IER = 0x0000;   /*clear the Interrupt Enable Register   (IER)*/
    IFR = 0x0000;   /*clear the Interrupt Flag Register     (IFR)*/
    InitPieVectTable();

#if 0 // remove from cpu2
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;   /*stop the TimeBase clock for later synchronization*/
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 0;  /*stop the global TimeBase clock for later synchronization*/
    EDIS;
#endif

    /*Initialize cpu timers*/
    InitCpuTimers();
    ConfigCpuTimer(&CpuTimer0, 200, 1000000/5000); //1 seconds
    ConfigCpuTimer(&CpuTimer1, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer2, 200, 1000000); //1 seconds
    CpuTimer0Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer1Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer2Regs.TCR.all = 0x4000; // enable cpu timer interrupt

    while(1)
    {
        DELAY_US(10000);
        if(IpcRegs.IPCSTS.bit.IPC31==1) // cpu1 lets cpu2 go
        {
            IpcRegs.IPCACK.bit.IPC31 = 1;
            break;
        }
        IPCWaitCounter ++ ;
    }




    PI_iq_cpu2.I_coeff = 3.0f;
    PI_iq_cpu2.P_coeff = 0.6f;
    PI_iq_cpu2.Ts =  0.0002f;
    PI_iq_cpu2.Input = 0;
    PI_iq_cpu2.Input_prev = 0;
    PI_iq_cpu2.Output = 0;
    PI_iq_cpu2.Output_prev = 0;
    PI_iq_cpu2.SaturationMax = 4.0f * IQ_RATED;
    PI_iq_cpu2.SaturationMin = -4.0f * IQ_RATED;

    InitializationRoutine();

    EALLOW;
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.EPWM4_INT = &epwm4_isr;        /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.IPC0_INT = &ipc0_isr;          /*specify the interrupt service routine (ISR) address to the PIE table*/
    EDIS;


#if 1
    CLA_configClaMemory();
    CLA_initCpu1Cla1();
    PieCtrlRegs.PIEIER11.bit.INTx1 = 1;  // Enable PIE Group 11 INT1, CLA1_1 interrupt
    IER |= (M_INT11 );
    CostFunctionCoeff.IqRipple       = IQRIPPLECOEFF;
    CostFunctionCoeff.IqReference    = IQREFCOEFF;
    CostFunctionCoeff.IdReference    = IDREFCOEFF;
    CostFunctionCoeff.Fsw            = FSWCOEFF;
    CostFunctionCoeff.M1FswChange    = M1_FSW_CHANGE_COEFF;
    CostFunctionCoeff.M2FswPhase     = M2_FSW_PHASE_COEFF;
    CostFunctionCoeff.M2DifferentFsw = M2_DIFFERENT_FSW_COEFF;

#endif

    phase_cost_coeff = 10000.0f;
    somecoeff = 0.25f;

    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 interrupt*/
    IER |= M_INT3;  /*Enable the PIE group of Epwm4 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/
    PieCtrlRegs.PIEIER3.bit.INTx4 = 1;  /*Enable the 4th interrupt of the Group 3, which is for epwm4 interrupt*/
    PieCtrlRegs.PIEIER1.bit.INTx13 = 1; /*Enable the 13th interrupt of the Group 1, which is for ipc 0 interrupt*/

#if 0
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;   /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1;  /*start the global TimeBase clock */
    EDIS;
#endif

    DELAY_US(1000);


    PI_iq_cpu2.Input = 0;
    PI_iq_cpu2.Input_prev = 0;
    PI_iq_cpu2.Output = 0;
    PI_iq_cpu2.Output_prev = 0;
    M2_OperationMode = MODE_CLA_MPCCONTROLLER;

    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global realtime interrupt DBGM



    while(1)
    {
        M2_OperationMode = MODE_CLA_MPCCONTROLLER;

    }
}
__interrupt void cpu_timer0_isr(void)
{
    CpuTimer0.InterruptCount++;
    if(M2_OperationMode==MODE_CLA_MPCCONTROLLER)
    {
        SpeedRefRadSec = SpeedRefRPM/60.0f*2.0f*PI;
        PI_iq_cpu2.Input = SpeedRefRadSec - Module1_Parameters.AngularSpeedRadSec.Mechanical;
        Run_PI_Controller(PI_iq_cpu2);
        //PI_iq_cpu2.Output = IqRefByPass;
    }
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

__interrupt void cpu_timer1_isr(void)
{
    CpuTimer1.InterruptCount++;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

__interrupt void cpu_timer2_isr(void)
{
    CpuTimer2.InterruptCount++;

}

void InitializeEpwm4Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    EPwm4Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm4Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm4Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm4Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm4Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm4Regs.TBCTL.bit.SYNCOSEL = TB_CTR_ZERO;
    EPwm4Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm4Regs.TBCTL.bit.PHSEN = TB_DISABLE;
    EPwm4Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm4Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm4Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm4Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm4Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm4Regs.TBCTR = 0;

    EPwm4Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm4Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm4Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm4Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm4Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm4Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm4Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm4Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm4Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm4Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm4Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm4Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm4Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm4Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm4Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm4Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm4Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm4Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm4Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    EPwm4Regs.DBCTL.all = 0;
    EPwm4Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm4Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm4Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm4Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm4Regs.DBCTL2.all = 0; /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm4Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm4Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm4Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm4Regs.HRCNFG.all = 0;
    EPwm4Regs.HRCNFG2.all = 0;
    EPwm4Regs.HRPWR.bit.CALPWRON = 0;
    EPwm4Regs.HRPCTL.all = 0;

    EPwm4Regs.AQCTLA.all = 0;
    EPwm4Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm4Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm4Regs.TBPHS.bit.TBPHS = 0;

    EPwm4Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm4Regs.CMPA.bit.CMPA = 0;

    EPwm4Regs.ETSEL.bit.SOCAEN = 1;     /*enable EPWMxSOCA signal*/
    EPwm4Regs.ETSEL.bit.SOCASEL = 2;    /*ADC sampling is done when TBCTR==TBPRD*/
    EPwm4Regs.ETSEL.bit.INTEN = 1;      /*enable pwm interrupt*/
    EPwm4Regs.ETSEL.bit.INTSEL = 1;     /*interrupt occurs when TBCTR = 0*/

    EPwm4Regs.ETPS.all = 0x00;
    EPwm4Regs.ETPS.bit.INTPRD = 1;      // Generate INT on first event
    EPwm4Regs.ETPS.bit.SOCAPRD = 1;     // Generate SOC on first event
}
void InitializeEpwm5Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    EPwm5Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm5Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm5Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm5Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm5Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm5Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm5Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm5Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm5Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm5Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm5Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm5Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm5Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm5Regs.TBCTR = 0;

    EPwm5Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm5Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm5Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm5Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm5Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm5Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm5Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm5Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm5Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm5Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm5Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm5Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm5Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm5Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm5Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm5Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm5Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm5Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm5Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    EPwm5Regs.DBCTL.all = 0;
    EPwm5Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm5Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm5Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm5Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm5Regs.DBCTL2.all = 0; /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm5Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm5Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm5Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm5Regs.HRCNFG.all = 0;
    EPwm5Regs.HRCNFG2.all = 0;
    EPwm5Regs.HRPWR.bit.CALPWRON = 0;
    EPwm5Regs.HRPCTL.all = 0;

    EPwm5Regs.AQCTLA.all = 0;
    EPwm5Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm5Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm5Regs.TBPHS.bit.TBPHS = 0;

    EPwm5Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm5Regs.CMPA.bit.CMPA = 0;
}
void InitializeEpwm6Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    EPwm6Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm6Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm6Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm6Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm6Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm6Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm6Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm6Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm6Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm6Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm6Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm6Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm6Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm6Regs.TBCTR = 0;

    EPwm6Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm6Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm6Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm6Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm6Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm6Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm6Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm6Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm6Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm6Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm6Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm6Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm6Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm6Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm6Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm6Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm6Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm6Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm6Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    EPwm6Regs.DBCTL.all = 0;
    EPwm6Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm6Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm6Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm6Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm6Regs.DBCTL2.all = 0; /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm6Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm6Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm6Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm6Regs.HRCNFG.all = 0;
    EPwm6Regs.HRCNFG2.all = 0;
    EPwm6Regs.HRPWR.bit.CALPWRON = 0;
    EPwm6Regs.HRPCTL.all = 0;

    EPwm6Regs.AQCTLA.all = 0;
    EPwm6Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm6Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm6Regs.TBPHS.bit.TBPHS = 0;

    EPwm6Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm6Regs.CMPA.bit.CMPA = 0;
}
__interrupt void epwm4_isr(void)
{
    M2_Interrupt_Moment_to_cla = (int64_t) GetTime();
    M1_Interrupt_Moment_to_cla = M1_Interrupt_Moment;
    M1fsw_M2fsw_PhaseDifference_to_cla = ((float)(M2_Interrupt_Moment_to_cla-M1_Interrupt_Moment_to_cla))/((float)200e6);
    M1_FswDecided_to_cla = M1_FswDecided;
    GpioDataRegs.GPDTOGGLE.bit.GPIO104 = 1;

    ControlISRCounter++;
#if 1
    if (M2_OperationMode == MODE_CLA_MPCCONTROLLER)
    {
#if 0
        memcpy(&PI_iq_cla,&PI_iq,sizeof(PID_Parameters)); //get the reference from cpu1 to cla of cpu2
#endif
        M2_Iqref_cla = M2_Iqref;
        memcpy(&PI_iq_cla,&PI_iq_cpu2,sizeof(PID_Parameters));
        memcpy(&Module2_Parameters_cla.AngularSpeedRadSec,&Module1_Parameters.AngularSpeedRadSec,sizeof(AngularSpeed));
        M2_minimumloss_iqref_cla = M2_minimumloss_iqref;
        FaultFlagLocal = FaultFlagGlobal;
        EPwm4Regs.ETCLR.bit.INT = 1;
        PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
        return;
    }
#endif

    EPwm4Regs.ETCLR.bit.INT = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}

__interrupt void CLATask1_PCC_Is_Done(void)
{
    CLA1Task1End_counter++;
    memcpy(&PI_iq_cla,&PI_iq,sizeof(PID_Parameters)); //get the reference from cpu1 to cla of cpu2
    memcpy(&Module2_Parameters,&Module2_Parameters_cla,sizeof(ModuleParameters)); //get the reference from cpu1 to cla of cpu2
    Module2_Parameters.AngleRadPrev.Electrical = fabsf(M1fsw_M2fsw_PhaseDifference_prediction)*M1_FswDecided_to_cla;
    M2_FswDecided = M2_FswDecided_cla;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP11;
}

__interrupt void ipc0_isr(void)
{
    /**/
    Ipc0Counter++;
    EQep2Regs.QPOSCNT = ENCODER_SWEETPOINT_VALUE-2+4;
    IpcRegs.IPCACK.bit.IPC0 = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

void InitializationRoutine(void)
{
    int i=0;

    for(i=0;i<NUMBEROFMPCLOOPS;i++)
    {
        Module2_Parameters.OptimizationFsw[i] = (i+1)*1000;
        Module2_Parameters_cla.OptimizationFsw[i] = (i+1)*1000;
    }


    InitializeEpwm4Registers();
    InitializeEpwm5Registers();
    InitializeEpwm6Registers();

}
void RunTimeProtectionControl(void)
{
    return;
}


void ZeroiseModule2Parameters(void)
{
    memset(&Module2_Parameters.Measured, 0, sizeof(MeasuredParams));
    memset(&Module2_Parameters.FirstHorizon, 0, sizeof(PredictionParameters));
    memset(&Module2_Parameters.SecondHorizon, 0, sizeof(PredictionParameters));
    Module2_Parameters.MinimumCostIndex = 0;
    Module2_Parameters.MinimumCostValue = 0;
    memset(&Module2_Parameters.Cost,0,sizeof(float)*NUMBEROFMPCLOOPS);
    memset(&Module2_Parameters.AngleRad,0,sizeof(Angle));
    memset(&Module2_Parameters.AngleRadPrev,0,sizeof(Angle));
    memset(&Module2_Parameters.AngleRadTemp,0,sizeof(Angle));
    memset(&Module2_Parameters.AngularSpeedRadSec,0,sizeof(AngularSpeed));
    memset(&Module2_Parameters.AngularSpeedRPM,0,sizeof(AngularSpeed));
    memset(&Module2_Parameters.OffsetValue,0,sizeof(Offset));
    Module2_Parameters.PhaseADutyCycle = 0;
    Module2_Parameters.PhaseBDutyCycle = 0;
    Module2_Parameters.PhaseCDutyCycle = 0;
}


//
// CLA_configClaMemory - Configure CLA memory sections
//
void CLA_configClaMemory(void)
{
    extern uint32_t Cla1funcsRunStart, Cla1funcsLoadStart, Cla1funcsLoadSize;
    EALLOW;

#ifdef _FLASH
    //
    // Copy over code from FLASH to RAM
    //
    memcpy((uint32_t *)&Cla1funcsRunStart, (uint32_t *)&Cla1funcsLoadStart,
           (uint32_t)&Cla1funcsLoadSize);
#endif //_FLASH

    //
    // Initialize and wait for CLA1ToCPUMsgRAM
    //
    MemCfgRegs.MSGxINIT.bit.INIT_CLA1TOCPU = 1;
    while(MemCfgRegs.MSGxINITDONE.bit.INITDONE_CLA1TOCPU != 1){};

    //
    // Initialize and wait for CPUToCLA1MsgRAM
    //
    MemCfgRegs.MSGxINIT.bit.INIT_CPUTOCLA1 = 1;
    while(MemCfgRegs.MSGxINITDONE.bit.INITDONE_CPUTOCLA1 != 1){};

    /* LS0, LS1 and LS2 are PRG RAM for CLA
     * LS3, LS4         are DAT RAM for CLA
     *
     */
    MemCfgRegs.LSxMSEL.bit.MSEL_LS0 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS1 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS2 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS3 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS4 = 1;    // memory is shared between cpu & cla

    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS0 = 1;    //LS0 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS1 = 1;    //LS1 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS2 = 1;    //LS2 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS3 = 0;    //LS3 is chosen as DAT RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS4 = 0;    //LS4 is chosen as DAT RAM for CLA



    EDIS;
}

//
// CLA_initCpu1Cla1 - Initialize CLA1 task vectors and end of task interrupts
//
void CLA_initCpu1Cla1(void)
{
    //
    // Compute all CLA task vectors
    // On Type-1 CLAs the MVECT registers accept full 16-bit task addresses as
    // opposed to offsets used on older Type-0 CLAs
    //
    EALLOW;
    Cla1Regs.MVECT1 = (uint16_t)(&Cla1Task1);
    /*
    Cla1Regs.MVECT2 = (uint16_t)(&Cla1Task2);
    Cla1Regs.MVECT3 = (uint16_t)(&Cla1Task3);
    Cla1Regs.MVECT4 = (uint16_t)(&Cla1Task4);
    Cla1Regs.MVECT5 = (uint16_t)(&Cla1Task5);
    Cla1Regs.MVECT6 = (uint16_t)(&Cla1Task6);
    Cla1Regs.MVECT7 = (uint16_t)(&Cla1Task7);
    Cla1Regs.MVECT8 = (uint16_t)(&Cla1Task8);
    */
    //
    // Enable the IACK instruction to start a task on CLA in software
    // for all  8 CLA tasks. Also, globally enable all 8 tasks (or a
    // subset of tasks) by writing to their respective bits in the
    // MIER register
    //
    Cla1Regs.MCTL.bit.IACKE = 1;
    Cla1Regs.MIER.all = 0x00FF;

    //
    // Configure the vectors for the end-of-task interrupt for all
    // 8 tasks
    //
    PieVectTable.CLA1_1_INT = &CLATask1_PCC_Is_Done;
    /*
    PieVectTable.CLA1_2_INT = &cla1Isr2;
    PieVectTable.CLA1_3_INT = &cla1Isr3;
    PieVectTable.CLA1_4_INT = &cla1Isr4;
    PieVectTable.CLA1_5_INT = &cla1Isr5;
    PieVectTable.CLA1_6_INT = &cla1Isr6;
    PieVectTable.CLA1_7_INT = &cla1Isr7;
    PieVectTable.CLA1_8_INT = &cla1Isr8;
    */


    DmaClaSrcSelRegs.CLA1TASKSRCSEL1.bit.TASK1 = CLA_TRIG_EPWM4INT;


    //
    // Enable CLA interrupts at the group and subgroup levels
    //
    PieCtrlRegs.PIEIER11.all = 0xFFFF;
    EDIS;
}

void Run_PI_Controller(PID_Parameters &pidparams)
{
    pidparams.Output = pidparams.Output_prev + pidparams.P_coeff * (pidparams.Input - pidparams.Input_prev) + (pidparams.Ts) / 2.0 * pidparams.I_coeff * (pidparams.Input + pidparams.Input_prev);
    if (pidparams.Output > pidparams.SaturationMax)
    {
        pidparams.Output = pidparams.SaturationMax;
    }
    if (pidparams.Output < pidparams.SaturationMin)
    {
        pidparams.Output = pidparams.SaturationMin;
    }
    pidparams.Output_prev = pidparams.Output;
    pidparams.Input_prev = pidparams.Input;
}
inline uint64_t    GetTimeFloat(void)
{
    uint64_t    timer_low = IpcRegs.IPCCOUNTERL;
    return  (float)(((float)((timer_low)+((uint64_t)IpcRegs.IPCCOUNTERH)*((uint64_t)4294967296)))/(float(200e6)));
}
inline uint64_t    GetTime(void)
{
    uint64_t    timer_low = IpcRegs.IPCCOUNTERL;
    return ((timer_low)+((uint64_t)IpcRegs.IPCCOUNTERH)*((uint64_t)4294967296));
}
