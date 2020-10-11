#include <math.h>
#include <limits.h>
#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>


#include "CustomTypeDefs.h"
#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"

/*      Before starting to using these code, followings must be tested
 * 1-   ADC     readings
 * 2-   Encoder reading
 * 3-   Control loop operation. (can be compared with the results of the algorithm.)
 * */

/*TODO s
 * 1-   using comparator module, protection will be done on the phase currents for extreme conditions
 * 2-   Initialization routine for rotor alignment is needed
 *
 * */


ModuleParameters    Module1_Parameters;
PID_Parameters      PI_iq;
unsigned int        StartOperation  = 0; /*if this is 0, then no operation will be performed. It will be set inside the debugger*/
unsigned long int   BlankCounter    = 0;
unsigned int        OperationMode   = 0;  /*this will be changed */


__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/
__interrupt void epwm1_isr(void);       /*prototype of the ISR functions*/

void InitializationRoutine(void);       /*all modules and gpios are initialized inside this function.*/
void InitializeEpwm1Registers(void);
void InitializeEpwm2Registers(void);
void InitializeADCs(void);
void SetupGPIOs(void);
void EQEPSetup(void);
inline void Run_PI_Controller(PID_Parameters &pidparams);
inline void CalculateParkTransform(ModuleParameters& moduleparams);
static inline void ExecuteFirstPrediction(ModuleParameters& moduleparams, unsigned int indexcount);
static inline void ExecuteSecondPrediction(ModuleParameters& moduleparams, unsigned int indexcount);


void GetEncoderReadings(ModuleParameters& moduleparams);
void GetAdcReadings(ModuleParameters& moduleparams);
void SetupCmpssProtections(void);
/**
 * main.c
 */
Uint32 Epwm1Counter = 0;
int main(void)
{


    InitSysCtrl();  /*initialize the peripheral clocks*/

    EALLOW;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0; // EPWM Clock Divide Select: /1 of PLLSYSCLK
    EDIS;

    InitPieCtrl();  /*initialize the PIE table (interrupt related)*/
    IER = 0x0000;   /*clear the Interrupt Enable Register   (IER)*/
    IFR = 0x0000;   /*clear the Interrupt Flag Register     (IFR)*/
    InitPieVectTable();

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;   /*stop the TimeBase clock for later synchronization*/
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 0;  /*stop the global TimeBase clock for later synchronization*/
    EDIS;

    while(StartOperation==0)
    {
        BlankCounter++;
        DELAY_US(10);
    }

    /*Initialize cpu timers*/
    InitCpuTimers();
    ConfigCpuTimer(&CpuTimer0, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer1, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer2, 200, 1000000); //1 seconds
    CpuTimer0Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer1Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer2Regs.TCR.all = 0x4000; // enable cpu timer interrupt

    InitializationRoutine();


    EALLOW;
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.EPWM1_INT = &epwm1_isr;        /*specify the interrupt service routine (ISR) address to the PIE table*/
    EDIS;
    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 interrupt*/
    IER |= M_INT3;  /*Enable the PIE group of Epwm1 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1;  /*Enable the 1st interrupt of the Group 3, which is for epwm1 interrupt*/

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;   /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1;  /*start the global TimeBase clock */
    EDIS;

    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global realtime interrupt DBGM



    while(1)
    {

    }
    return 0;
}
__interrupt void cpu_timer0_isr(void)
{
    CpuTimer0.InterruptCount++;
    GpioDataRegs.GPATOGGLE.bit.GPIO31 = 1;
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;
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
void InitializeEpwm1Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    /*TODO use shadow registers on both CMPA and PRDLD*/
    /*TODO check which one of these protected with EALLOW EDIS*/
    EPwm1Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm1Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm1Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm1Regs.TBCTL.bit.SYNCOSEL = TB_CTR_ZERO;
    EPwm1Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm1Regs.TBCTL.bit.PHSEN = TB_DISABLE;
    EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm1Regs.TBCTL2.bit.PRDLDSYNC = 0; /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm1Regs.TBCTL2.bit.SYNCOSELX = 0; /*this is unnecessary*/
    EPwm1Regs.TBCTL2.bit.OSHTSYNC = 0;  /*this is unnecessary*/
    EPwm1Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm1Regs.TBCTR = 0;

    EPwm1Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm1Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm1Regs.TBSTS.bit.CTRDIR = 0;  /*this is unnecessary*/

    EPwm1Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm1Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm1Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm1Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm1Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm1Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0   /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm1Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm1Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm1Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm1Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm1Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm1Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    /*TODO check those deadtimes with an oscilloscope*/
    /*TODO check how do we apply the duty cycles*/
    EPwm1Regs.DBCTL.all = 0;
    EPwm1Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE;          /*deadband is set for both fed and red*/
    EPwm1Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;               /*EPWmxB is inverted*/
    EPwm1Regs.DBFED.bit.DBFED = DEADBAND_FED/SYSCLKPERIOD;
    EPwm1Regs.DBRED.bit.DBRED = DEADBAND_RED/SYSCLKPERIOD;
    EPwm1Regs.DBCTL2.all = 0;                               /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm1Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm1Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm1Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm1Regs.HRCNFG.all = 0;
    EPwm1Regs.HRCNFG2.all = 0;
    EPwm1Regs.HRPWR.bit.CALPWRON = 0;
    EPwm1Regs.HRPCTL.all = 0;

    EPwm1Regs.AQCTLA.all = 0;
    EPwm1Regs.AQCTLA.bit.CAU = AQ_SET;
    EPwm1Regs.AQCTLA.bit.CAD = AQ_CLEAR;

    EPwm1Regs.TBPHS.bit.TBPHS = 0;

    EPwm1Regs.TBPRD = SYSCLKFREQUENCY/ (INITIALPWMFREQ*2);
    EPwm1Regs.CMPA.bit.CMPA = EPwm1Regs.TBPRD / 2;

    /*TODO how to do tripzone?, how are we going to do the protection?
     * consider when the inverter arrives*/
    EPwm1Regs.ETSEL.bit.SOCAEN = 1; /*enable EPWMxSOCA signal*/
    EPwm1Regs.ETSEL.bit.SOCASEL = 1;
    EPwm1Regs.ETSEL.bit.INTEN = 1;  /*enable pwm interrupt*/
    EPwm1Regs.ETSEL.bit.INTSEL = 1; /*interrupt occurs when TBCTR = 0*/

    EPwm1Regs.ETPS.all = 0x00;
    EPwm1Regs.ETPS.bit.INTPRD = 1;  // Generate INT on first event
    EPwm1Regs.ETPS.bit.SOCAPRD = 1;  // Generate SOC on first event


}
void InitializeEpwm2Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    /*TODO use shadow registers on both CMPA and PRDLD*/
    /*TODO check which one of these protected with EALLOW EDIS*/
    EPwm2Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm2Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm2Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    EPwm2Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm2Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm2Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm2Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm2Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm2Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm2Regs.TBCTL2.bit.PRDLDSYNC = 0; /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm2Regs.TBCTL2.bit.SYNCOSELX = 0; /*this is unnecessary*/
    EPwm2Regs.TBCTL2.bit.OSHTSYNC = 0;  /*this is unnecessary*/
    EPwm2Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm2Regs.TBCTR = 0;

    EPwm2Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm2Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm2Regs.TBSTS.bit.CTRDIR = 0;  /*this is unnecessary*/

    EPwm2Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm2Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm2Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm2Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm2Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm2Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0   /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm2Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm2Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm2Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm2Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm2Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm2Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    /*TODO check those deadtimes with an oscilloscope*/
    /*TODO check how do we apply the duty cycles*/
    EPwm2Regs.DBCTL.all = 0;
    EPwm2Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE;          /*deadband is set for both fed and red*/
    EPwm2Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;               /*EPWmxB is inverted*/
    EPwm2Regs.DBFED.bit.DBFED = DEADBAND_FED/SYSCLKPERIOD;
    EPwm2Regs.DBRED.bit.DBRED = DEADBAND_RED/SYSCLKPERIOD;
    EPwm2Regs.DBCTL2.all = 0;                               /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm2Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm2Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm2Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm2Regs.HRCNFG.all = 0;
    EPwm2Regs.HRCNFG2.all = 0;
    EPwm2Regs.HRPWR.bit.CALPWRON = 0;
    EPwm2Regs.HRPCTL.all = 0;

    EPwm2Regs.AQCTLA.all = 0;
    EPwm2Regs.AQCTLA.bit.CAU = AQ_SET;
    EPwm2Regs.AQCTLA.bit.CAD = AQ_CLEAR;

    EPwm2Regs.TBPHS.bit.TBPHS = 0;

    EPwm2Regs.TBPRD = SYSCLKFREQUENCY/ (INITIALPWMFREQ*2);
    EPwm2Regs.CMPA.bit.CMPA = EPwm2Regs.TBPRD / 2;
}
void InitializeEpwm3Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    /*TODO use shadow registers on both CMPA and PRDLD*/
    /*TODO check which one of these protected with EALLOW EDIS*/
    EPwm3Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm3Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm3Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    EPwm3Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm3Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm3Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm3Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm3Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm3Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm3Regs.TBCTL2.bit.PRDLDSYNC = 0; /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm3Regs.TBCTL2.bit.SYNCOSELX = 0; /*this is unnecessary*/
    EPwm3Regs.TBCTL2.bit.OSHTSYNC = 0;  /*this is unnecessary*/
    EPwm3Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm3Regs.TBCTR = 0;

    EPwm3Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm3Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm3Regs.TBSTS.bit.CTRDIR = 0;  /*this is unnecessary*/

    EPwm3Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm3Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm3Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm3Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm3Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm3Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0   /*CMPC or CMPD will not be used, therefore they left uninitialized*/
    EPwm3Regs.CMPCTL2.bit.LOADDSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm3Regs.CMPCTL2.bit.LOADCSYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm3Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm3Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm3Regs.CMPCTL2.bit.SHDWDMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL2.bit.SHDWCMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL2.bit.LOADDMODE = CC_CTR_ZERO;
    EPwm3Regs.CMPCTL2.bit.LOADCMODE = CC_CTR_ZERO;
