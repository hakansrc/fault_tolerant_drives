#include <math.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>
#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>

#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"
#include "DRV8305_defs.h"
//#include "MultipleFloatDataSender.h" // float data sender will only work from CPU1
#include "CustomTypeDefs.h"

uint32_t    ControlISRCounter = 0;
#pragma DATA_SECTION("M1_SPEEDREF_LOCATION")
float       SpeedRefRPM = 50;
#pragma DATA_SECTION("M2_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module2_Parameters;
#pragma DATA_SECTION("PI_IQ_LOCATION")
PID_Parameters      PI_iq;
#pragma DATA_SECTION("M1_OPERATION_MODE_LOCATION")
unsigned int        M1_OperationMode = MODE_NO_OPERATION; /*this will be changed */
#pragma DATA_SECTION("M2_OPERATION_MODE_LOCATION")
unsigned int        M2_OperationMode = MODE_NO_OPERATION; /*this will be changed */
#pragma DATA_SECTION("M1_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module1_Parameters;
#pragma DATA_SECTION("M1_FSWDECIDED_LOCATION")
float       M1_FswDecided = 0;
#pragma DATA_SECTION("M2_FSWDECIDED_LOCATION")
float       M2_FswDecided = 0;

uint32_t    SvpwmSectorNumber = 0;


__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/
__interrupt void epwm4_isr(void);       /*prototype of the ISR functions*/


void InitializeEpwm4Registers(void);
void InitializeEpwm5Registers(void);
void InitializeEpwm6Registers(void);
void InitializationRoutine(void);
void RunTimeProtectionControl(void);
void GetSvpwmDutyCycles(float T1, float T2, float T0,float Ts,float VectorAngleRad, float &DutyA, float &DutyB, float &DutyC);
void ZeroiseModule2Parameters(void);
void GetEncoderReadings_Cpu2(ModuleParameters &moduleparams);
void GetAdcReadings(ModuleParameters &moduleparams);
inline void CalculateParkTransform(ModuleParameters &moduleparams);
static inline void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
static inline void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
uint32_t    IPCWaitCounter = 0;


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
    ConfigCpuTimer(&CpuTimer0, 200, 1000000); //1 seconds
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

    InitializationRoutine();

    EALLOW;
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.EPWM4_INT = &epwm4_isr;        /*specify the interrupt service routine (ISR) address to the PIE table*/
    EDIS;

    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 interrupt*/
    IER |= M_INT3;  /*Enable the PIE group of Epwm4 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/
    PieCtrlRegs.PIEIER3.bit.INTx4 = 1;  /*Enable the 4th interrupt of the Group 3, which is for epwm4 interrupt*/

#if 0
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;   /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1;  /*start the global TimeBase clock */
    EDIS;