#endif

    /*TODO check those deadtimes with an oscilloscope*/
    /*TODO check how do we apply the duty cycles*/
    EPwm3Regs.DBCTL.all = 0;
    EPwm3Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE;          /*deadband is set for both fed and red*/
    EPwm3Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;               /*EPWmxB is inverted*/
    EPwm3Regs.DBFED.bit.DBFED = DEADBAND_FED/SYSCLKPERIOD;
    EPwm3Regs.DBRED.bit.DBRED = DEADBAND_RED/SYSCLKPERIOD;
    EPwm3Regs.DBCTL2.all = 0;                               /*has no useful setting*/

    /*action qualifier settings will be set once, therefore shadowing is unnecessary.*/
    EPwm3Regs.AQCTL.all = 0;

    /*No trip zone is set for now*/
    EPwm3Regs.AQTSRCSEL.all = 0;

    /*NO chopping is needed*/
    EPwm3Regs.PCCTL.all = 0;

    /*HRPWM will not be used*/
    EPwm3Regs.HRCNFG.all = 0;
    EPwm3Regs.HRCNFG2.all = 0;
    EPwm3Regs.HRPWR.bit.CALPWRON = 0;
    EPwm3Regs.HRPCTL.all = 0;

    EPwm3Regs.AQCTLA.all = 0;
    EPwm3Regs.AQCTLA.bit.CAU = AQ_SET;
    EPwm3Regs.AQCTLA.bit.CAD = AQ_CLEAR;

    EPwm3Regs.TBPHS.bit.TBPHS = 0;

    EPwm3Regs.TBPRD = SYSCLKFREQUENCY/ (INITIALPWMFREQ*2);
    EPwm3Regs.CMPA.bit.CMPA = EPwm3Regs.TBPRD / 2;
}
__interrupt void epwm1_isr(void)
{
    /*This will be the main control isr*/
    /*check ADCBSY register if  it makes here wait*/
    /*TODO, need to consider alignment scenario*/
    Epwm1Counter++;



    GetEncoderReadings(Module1_Parameters);

    GetAdcReadings(Module1_Parameters);

    CalculateParkTransform(Module1_Parameters);

    PI_iq.Input = Module1_Parameters.AngularSpeed.Mechanical;
    Run_PI_Controller(PI_iq);
    Module1_Parameters.Reference.Iq = PI_iq.Output;
    Module1_Parameters.Reference.Id = IDREF;

    if(OperationMode==MODE_RUN)
    {

    }
    else if (OperationMode==MODE_ALIGN)
    {

    }



    Module1_Parameters.MinimumCostValue = (float)1e35;

    ExecuteFirstPrediction(Module1_Parameters,0);
    ExecuteSecondPrediction(Module1_Parameters,0);
    ExecuteFirstPrediction(Module1_Parameters,1);
    ExecuteSecondPrediction(Module1_Parameters,1);
    ExecuteFirstPrediction(Module1_Parameters,2);
    ExecuteSecondPrediction(Module1_Parameters,2);
    ExecuteFirstPrediction(Module1_Parameters,3);
    ExecuteSecondPrediction(Module1_Parameters,3);
    ExecuteFirstPrediction(Module1_Parameters,4);
    ExecuteSecondPrediction(Module1_Parameters,4);
    ExecuteFirstPrediction(Module1_Parameters,5);
    ExecuteSecondPrediction(Module1_Parameters,5);
    ExecuteFirstPrediction(Module1_Parameters,6);
    ExecuteSecondPrediction(Module1_Parameters,6);
    ExecuteFirstPrediction(Module1_Parameters,7);
    ExecuteSecondPrediction(Module1_Parameters,7);
    ExecuteFirstPrediction(Module1_Parameters,8);
    ExecuteSecondPrediction(Module1_Parameters,8);
    ExecuteFirstPrediction(Module1_Parameters,9);
    ExecuteSecondPrediction(Module1_Parameters,9);

    EPwm1Regs.ETCLR.bit.INT = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}