#endif
    M2_OperationMode = MODE_MPCCONTROLLER;

    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global realtime interrupt DBGM



    while(1)
    {

    }
}
__interrupt void cpu_timer0_isr(void)
{
    CpuTimer0.InterruptCount++;
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
    IpcRegs.IPCSET.bit.IPC0 = 1;
    RunTimeProtectionControl();
    ControlISRCounter++;
    /*When CPU2 is activated, the CPU1 is already initialized everything*/

    GetAdcReadings(Module2_Parameters);

    GetEncoderReadings_Cpu2(Module2_Parameters);

    CalculateParkTransform(Module2_Parameters);

    if ((M1_OperationMode == MODE_MPCCONTROLLER)&&(M2_OperationMode==MODE_MPCCONTROLLER))
    {
        Module2_Parameters.Reference.Iq = PI_iq.Output/((float)2);
        Module2_Parameters.Reference.Id = IDREF;

        Module2_Parameters.MinimumCostValue = (float)1e35;

        ExecuteFirstPrediction(Module2_Parameters,0);
        ExecuteSecondPrediction(Module2_Parameters,0);
        ExecuteFirstPrediction(Module2_Parameters,1);
        ExecuteSecondPrediction(Module2_Parameters,1);
        ExecuteFirstPrediction(Module2_Parameters,2);
        ExecuteSecondPrediction(Module2_Parameters,2);
        ExecuteFirstPrediction(Module2_Parameters,3);
        ExecuteSecondPrediction(Module2_Parameters,3);
        ExecuteFirstPrediction(Module2_Parameters,4);
        ExecuteSecondPrediction(Module2_Parameters,4);
        ExecuteFirstPrediction(Module2_Parameters,5);
        ExecuteSecondPrediction(Module2_Parameters,5);
        ExecuteFirstPrediction(Module2_Parameters,6);
        ExecuteSecondPrediction(Module2_Parameters,6);
        ExecuteFirstPrediction(Module2_Parameters,7);
        ExecuteSecondPrediction(Module2_Parameters,7);
        ExecuteFirstPrediction(Module2_Parameters,8);
        ExecuteSecondPrediction(Module2_Parameters,8);
        ExecuteFirstPrediction(Module2_Parameters,9);
        ExecuteSecondPrediction(Module2_Parameters,9);

        GetSvpwmDutyCycles(Module2_Parameters.SecondHorizon[Module2_Parameters.MinimumCostIndex].SvpwmT1,\
                           Module2_Parameters.SecondHorizon[Module2_Parameters.MinimumCostIndex].SvpwmT2,\
                           Module2_Parameters.SecondHorizon[Module2_Parameters.MinimumCostIndex].SvpwmT0,\
                           (1.0/((float)Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex])),\
                           Module2_Parameters.SecondHorizon[Module2_Parameters.MinimumCostIndex].VoltageVectorAngleRad,\
                           Module2_Parameters.PhaseADutyCycle,\
                           Module2_Parameters.PhaseBDutyCycle,\
                           Module2_Parameters.PhaseCDutyCycle);

        M2_FswDecided = Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex];

        EPwm4Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
        EPwm5Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
        EPwm6Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
    }
    else
    {
        Module2_Parameters.PhaseADutyCycle  = 0 ;
        Module2_Parameters.PhaseBDutyCycle  = 0 ;
        Module2_Parameters.PhaseCDutyCycle  = 0 ;
    }



    if ((M1_OperationMode == MODE_MPCCONTROLLER)&&(M2_OperationMode==MODE_MPCCONTROLLER))
    {
        if(Module2_Parameters.PhaseADutyCycle>1.0)
            Module2_Parameters.PhaseADutyCycle = 1.0;
        if(Module2_Parameters.PhaseADutyCycle<0)
            Module2_Parameters.PhaseADutyCycle = 0;
        if(Module2_Parameters.PhaseBDutyCycle>1.0)
            Module2_Parameters.PhaseBDutyCycle = 1.0;
        if(Module2_Parameters.PhaseBDutyCycle<0)
            Module2_Parameters.PhaseBDutyCycle = 0;
        if(Module2_Parameters.PhaseCDutyCycle>1.0)
            Module2_Parameters.PhaseCDutyCycle = 1.0;
        if(Module2_Parameters.PhaseCDutyCycle<0)
            Module2_Parameters.PhaseCDutyCycle = 0;

        EPwm4Regs.CMPA.bit.CMPA = (Uint16 )(Module2_Parameters.PhaseADutyCycle*((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
        EPwm5Regs.CMPA.bit.CMPA = (Uint16 )(Module2_Parameters.PhaseBDutyCycle*((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
        EPwm6Regs.CMPA.bit.CMPA = (Uint16 )(Module2_Parameters.PhaseCDutyCycle*((float )SYSCLKFREQUENCY) / (Module2_Parameters.OptimizationFsw[Module2_Parameters.MinimumCostIndex] * 4.0));
    }
    else
    {
        EPwm4Regs.CMPA.bit.CMPA = Module2_Parameters.PhaseADutyCycle*EPwm4Regs.TBPRD;
        EPwm5Regs.CMPA.bit.CMPA = Module2_Parameters.PhaseBDutyCycle*EPwm5Regs.TBPRD;
        EPwm6Regs.CMPA.bit.CMPA = Module2_Parameters.PhaseCDutyCycle*EPwm6Regs.TBPRD;
    }


    EPwm4Regs.ETCLR.bit.INT = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}
void InitializationRoutine(void)
{
    int i=0;

    for(i=0;i<NUMBEROFMPCLOOPS;i++)
    {
        Module2_Parameters.OptimizationFsw[i] = (i+1)*1000;
    }
    InitializeEpwm4Registers();
    InitializeEpwm5Registers();
    InitializeEpwm6Registers();
}
void RunTimeProtectionControl(void)
{
#if 0
    if((fabsf(M2_IA_CURRENT_FLOAT)>M2_IA_RUNTIME_PROTECTION_VALUE)||(fabsf(M2_IB_CURRENT_FLOAT)>M2_IB_RUNTIME_PROTECTION_VALUE)||(fabsf(M2_IC_CURRENT_FLOAT)>M2_IC_RUNTIME_PROTECTION_VALUE))
    {
        EPwm4Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm5Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm6Regs.TZFRC.bit.DCAEVT1 = 1;
    }
    if((M2_VDC_VOLTAGE_FLOAT>M2_VDC_UPPERBOUND_PROTECTION)||(M2_VDC_VOLTAGE_FLOAT<M2_VDC_LOWERBOUND_PROTECTION))
    {
        EPwm4Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm5Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm6Regs.TZFRC.bit.DCAEVT1 = 1;
    }
#endif
}


void GetSvpwmDutyCycles(float T1, float T2, float T0,float Ts,float VectorAngleRad, float &DutyA, float &DutyB, float &DutyC)
{
    if ((fmodf(VectorAngleRad,2.0*PI)<=PI/3.0)&&(fmodf(VectorAngleRad,2.0*PI)>=0))
    {
        SvpwmSectorNumber = 1;
        DutyA = (T1+T2+T0/2)/Ts;
        DutyB = (T2+T0/2)/Ts;
        DutyC = (T0/2)/Ts;
        return;
    }

    if ((fmodf(VectorAngleRad,2.0*PI)<=2*PI/3)&&(fmodf(VectorAngleRad,2.0*PI)>=PI/3.0))
    {
        SvpwmSectorNumber = 2;
        DutyA = (T1+T0/2)/Ts;
        DutyB = (T1+T2+T0/2)/Ts;
        DutyC = (T0/2)/Ts;
        return;
    }

    if ((fmodf(VectorAngleRad,2.0*PI)<=PI)&&(fmodf(VectorAngleRad,2.0*PI)>=2*PI/3.0))
    {
        SvpwmSectorNumber = 3;
        if(fmodf(VectorAngleRad, PI)==0)
        {
            DutyA = (T0/2)/Ts;
            DutyB = (T1+T0/2)/Ts;
            DutyC = (T1+T2+T0/2)/Ts;
        }
        else
        {
            DutyA = (T0/2)/Ts;
            DutyB = (T1+T2+T0/2)/Ts;
            DutyC = (T2+T0/2)/Ts;
        }
        return;
    }

    if ((fmodf(VectorAngleRad,2.0*PI)<=4*PI/3.0)&&(fmodf(VectorAngleRad,2.0*PI)>=PI))
    {
        SvpwmSectorNumber = 4;
        DutyA = (T0/2)/Ts;
        DutyB = (T1+T0/2)/Ts;
        DutyC = (T1+T2+T0/2)/Ts;
        return;
    }
    if ((fmodf(VectorAngleRad,2.0*PI)<=5*PI/3.0)&&(fmodf(VectorAngleRad,2.0*PI)>=4*PI/3.0))
    {
        SvpwmSectorNumber = 5;
        DutyA = (T2+T0/2)/Ts;
        DutyB = (T0/2)/Ts;
        DutyC = (T1+T2+T0/2)/Ts;
        return;
    }
    if ((fmodf(VectorAngleRad,2.0*PI)<=2*PI)&&(fmodf(VectorAngleRad,2.0*PI)>=5*PI/3.0))
    {
        SvpwmSectorNumber = 6;
        DutyA = (T1+T2+T0/2)/Ts;
        DutyB = (T0/2)/Ts;
        DutyC = (T1+T0/2)/Ts;
        return;
    }

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

void GetEncoderReadings_Cpu2(ModuleParameters &moduleparams)
{
#if 0
    moduleparams.AngleRad.Mechanical = ((float)EQep1Regs.QPOSCNT)/((float)ENCODERMAXTICKCOUNT)* 2.0 * PI;
    moduleparams.AngleRad.Electrical =  moduleparams.AngleRad.Mechanical*POLEPAIRS;
#else
    moduleparams.AngleRad.Mechanical = Module1_Parameters.AngleRad.Mechanical;
    moduleparams.AngleRad.Electrical = moduleparams.AngleRad.Mechanical*POLEPAIRS;
#endif

    /*CPU1 already calculates the speed, therefore CPU2 just gets the speed reading from CPU1*/
    moduleparams.AngularSpeedRadSec.Mechanical  = Module1_Parameters.AngularSpeedRadSec.Mechanical;
    moduleparams.AngularSpeedRadSec.Electrical  = Module1_Parameters.AngularSpeedRadSec.Electrical;
    moduleparams.AngularSpeedRPM.Mechanical     = Module1_Parameters.AngularSpeedRPM.Mechanical;


}
void GetAdcReadings(ModuleParameters &moduleparams)
{
    moduleparams.Measured.Current.PhaseA = M2_IA_CURRENT_FLOAT;
    moduleparams.Measured.Current.PhaseB = M2_IB_CURRENT_FLOAT;
    moduleparams.Measured.Current.PhaseC = M2_IC_CURRENT_FLOAT;
    moduleparams.Measured.Voltage.Vdc = M2_VDC_VOLTAGE_FLOAT;
}
inline void CalculateParkTransform(ModuleParameters &moduleparams)
{
    moduleparams.Measured.Current.transformed.Dvalue = 0.66667 * (moduleparams.Measured.Current.PhaseA * sinf(moduleparams.AngleRad.Electrical) + moduleparams.Measured.Current.PhaseB * sinf(moduleparams.AngleRad.Electrical - 0.66667 * PI /*2*PI/3*/) + moduleparams.Measured.Current.PhaseC * sinf(moduleparams.AngleRad.Electrical + 0.66667 * PI /*2*PI/3*/));
    moduleparams.Measured.Current.transformed.Qvalue = 0.66667 * (moduleparams.Measured.Current.PhaseA * cosf(moduleparams.AngleRad.Electrical) + moduleparams.Measured.Current.PhaseB * cosf(moduleparams.AngleRad.Electrical - 0.66667 * PI /*2*PI/3*/) + moduleparams.Measured.Current.PhaseC * cosf(moduleparams.AngleRad.Electrical + 0.66667 * PI /*2*PI/3*/));
#if 0
    moduleparams.PhaseCurrent.ZeroValue = 0.66667*0.5*(moduleparams.Measured.Current.PhaseA\
            +moduleparams.Measured.Current.PhaseB\
            +moduleparams.Measured.Current.PhaseC);
#endif
    //ids = 2/3*(ias*sin(ref_frame_position)+ibs*sin(ref_frame_position-2*pi/3)+ics*sin(ref_frame_position+2*pi/3));
    //iqs =  2/3*(ias*cos(ref_frame_position)+ibs*cos(ref_frame_position-2*pi/3)+ics*cos(ref_frame_position+2*pi/3));
    //i0 = 2/3*1/2*(ias+ibs+ics);
}
static inline void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount)
{
    moduleparams.CurrentHorizon[indexcount].VdPrediction = moduleparams.FirstHorizon[indexcount].VdPrediction;  // First horizon prediction on the previous horizon is our current value now
    moduleparams.CurrentHorizon[indexcount].VqPrediction = moduleparams.FirstHorizon[indexcount].VqPrediction;  // First horizon prediction on the previous horizon is our current value now

    moduleparams.FirstHorizon[indexcount].IdPrediction = moduleparams.Measured.Current.transformed.Dvalue + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.CurrentHorizon[indexcount].VdPrediction / M2_LS_VALUE - M2_RS_VALUE / M2_LS_VALUE * moduleparams.Measured.Current.transformed.Dvalue + M2_LS_VALUE / M2_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Qvalue);
    moduleparams.FirstHorizon[indexcount].IqPrediction = moduleparams.Measured.Current.transformed.Qvalue + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.CurrentHorizon[indexcount].VqPrediction / M2_LS_VALUE - M2_RS_VALUE / M2_LS_VALUE * moduleparams.Measured.Current.transformed.Qvalue - M2_LS_VALUE / M2_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Dvalue - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / M2_LS_VALUE);
}
static inline void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount)
{
    moduleparams.FirstHorizon[indexcount].VdPrediction = M2_VD_VQ_KP * (moduleparams.Reference.Id -  moduleparams.FirstHorizon[indexcount].IdPrediction) * (1.0 + M2_VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Dvalue - POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * M2_LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction;
    moduleparams.FirstHorizon[indexcount].VqPrediction = M2_VD_VQ_KP * (moduleparams.Reference.Iq -  moduleparams.FirstHorizon[indexcount].IqPrediction) * (1.0 + M2_VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Qvalue + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * (M2_LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction+ FLUX_VALUE);

    moduleparams.SecondHorizon[indexcount].Magnitude = sqrtf(powf(moduleparams.FirstHorizon[indexcount].VdPrediction,2) + powf(moduleparams.FirstHorizon[indexcount].VqPrediction,2));

    moduleparams.SecondHorizon[indexcount].Valfa = sinf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VdPrediction + cosf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VqPrediction;
    moduleparams.SecondHorizon[indexcount].Vbeta =-cosf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VdPrediction + sinf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VqPrediction;

    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad = atan2f(moduleparams.SecondHorizon[indexcount].Vbeta, moduleparams.SecondHorizon[indexcount].Valfa) + 4.0*PI + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * (1.0/moduleparams.OptimizationFsw[indexcount]+1.0/M2_FswDecided);
    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod = fmodf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad, PI / 3.0);

    moduleparams.SecondHorizon[indexcount].ma = sqrtf(3)*moduleparams.SecondHorizon[indexcount].Magnitude / (moduleparams.Measured.Voltage.Vdc );

    moduleparams.SecondHorizon[indexcount].SvpwmT1 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(PI / 3.0 - moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT2 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT0 = (1.0 / moduleparams.OptimizationFsw[indexcount]) - moduleparams.SecondHorizon[indexcount].SvpwmT1 - moduleparams.SecondHorizon[indexcount].SvpwmT2;

    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 = -moduleparams.SecondHorizon[indexcount].Magnitude;

    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 * moduleparams.SecondHorizon[indexcount].SvpwmT1 / M2_LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 * moduleparams.SecondHorizon[indexcount].SvpwmT2 / M2_LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0 = -moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 * moduleparams.SecondHorizon[indexcount].SvpwmT0 / M2_LS_VALUE;

    moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction = moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0;

    moduleparams.SecondHorizon[indexcount].IdPrediction = moduleparams.FirstHorizon[indexcount].IdPrediction + (0.5 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.FirstHorizon[indexcount].VdPrediction / M2_LS_VALUE - M2_RS_VALUE / M2_LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction + M2_LS_VALUE / M2_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IqPrediction);
    moduleparams.SecondHorizon[indexcount].IqPrediction = moduleparams.FirstHorizon[indexcount].IqPrediction + (0.5 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.FirstHorizon[indexcount].VqPrediction / M2_LS_VALUE - M2_RS_VALUE / M2_LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction - M2_LS_VALUE / M2_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IdPrediction - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / M2_LS_VALUE);

    /*TODO add protection to cost*/
    moduleparams.Cost[indexcount] = IQRIPPLECOEFF * powf(moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction / IQ_RATED, 2) + IQREFCOEFF * powf((moduleparams.Reference.Iq - moduleparams.SecondHorizon[indexcount].IqPrediction) / IQ_RATED, 2) + IDREFCOEFF * powf((moduleparams.Reference.Id - moduleparams.SecondHorizon[indexcount].IdPrediction)/IQ_RATED, 2) + FSWCOEFF * moduleparams.OptimizationFsw[indexcount] / OPT_FSW_MAX;
    if (moduleparams.Cost[indexcount] < moduleparams.MinimumCostValue)
    {
        moduleparams.MinimumCostValue = moduleparams.Cost[indexcount];
        moduleparams.MinimumCostIndex = indexcount;
    }
}