void SetupGPIOs(void)
{
    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO0 = 1;    // Disable pull-up on GPIO0 (EPWM1A)
    GpioCtrlRegs.GPAPUD.bit.GPIO1 = 1;    // Disable pull-up on GPIO1 (EPWM1B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO0 = 0;  // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO1 = 0;  // Configure GPIO1 as EPWM1B
    GpioCtrlRegs.GPAMUX1.bit.GPIO0 = 1;   // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAMUX1.bit.GPIO1 = 1;   // Configure GPIO1 as EPWM1B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO2 = 1;    // Disable pull-up on GPIO2 (EPWM2A)
    GpioCtrlRegs.GPAPUD.bit.GPIO3 = 1;    // Disable pull-up on GPIO3 (EPWM2B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO2 = 0;  // Configure GPIO2 as EPWM2A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO3 = 0;  // Configure GPIO3 as EPWM2B
    GpioCtrlRegs.GPAMUX1.bit.GPIO2 = 1;   // Configure GPIO2 as EPWM2A
    GpioCtrlRegs.GPAMUX1.bit.GPIO3 = 1;   // Configure GPIO3 as EPWM2B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO4 = 1;    // Disable pull-up on GPIO4 (EPWM3A)
    GpioCtrlRegs.GPAPUD.bit.GPIO5 = 1;    // Disable pull-up on GPIO5 (EPWM3B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO4 = 0;  // Configure GPIO4 as EPWM3A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO5 = 0;  // Configure GPIO5 as EPWM3B
    GpioCtrlRegs.GPAMUX1.bit.GPIO4 = 1;   // Configure GPIO4 as EPWM3A
    GpioCtrlRegs.GPAMUX1.bit.GPIO5 = 1;   // Configure GPIO5 as EPWM3B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAGMUX2.bit.GPIO31 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO31 = 0;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO34 = 0;
    GpioCtrlRegs.GPBMUX1.bit.GPIO34 = 0;
    GpioCtrlRegs.GPADIR.bit.GPIO31 = 1;
    GpioCtrlRegs.GPBDIR.bit.GPIO34 = 1;
    GpioDataRegs.GPASET.bit.GPIO31 = 1;
    GpioDataRegs.GPBCLEAR.bit.GPIO34 = 1;
    EDIS;

}

inline void Run_PI_Controller(PID_Parameters &pidparams)
{
    pidparams.Output = pidparams.Output_prev + pidparams.P_coeff*(pidparams.Input-pidparams.Input_prev)+ (pidparams.Ts)/2.0*pidparams.I_coeff*(pidparams.Input+pidparams.Input_prev);
    if(pidparams.Output>pidparams.SaturationMax)
    {
        pidparams.Output = pidparams.SaturationMax;
    }
    if(pidparams.Output<pidparams.SaturationMin)
    {
        pidparams.Output = pidparams.SaturationMin;
    }
    pidparams.Output_prev = pidparams.Output;
    pidparams.Input_prev = pidparams.Input;
}
inline void CalculateParkTransform(ModuleParameters& moduleparams)
{

    moduleparams.Measured.Current.transformed.Dvalue = 0.66667*(moduleparams.Measured.Current.PhaseA*sinf(moduleparams.Angle.Electrical)\
            +moduleparams.Measured.Current.PhaseB*sinf(moduleparams.Angle.Electrical-0.66667*PI/*2*PI/3*/)\
            +moduleparams.Measured.Current.PhaseC*sinf(moduleparams.Angle.Electrical+0.66667*PI/*2*PI/3*/));
    moduleparams.Measured.Current.transformed.Qvalue = 0.66667*(moduleparams.Measured.Current.PhaseA*cosf(moduleparams.Angle.Electrical)\
            +moduleparams.Measured.Current.PhaseB*cosf(moduleparams.Angle.Electrical-0.66667*PI/*2*PI/3*/)\
            +moduleparams.Measured.Current.PhaseC*cosf(moduleparams.Angle.Electrical+0.66667*PI/*2*PI/3*/));
#if 0
    moduleparams.PhaseCurrent.ZeroValue = 0.66667*0.5*(moduleparams.Measured.Current.PhaseA\
            +moduleparams.Measured.Current.PhaseB\
            +moduleparams.Measured.Current.PhaseC);
#endif
    //ids = 2/3*(ias*sin(ref_frame_position)+ibs*sin(ref_frame_position-2*pi/3)+ics*sin(ref_frame_position+2*pi/3));
    //iqs =  2/3*(ias*cos(ref_frame_position)+ibs*cos(ref_frame_position-2*pi/3)+ics*cos(ref_frame_position+2*pi/3));
    //i0 = 2/3*1/2*(ias+ibs+ics);
}
static inline void ExecuteFirstPrediction(ModuleParameters& moduleparams,unsigned int indexcount)
{

    moduleparams.FirstHorizon[indexcount].Vd = RS_VALUE*moduleparams.Measured.Current.transformed.Dvalue \
            + LS_VALUE*moduleparams.OptimizationFsw[indexcount]*(moduleparams.Reference.Id-moduleparams.Measured.Current.transformed.Dvalue) \
            - POLEPAIRS*moduleparams.AngularSpeed.Mechanical*LS_VALUE*moduleparams.Measured.Current.transformed.Qvalue;
    moduleparams.FirstHorizon[indexcount].Vq = RS_VALUE*moduleparams.Measured.Current.transformed.Qvalue \
            + LS_VALUE*moduleparams.OptimizationFsw[indexcount]*(moduleparams.Reference.Iq-moduleparams.Measured.Current.transformed.Qvalue) \
            + POLEPAIRS*moduleparams.AngularSpeed.Mechanical*(LS_VALUE*moduleparams.Measured.Current.transformed.Dvalue+FLUX_VALUE);
#if 0   /*ripple prediction is unnecessary for the first horizon*/
    moduleparams.FirstHorizon[indexcount].Magnitude = sqrtf(moduleparams.FirstHorizon[indexcount].Vd*moduleparams.FirstHorizon[indexcount].Vd\
                                                          + moduleparams.FirstHorizon[indexcount].Vq*moduleparams.FirstHorizon[indexcount].Vq);

    moduleparams.FirstHorizon[indexcount].Valfa = sinf(moduleparams.Angle.Electrical)*moduleparams.FirstHorizon[indexcount].Vd+cosf(moduleparams.Angle.Electrical)*moduleparams.FirstHorizon[indexcount].Vq;
    moduleparams.FirstHorizon[indexcount].Vbeta =-cosf(moduleparams.Angle.Electrical)*moduleparams.FirstHorizon[indexcount].Vd+sinf(moduleparams.Angle.Electrical)*moduleparams.FirstHorizon[indexcount].Vq;

    moduleparams.FirstHorizon[indexcount].VoltageVectorAngleRad = atan2f(moduleparams.FirstHorizon[indexcount].Vbeta,moduleparams.FirstHorizon[indexcount].Valfa);
    moduleparams.FirstHorizon[indexcount].VoltageVectorAngleRad_Mod = fmodf(moduleparams.FirstHorizon[indexcount].VoltageVectorAngleRad,PI/3.0);

    moduleparams.FirstHorizon[indexcount].ma = moduleparams.FirstHorizon[indexcount].Magnitude/(moduleparams.Measured.Voltage.Vdc/sqrtf(3));


    moduleparams.FirstHorizon[indexcount].SvpwmT1 = (1.0/moduleparams.OptimizationFsw[indexcount])*moduleparams.FirstHorizon[indexcount].ma*sinf(PI/3.0-moduleparams.FirstHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.FirstHorizon[indexcount].SvpwmT2 = (1.0/moduleparams.OptimizationFsw[indexcount])*moduleparams.FirstHorizon[indexcount].ma*sinf(moduleparams.FirstHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.FirstHorizon[indexcount].SvpwmT0 = (1.0/moduleparams.OptimizationFsw[indexcount]) -moduleparams.FirstHorizon[indexcount].SvpwmT1-moduleparams.FirstHorizon[indexcount].SvpwmT2;

    moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT1 = 0.66667*moduleparams.Measured.Voltage.Vdc - moduleparams.FirstHorizon[indexcount].Magnitude;
    moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT2 = 0.66667*moduleparams.Measured.Voltage.Vdc - moduleparams.FirstHorizon[indexcount].Magnitude;
    moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT0 = - moduleparams.FirstHorizon[indexcount].Magnitude;

    moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT1 = moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT1*moduleparams.FirstHorizon[indexcount].SvpwmT1/LS_VALUE;
    moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT2 = moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT2*moduleparams.FirstHorizon[indexcount].SvpwmT2/LS_VALUE;
    moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT0 = -moduleparams.FirstHorizon[indexcount].VoltageDuring_SvpwmT0*moduleparams.FirstHorizon[indexcount].SvpwmT0/LS_VALUE;


    moduleparams.FirstHorizon[indexcount].Iq_Ripple_Prediction = moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT1+moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT2+moduleparams.FirstHorizon[indexcount].Iq_Delta_DuringT0;

#endif
    moduleparams.FirstHorizon[indexcount].IqPrediction = moduleparams.Measured.Current.transformed.Dvalue + (1.0/moduleparams.OptimizationFsw[indexcount])*(moduleparams.FirstHorizon[indexcount].Vd/LS_VALUE - RS_VALUE/LS_VALUE*moduleparams.Measured.Current.transformed.Dvalue+LS_VALUE/LS_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical*moduleparams.Measured.Current.transformed.Qvalue);
    moduleparams.FirstHorizon[indexcount].IdPrediction = moduleparams.Measured.Current.transformed.Qvalue + (1.0/moduleparams.OptimizationFsw[indexcount])*(moduleparams.FirstHorizon[indexcount].Vq/LS_VALUE - RS_VALUE/LS_VALUE*moduleparams.Measured.Current.transformed.Qvalue+LS_VALUE/LS_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical*moduleparams.Measured.Current.transformed.Dvalue-FLUX_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical/LS_VALUE);



}
static inline void ExecuteSecondPrediction(ModuleParameters& moduleparams,unsigned int indexcount)
{
    moduleparams.SecondHorizon[indexcount].Vd = RS_VALUE*moduleparams.Measured.Current.transformed.Dvalue \
            + LS_VALUE*moduleparams.OptimizationFsw[indexcount]*(moduleparams.Reference.Id-moduleparams.Measured.Current.transformed.Dvalue) \
            - POLEPAIRS*moduleparams.AngularSpeed.Mechanical*LS_VALUE*moduleparams.Measured.Current.transformed.Qvalue;
    moduleparams.SecondHorizon[indexcount].Vq = RS_VALUE*moduleparams.Measured.Current.transformed.Qvalue \
            + LS_VALUE*moduleparams.OptimizationFsw[indexcount]*(moduleparams.Reference.Iq-moduleparams.Measured.Current.transformed.Qvalue) \
            + POLEPAIRS*moduleparams.AngularSpeed.Mechanical*(LS_VALUE*moduleparams.Measured.Current.transformed.Dvalue+FLUX_VALUE);

    moduleparams.SecondHorizon[indexcount].Magnitude = sqrtf(moduleparams.SecondHorizon[indexcount].Vd*moduleparams.SecondHorizon[indexcount].Vd\
                                                          + moduleparams.SecondHorizon[indexcount].Vq*moduleparams.SecondHorizon[indexcount].Vq);

    moduleparams.SecondHorizon[indexcount].Valfa = sinf(moduleparams.Angle.Electrical)*moduleparams.SecondHorizon[indexcount].Vd+cosf(moduleparams.Angle.Electrical)*moduleparams.SecondHorizon[indexcount].Vq;
    moduleparams.SecondHorizon[indexcount].Vbeta =-cosf(moduleparams.Angle.Electrical)*moduleparams.SecondHorizon[indexcount].Vd+sinf(moduleparams.Angle.Electrical)*moduleparams.SecondHorizon[indexcount].Vq;

    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad = atan2f(moduleparams.SecondHorizon[indexcount].Vbeta,moduleparams.SecondHorizon[indexcount].Valfa);
    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod = fmodf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad,PI/3.0);

    moduleparams.SecondHorizon[indexcount].ma = moduleparams.SecondHorizon[indexcount].Magnitude/(moduleparams.Measured.Voltage.Vdc/sqrtf(3));


    moduleparams.SecondHorizon[indexcount].SvpwmT1 = (1.0/moduleparams.OptimizationFsw[indexcount])*moduleparams.SecondHorizon[indexcount].ma*sinf(PI/3.0-moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT2 = (1.0/moduleparams.OptimizationFsw[indexcount])*moduleparams.SecondHorizon[indexcount].ma*sinf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT0 = (1.0/moduleparams.OptimizationFsw[indexcount]) -moduleparams.SecondHorizon[indexcount].SvpwmT1-moduleparams.SecondHorizon[indexcount].SvpwmT2;

    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 = 0.66667*moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 = 0.66667*moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 = - moduleparams.SecondHorizon[indexcount].Magnitude;

    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1*moduleparams.SecondHorizon[indexcount].SvpwmT1/LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2*moduleparams.SecondHorizon[indexcount].SvpwmT2/LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0 = -moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0*moduleparams.SecondHorizon[indexcount].SvpwmT0/LS_VALUE;


    moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction = moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1+moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2+moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0;


    moduleparams.SecondHorizon[indexcount].IqPrediction = moduleparams.Measured.Current.transformed.Dvalue + (1.0/moduleparams.OptimizationFsw[indexcount])*(moduleparams.SecondHorizon[indexcount].Vd/LS_VALUE - RS_VALUE/LS_VALUE*moduleparams.Measured.Current.transformed.Dvalue+LS_VALUE/LS_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical*moduleparams.Measured.Current.transformed.Qvalue);
    moduleparams.SecondHorizon[indexcount].IdPrediction = moduleparams.Measured.Current.transformed.Qvalue + (1.0/moduleparams.OptimizationFsw[indexcount])*(moduleparams.SecondHorizon[indexcount].Vq/LS_VALUE - RS_VALUE/LS_VALUE*moduleparams.Measured.Current.transformed.Qvalue+LS_VALUE/LS_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical*moduleparams.Measured.Current.transformed.Dvalue-FLUX_VALUE*POLEPAIRS*moduleparams.AngularSpeed.Mechanical/LS_VALUE);

    /*TODO add protection to cost*/
    moduleparams.Cost[indexcount] = IQRIPPLECOEFF*powf(moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction/IQ_RATED,2)\
            + IQREFCOEFF*powf((moduleparams.Reference.Iq-moduleparams.SecondHorizon[indexcount].IqPrediction)/IQ_RATED,2)\
            + IDREFCOEFF*powf((moduleparams.Reference.Id-moduleparams.SecondHorizon[indexcount].IdPrediction),2)\
            + FSWCOEFF*moduleparams.OptimizationFsw[indexcount]/OPT_FSW_MAX;
    if(moduleparams.Cost[indexcount]<moduleparams.MinimumCostValue)
    {
        moduleparams.MinimumCostValue = moduleparams.Cost[indexcount];
        moduleparams.MinimumCostIndex = indexcount;
    }
}
void InitializationRoutine(void)
{
    PI_iq.I_coeff       = I_COEFFICIENT;
    PI_iq.P_coeff       = P_COEFFICIENT;
    PI_iq.Ts            = PI_TS_COEFFICIENT;
    PI_iq.Input         = 22.1;
    PI_iq.Input_prev    = 21.5;
    PI_iq.Output        = 56.234;
    PI_iq.Output_prev   = 234.234;
    PI_iq.SaturationMax = 2.0*IQ_RATED;
    PI_iq.SaturationMax = -2.0*IQ_RATED;
    SetupGPIOs();
    InitializeEpwm1Registers();
    InitializeEpwm2Registers();
    InitializeEpwm3Registers();
    InitializeADCs();
    SetupCmpssProtections();
    EQEPSetup();
}
void InitializeADCs(void)
{
    EALLOW;
    AdcaRegs.ADCCTL2.bit.PRESCALE = 6;      //ADCCLK = InputClokc/1.0
    AdcbRegs.ADCCTL2.bit.PRESCALE = 6;      //ADCCLK = InputClokc/1.0
    AdccRegs.ADCCTL2.bit.PRESCALE = 6;      //ADCCLK = InputClokc/1.0
    AdcdRegs.ADCCTL2.bit.PRESCALE = 6;      //ADCCLK = InputClokc/1.0

    AdcaRegs.ADCCTL1.all = 0x00;            // ADC Control 1 Register
    AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdcbRegs.ADCCTL1.all = 0x00;            // ADC Control 1 Register
    AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdccRegs.ADCCTL1.all = 0x00;            // ADC Control 1 Register
    AdccRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdccRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdcdRegs.ADCCTL1.all = 0x00;            // ADC Control 1 Register
    AdcdRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcdRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdcaRegs.ADCCTL2.bit.SIGNALMODE = 0;    // (Single ended ADC)TODO Verify these
    AdcbRegs.ADCCTL2.bit.SIGNALMODE = 0;    // (Single ended ADC)TODO Verify these
    AdccRegs.ADCCTL2.bit.SIGNALMODE = 0;    // (Single ended ADC)TODO Verify these
    AdcdRegs.ADCCTL2.bit.SIGNALMODE = 0;    // (Single ended ADC)TODO Verify these
    /*TODO, adcsetmode might be used?*/

    AdcaRegs.ADCCTL2.bit.RESOLUTION = 0;    // 12 bit ADC results (TODO Verify these)
    AdcbRegs.ADCCTL2.bit.RESOLUTION = 0;    // 12 bit ADC results (TODO Verify these)    
    AdccRegs.ADCCTL2.bit.RESOLUTION = 0;    // 12 bit ADC results (TODO Verify these)
    AdcdRegs.ADCCTL2.bit.RESOLUTION = 0;    // 12 bit ADC results (TODO Verify these)



    AdcaRegs.ADCBURSTCTL.all = 0x00;        // ADC Burst Control Register
    AdcaRegs.ADCBURSTCTL.bit.BURSTEN = 0;   // Burst mode is disabled

    AdcbRegs.ADCBURSTCTL.all = 0x00;        // ADC Burst Control Register
    AdcbRegs.ADCBURSTCTL.bit.BURSTEN = 0;   // Burst mode is disabled

    AdccRegs.ADCBURSTCTL.all = 0x00;        // ADC Burst Control Register
    AdccRegs.ADCBURSTCTL.bit.BURSTEN = 0;   // Burst mode is disabled

    AdcdRegs.ADCBURSTCTL.all = 0x00;        // ADC Burst Control Register
    AdcdRegs.ADCBURSTCTL.bit.BURSTEN = 0;   // Burst mode is disabled


    AdcaRegs.ADCINTSEL1N2.all = 0x00;       // ADC Interrupt 1 and 2 Selection Register
    AdcaRegs.ADCINTSEL1N2.bit.INT2CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL1N2.bit.INT2E = 0;    // ADCINT2 disabled.
    AdcaRegs.ADCINTSEL1N2.bit.INT2SEL = 0;  // No interrupt selected.
    AdcaRegs.ADCINTSEL1N2.bit.INT1CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL1N2.bit.INT1E = 0;    // ADCINT1 disabled.
    AdcaRegs.ADCINTSEL1N2.bit.INT1SEL = 0;  // No interrupt selected.
    AdcaRegs.ADCINTSEL3N4.all = 0x00;       // ADC Interrupt 3 and 4 Selection Register
    AdcaRegs.ADCINTSEL3N4.bit.INT4CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL3N4.bit.INT4E = 0;    // ADCINT4 disabled.
    AdcaRegs.ADCINTSEL3N4.bit.INT4SEL = 0;  // No interrupt selected.
    AdcaRegs.ADCINTSEL3N4.bit.INT3CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL3N4.bit.INT3E = 0;    // ADCINT3 disabled.
    AdcaRegs.ADCINTSEL3N4.bit.INT3SEL = 0;  // No interrupt selected.
    AdcaRegs.ADCSOCPRICTL.all = 0x00;       // ADC SOC Priority Control Register
    AdcaRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0;  // the SOC is handled in round robin arbitration

    AdcbRegs.ADCINTSEL1N2.all = 0x00;       // ADC Interrupt 1 and 2 Selection Register
    AdcbRegs.ADCINTSEL1N2.bit.INT2CONT = 0; // Continous mode is disabled
    AdcbRegs.ADCINTSEL1N2.bit.INT2E = 0;    // ADCINT2 disabled.
    AdcbRegs.ADCINTSEL1N2.bit.INT2SEL = 0;  // No interrupt selected.
    AdcbRegs.ADCINTSEL1N2.bit.INT1CONT = 0; // Continous mode is disabled
    AdcbRegs.ADCINTSEL1N2.bit.INT1E = 0;    // ADCINT1 disabled.
    AdcbRegs.ADCINTSEL1N2.bit.INT1SEL = 0;  // No interrupt selected.
    AdcbRegs.ADCINTSEL3N4.all = 0x00;       // ADC Interrupt 3 and 4 Selection Register
    AdcbRegs.ADCINTSEL3N4.bit.INT4CONT = 0; // Continous mode is disabled
    AdcbRegs.ADCINTSEL3N4.bit.INT4E = 0;    // ADCINT4 disabled.
    AdcbRegs.ADCINTSEL3N4.bit.INT4SEL = 0;  // No interrupt selected.
    AdcbRegs.ADCINTSEL3N4.bit.INT3CONT = 0; // Continous mode is disabled
    AdcbRegs.ADCINTSEL3N4.bit.INT3E = 0;    // ADCINT3 disabled.
    AdcbRegs.ADCINTSEL3N4.bit.INT3SEL = 0;  // No interrupt selected.
    AdcbRegs.ADCSOCPRICTL.all = 0x00;       // ADC SOC Priority Control Register
    AdcbRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0;  // the SOC is handled in round robin arbitration



    AdccRegs.ADCINTSEL1N2.all = 0x00;       // ADC Interrupt 1 and 2 Selection Register
    AdccRegs.ADCINTSEL1N2.bit.INT2CONT = 0; // Continous mode is disabled
    AdccRegs.ADCINTSEL1N2.bit.INT2E = 0;    // ADCINT2 disabled.
    AdccRegs.ADCINTSEL1N2.bit.INT2SEL = 0;  // No interrupt selected.
    AdccRegs.ADCINTSEL1N2.bit.INT1CONT = 0; // Continous mode is disabled
    AdccRegs.ADCINTSEL1N2.bit.INT1E = 0;    // ADCINT1 disabled.
    AdccRegs.ADCINTSEL1N2.bit.INT1SEL = 0;  // No interrupt selected.
    AdccRegs.ADCINTSEL3N4.all = 0x00;       // ADC Interrupt 3 and 4 Selection Register
    AdccRegs.ADCINTSEL3N4.bit.INT4CONT = 0; // Continous mode is disabled
    AdccRegs.ADCINTSEL3N4.bit.INT4E = 0;    // ADCINT4 disabled.
    AdccRegs.ADCINTSEL3N4.bit.INT4SEL = 0;  // No interrupt selected.
    AdccRegs.ADCINTSEL3N4.bit.INT3CONT = 0; // Continous mode is disabled
    AdccRegs.ADCINTSEL3N4.bit.INT3E = 0;    // ADCINT3 disabled.
    AdccRegs.ADCINTSEL3N4.bit.INT3SEL = 0;  // No interrupt selected.
    AdccRegs.ADCSOCPRICTL.all = 0x00;       // ADC SOC Priority Control Register
    AdccRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0;  // the SOC is handled in round robin arbitration

    AdcdRegs.ADCINTSEL1N2.all = 0x00;       // ADC Interrupt 1 and 2 Selection Register
    AdcdRegs.ADCINTSEL1N2.bit.INT2CONT = 0; // Continous mode is disabled
    AdcdRegs.ADCINTSEL1N2.bit.INT2E = 0;    // ADCINT2 disabled.
    AdcdRegs.ADCINTSEL1N2.bit.INT2SEL = 0;  // No interrupt selected.
    AdcdRegs.ADCINTSEL1N2.bit.INT1CONT = 0; // Continous mode is disabled
    AdcdRegs.ADCINTSEL1N2.bit.INT1E = 0;    // ADCINT1 disabled.
    AdcdRegs.ADCINTSEL1N2.bit.INT1SEL = 0;  // No interrupt selected.
    AdcdRegs.ADCINTSEL3N4.all = 0x00;       // ADC Interrupt 3 and 4 Selection Register
    AdcdRegs.ADCINTSEL3N4.bit.INT4CONT = 0; // Continous mode is disabled
    AdcdRegs.ADCINTSEL3N4.bit.INT4E = 0;    // ADCINT4 disabled.
    AdcdRegs.ADCINTSEL3N4.bit.INT4SEL = 0;  // No interrupt selected.
    AdcdRegs.ADCINTSEL3N4.bit.INT3CONT = 0; // Continous mode is disabled
    AdcdRegs.ADCINTSEL3N4.bit.INT3E = 0;    // ADCINT3 disabled.
    AdcdRegs.ADCINTSEL3N4.bit.INT3SEL = 0;  // No interrupt selected.
    AdcdRegs.ADCSOCPRICTL.all = 0x00;       // ADC SOC Priority Control Register
    AdcdRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0;  // the SOC is handled in round robin arbitration

    /*We will trigger the SOC when EPwm1Regs.TBCTR=0*/
    AdcaRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcbRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdccRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcdRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcaRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdcbRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdccRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdcdRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register

    /*VDC pin*/
    AdcaRegs.ADCSOC0CTL.all = 0x00;
    AdcaRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC0CTL.bit.CHSEL = 0xE;                /*This is Vdc pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    /*Va pin*/
    AdccRegs.ADCSOC0CTL.all = 0x00;
    AdccRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdccRegs.ADCSOC0CTL.bit.CHSEL = 0x3;                /*This is VA pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/
    
    /*Vb pin*/
    AdcbRegs.ADCSOC0CTL.all = 0x00;
    AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdcbRegs.ADCSOC0CTL.bit.CHSEL = 0x3;                /*This is VB pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    /*Vc pin*/
    AdcaRegs.ADCSOC1CTL.all = 0x00;
    AdcaRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdcaRegs.ADCSOC1CTL.bit.CHSEL = 0x3;                /*This is VC pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    /*Ia pin*/
    AdccRegs.ADCSOC1CTL.all = 0x00;
    AdccRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdccRegs.ADCSOC1CTL.bit.CHSEL = 0x2;                /*This is Ia pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/
    
    /*Ib pin*/
    AdcbRegs.ADCSOC1CTL.all = 0x00;
    AdcbRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdcbRegs.ADCSOC1CTL.bit.CHSEL = 0x2;                /*This is Ib pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    /*Ic pin*/
    AdcaRegs.ADCSOC2CTL.all = 0x00;
    AdcaRegs.ADCSOC2CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdcaRegs.ADCSOC2CTL.bit.CHSEL = 0x2;                /*This is Ic pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC2CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    /*Vref pin*/
    AdcaRegs.ADCSOC3CTL.all = 0x00;
    AdcaRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM1_SOCA_TRG;   /*ePWM1 SocA is the trigger*/    
    AdcaRegs.ADCSOC3CTL.bit.CHSEL = 0;                  /*This is Vref pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC3CTL.bit.ACQPS = ACQPS_PERIOD;       /*TODO: This value should be tested*/

    EDIS;
}
void EQEPSetup(void)
{
// ARC-H-50-3600-TTL-6-3M-10-FC
// ARC: Optik, H: Hollow, 50: 50mm, 3600: Resolution, TTL: 5VDC supply, 6: A, An, B, Bn, Z, Zn
// 1: A  - Yellow
// 2: Bn - White
// 3: +V - Red
// 4: 0V - Black
// 5: An - Blue
// 6: B  - Green
// 7: Zn - Grey
// 8: Z  - Pink
// 9: GND - Shield

// QEPI: Gated to A and B (zero marker)
// A leads B, forward direction (quadrature clock mode)

    /*the formula will be X/(t(k)-t(k-1)) at low  speeds, can be used with UPEVNT */
    /*the formula will be (x(k)-x(k-1))/T at high speeds, can be used with eqep unit timer or CAPCLK */

    EQep1Regs.QUPRD = 2000000;            // Unit Timer for 100 Hz at 200 MHz

// Quadrature Decoder Unit (QDU) Registers
    EQep1Regs.QDECCTL.all = 0x00;     // Quadrature Decoder Control
    EQep1Regs.QDECCTL.bit.QSRC = 0; // Position-counter source selection: Quadrature count mode (QCLK = iCLK, QDIR = iDIR)
// hakansrc QSRC=2 girmis -- "0"
    EQep1Regs.QDECCTL.bit.SOEN = 0;   // Disable position-compare sync output
    EQep1Regs.QDECCTL.bit.SPSEL = 1; // Strobe pin is used for sync output: Don't care
    EQep1Regs.QDECCTL.bit.XCR = 0; // External Clock Rate: 2x resolution: Count the rising/falling edge
    EQep1Regs.QDECCTL.bit.SWAP = 1; // CLK/DIR Signal Source for Position Counter: Quadrature-clock inputs are not swapped
    EQep1Regs.QDECCTL.bit.IGATE = 0;  // Disable gating of Index pulse
    EQep1Regs.QDECCTL.bit.QAP = 0;    // QEPA input polarity: No effect
    EQep1Regs.QDECCTL.bit.QBP = 0;    // QEPB input polarity: No effect
    EQep1Regs.QDECCTL.bit.QIP = 0;    // QEPI input polarity: No effect
    EQep1Regs.QDECCTL.bit.QSP = 0;    // QEPS input polarity: No effect

// Position Counter and Control Unit (PCCU) Registers
    EQep1Regs.QEPCTL.all = 0x00;      // QEP Control
    EQep1Regs.QEPCTL.bit.FREE_SOFT = 0; // Emulation mode: Position counter stops immediately on emulation suspend
    EQep1Regs.QEPCTL.bit.PCRM = 1; // Position counter reset on the maximum position
    EQep1Regs.QEPCTL.bit.IEI = 0; // With 2, initializes the position counter on the rising edge of the QEPI signal
    EQep1Regs.QEPCTL.bit.IEL = 0; // With 1, Latches position counter on rising edge of the index signal
    EQep1Regs.QEPCTL.bit.QPEN = 0; // Reset the eQEP peripheral internal operating flags/read-only registers.
//EQep1Regs.QEPCTL.bit.QCLM = 0; // QEP capture latch mode: Latch on position counter read by CPU
    EQep1Regs.QEPCTL.bit.QCLM = 1;        // Latch on unit time out

    EQep1Regs.QEPCTL.bit.UTE = 1;    // QEP unit timer enable: Enable unit timer
    EQep1Regs.QEPCTL.bit.WDE = 1;     // Enable the eQEP watchdog timer

    EQep1Regs.QPOSINIT = 0; // Initial QPOSCNT , QPOSCNT set to zero on index event (or strobe or software if desired)
    EQep1Regs.QPOSMAX = 14399;       // Max value of QPOSCNT    /*better check this value*/

// Quadrature edge-capture unit for low-speed measurement (QCAP)
    EQep1Regs.QCAPCTL.all = 0x00;
    EQep1Regs.QCAPCTL.bit.CEN = 1;    // eQEP capture unit is enabled
    EQep1Regs.QCAPCTL.bit.CCPS = 6; // eQEP capture timer clock prescaler: // CAPCLK = SYSCLKOUT/1
    EQep1Regs.QCAPCTL.bit.UPPS = 5; // Unit position event prescaler: UPEVNT = QCLK/1 , QCLK is triggered in every rising or falling edge of A or B
// UPPS reiz veri important

// Position Compare Control
    EQep1Regs.QPOSCTL.all = 0x0000;   // Position Compare Control: Disabled
// hakansrc enable etmis: PCE=1, PCSPW=0xFFF
    /*
     EQep1Regs.QPOSCTL.bit.PCSHDW = 0;   // shadow disabled
     EQep1Regs.QPOSCTL.bit.PCLOAD = 0;   // does not matter, shadow already disabled
     EQep1Regs.QPOSCTL.bit.PCPOL = 0;    // polarity of sync output is set to high pulse output
     EQep1Regs.QPOSCTL.bit.PCE = 1;      // position compare enable
     EQep1Regs.QPOSCTL.bit.PCSPW = 0xFFF;// Select-position-compare sync output pulse width, 4096 * 4 * SYSCLKOUT cycles
     */

// QEP Interrupt Control (EQEPxINT)
// Eleven interrupt events (PCE, PHE, QDC, WTO, PCU, PCO, PCR, PCM, SEL, IEL and UTO) can be generated.
    EQep1Regs.QEINT.all = 0x00;
    /*
     EQep1Regs.QEINT.bit.WTO = 1;      // Watchdog time out interrupt enabled
     EQep1Regs.QEINT.bit.UTO = 1; // unit timeout interrupt enabled, check QCAPCTL.bit.CCPS (NOTE: can be used for speed calculations at high speeds,check technical reference manual page 1996)
     EQep1Regs.QEINT.bit.IEL = 1;        // Index event latch interrupt enabled
     */

// added by hakansrc
    EQep1Regs.QFLG.all = 0;             // Interrupts are flagged here
    EQep1Regs.QCLR.all = 0;             // QEP Interrupt Clear

// added by hakansrc
    EQep1Regs.QCTMR = 0; // This register provides time base for edge capture unit. 16 bit
    EQep1Regs.QCPRD = 0; // This register holds the period count value between the last successive eQEP position events
    EQep1Regs.QCTMRLAT = 0; // QCTMR latch register, latching can be stopped by clearing QEPCTL[QCLM] register
    EQep1Regs.QCPRDLAT = 0; // QCPRD latch register, latching can be stopped by clearing QEPCTL[QCLM] register

    /*
     // Registers to be watched
     EQep1Regs.QPOSCNT   // Position counter: This counter acts as a position integrator whose count value is proportional to position from a give reference point
     EQep1Regs.QPOSINIT  // Position counter init: contains the position value that is used to initialize the position counter based on external strobe or index event
     EQep1Regs.QPOSMAX   // Maximum Position Count: contains the maximum position counter value.
     EQep1Regs.QPOSCMP   // Position Compare: is compared with the position counter (QPOSCNT) to generate sync output and/or interrupt on compare match
     EQep1Regs.QPOSILAT  // Index Position Latch: The position-counter value is latched into this register on an index event as defined by the QEPCTL[IEL] bits.
     EQep1Regs.QPOSLAT   // Position Latch: The position-counter value is latched into this register on a unit time out event.
     EQep1Regs.QUTMR        // QEP Unit Timer: This register acts as time base for unit time event generation. When this timer value matches the unit time period value a unit time event is generated.
     EQep1Regs.QUPRD     // QEP unit period: contains the period count for the unit timer to generate periodic unit time events.
     EQep1Regs.QWDTMR    // Watchdog timer: time base for the watchdog to detect motor stalls
     EQep1Regs.QWDPRD   // Watchdog period: contains the time-out count for the eQEP peripheral watch dog timer
     EQep1Regs.QCTMR        // QEP Capture Timer: This register provides time base for edge capture unit
     EQep1Regs.QCPRD        // QEP Capture Period: This register holds the period count value between the last successive eQEP position events

     EQep1Regs.QFLG.bit.INT   // Global interrupt status flag
     EQep1Regs.QCLR.bit.INT   // Global interrupt clear flag
     EQep1Regs.QFLG.bit.WTO  // Watchdog timeout interrupt flag
     EQep1Regs.QCLR.bit.WTO = 1;     // Clear watchdog timeout interrupt flag

     EQep1Regs.QEPSTS.bit.UPEVNT     // 1h (R/W) = Unit position event detected. Write 1 to clear
     EQep1Regs.QEPSTS.bit.QDF    // Quadrature direction flag: 1=Clockwise
     */

    EQep1Regs.QEPCTL.bit.QPEN = 1;    // eQEP position counter is enabled

}

void GetEncoderReadings(ModuleParameters& moduleparams)
{
    /*TODO*/
}
void GetAdcReadings(ModuleParameters& moduleparams)
{
    /*TODO*/
}
void SetupCmpssProtections(void)
{
    /*TODO*/
}
