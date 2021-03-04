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
#include "MultipleFloatDataSender.h"
#include "CustomTypeDefs.h"

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

ModuleParameters Module1_Parameters;

OpenLoopOperation RL_Load_Operation = {25, 0.5}; // 0 hz, 0 magnitude
PID_Parameters PI_iq;
unsigned int StartOperation = 1; /*if this is 0, then no operation will be performed. It will be set inside the debugger*/
unsigned long int BlankCounter = 0;
unsigned int OperationMode = MODE_NO_OPERATION; /*this will be changed */
DRV8305_Vars Device1Configuration;
int32 OffsetCalCounter;
uint16_t OffsetCalculationIsDone = 0;
float K1 = (0.998),  // Offset filter coefficient K1: 0.05/(T+0.05);
    K2 = (0.001999); // Offset filter coefficient K2: T/(T+0.05);

__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/

__interrupt void epwm1_isr(void);       /*prototype of the ISR functions*/
__interrupt void xint1_isr(void);       /*prototype of the ISR functions*/

void InitializationRoutine(void); /*all modules and gpios are initialized inside this function.*/
void InitializeEpwm1Registers(void);
void InitializeEpwm2Registers(void);
void InitializeADCs(void);
void SetupGPIOs(void);
void EQEPSetup(void);
inline void Run_PI_Controller(PID_Parameters &pidparams);
inline void CalculateParkTransform(ModuleParameters &moduleparams);
static inline void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
static inline void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount);

void GetEncoderReadings(ModuleParameters &moduleparams);
void GetAdcReadings(ModuleParameters &moduleparams);
void SetupCmpssProtections(void);
void InitSpiDrv8305Gpio(void);
void InitSpiRegs_DRV830x(volatile struct SPI_REGS *s);
void InitDRV8305Regs(DRV8305_Vars *motor);
Uint16 DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 SPI_Driver(volatile struct SPI_REGS *s, Uint16 data);
void InitDRV8305(DRV8305_Vars *deviceptr);
void ReadDRV8305Registers(DRV8305_Vars *deviceptr);
void CalculateOffsetValue(void);
void RunTimeProtectionControl(void);
void GetSvpwmDutyCycles(float T1, float T2, float T0,float Ts,float VectorAngleRad, float &DutyA, float &DutyB, float &DutyC);
void ZeroiseModule1Parameters(void);
float ramper(float in, float out, float rampDelta);

/**
 * main.c
 */
uint32_t    SvpwmSectorNumber = 0;
uint32_t    ControlISRCounter = 0;
uint32_t    AlignmentCounter = 0;
float DataToBeSent[6];
uint32_t SendOneInFour = 0;
uint32_t Xint1Count = 0;
float SpeedRefRPM = 50;
float SpeedRefRadSec = 0;
float PhaseIncrement = 0;
float PhaseValue = 0;
uint16_t PwmFrequency = INITIALPWMFREQ;
uint16_t PwmFrequencyIncrement = 0;
uint16_t ClockMod = 1000;


uint16_t ReadDrv8305RegistersFlag = 0;
uint16_t AngleHasBeenReset = 0;
float FswDecided = 0;



uint16_t SpeedRefArrayCount = 0;
float SpeedRefArray[4] = {-35,80,35,-80};


float Vd_Current_Value[NUMBEROFMPCLOOPS] = {0,0,0,0,0,0,0,0,0,0};
float Vq_Current_Value[NUMBEROFMPCLOOPS] = {0,0,0,0,0,0,0,0,0,0};







uint16_t    ByPass_SpeedMeasurement = 0;


int main(void)
{

    InitSysCtrl(); /*initialize the peripheral clocks*/

    EALLOW;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0; // EPWM Clock Divide Select: /1 of PLLSYSCLK
    EDIS;

    InitPieCtrl(); /*initialize the PIE table (interrupt related)*/
    IER = 0x0000;  /*clear the Interrupt Enable Register   (IER)*/
    IFR = 0x0000;  /*clear the Interrupt Flag Register     (IFR)*/
    InitPieVectTable();

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;  /*stop the TimeBase clock for later synchronization*/
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 0; /*stop the global TimeBase clock for later synchronization*/
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAGMUX2.bit.GPIO31 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO31 = 0;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO34 = 0;
    GpioCtrlRegs.GPBMUX1.bit.GPIO34 = 0;
    GpioCtrlRegs.GPADIR.bit.GPIO31 = 1;
    GpioCtrlRegs.GPBDIR.bit.GPIO34 = 1;
    GpioDataRegs.GPASET.bit.GPIO31 = 1;
    GpioDataRegs.GPBSET.bit.GPIO34 = 1;
    EDIS;


    while (StartOperation == 0)
    {
        if ((BlankCounter % 10) == 0)
        {
            GpioDataRegs.GPATOGGLE.bit.GPIO31 = 1;
            GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;
        }

        BlankCounter++;
        DELAY_US(100000);
    }
    DINT;
    /*Initialize cpu timers*/
    InitCpuTimers();
    ConfigCpuTimer(&CpuTimer0, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer1, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer2, 200, 1000000); //1 seconds
    CpuTimer0Regs.TCR.all = 0x4000;           // enable cpu timer interrupt
    CpuTimer1Regs.TCR.all = 0x4000;           // enable cpu timer interrupt
    CpuTimer2Regs.TCR.all = 0x4000;           // enable cpu timer interrupt

    InitializationRoutine();

    EALLOW;
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.EPWM1_INT = &epwm1_isr;        /*specify the interrupt service routine (ISR) address to the PIE table*/
    EDIS;

#if 1 // we are getting the index pin as external interrupt. This way we can easily obtain the alignment point
    EALLOW;
    PieVectTable.XINT1_INT = &xint1_isr;
    EDIS;
    PieCtrlRegs.PIEIER1.bit.INTx4 = 1;          // Enable PIE Group 1 INT4

    EALLOW;
    GpioCtrlRegs.GPDMUX1.bit.GPIO99 = 0;         // GPIO
    GpioCtrlRegs.GPDDIR.bit.GPIO99 = 0;          // input
    GpioCtrlRegs.GPDQSEL1.bit.GPIO99 = 0;        // XINT1 Synch to SYSCLKOUT only
    EDIS;
    GPIO_SetupXINT1Gpio(99);
    XintRegs.XINT1CR.bit.POLARITY = 1;          // rising edge interrupt
    XintRegs.XINT1CR.bit.ENABLE = 1;            // Enable XINT1
#endif

    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 and XINT1 interrupt*/
    IER |= M_INT3;  /*Enable the PIE group of Epwm1 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/

    PieCtrlRegs.PIECTRL.bit.ENPIE = 1; // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1; /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1;  /*Enable the 1st interrupt of the Group 3, which is for epwm1 interrupt*/
    PieCtrlRegs.PIEIER1.bit.INTx4 = 1;          // Enable PIE Group 1 INT4

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;  /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1; /*start the global TimeBase clock */
    EDIS;

    DELAY_US(50);
    CalculateOffsetValue();                 // Calculate the offset value of the current measurements.

    OperationMode = MODE_ALIGNMENT; // start with the selected mode

    EALLOW;
    EINT; // Enable Global interrupt INTM
    ERTM; // Enable Global realtime interrupt DBGM
    EDIS;


    while (1)
    {
        DELAY_US(100);
        SciaBackgroundTask();
        if(ReadDrv8305RegistersFlag==1)
        {
            ReadDRV8305Registers(&Device1Configuration);
            ReadDrv8305RegistersFlag = 0;
        }
    }
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
#if 0
    if(OperationMode==MODE_MPCCONTROLLER)
    {
        if((CpuTimer1.InterruptCount%5)==0)
        {
            SpeedRefRPM = SpeedRefArray[SpeedRefArrayCount];
            SpeedRefArrayCount++;
            if(SpeedRefArrayCount==4)
            {
                SpeedRefArrayCount = 0;
            }
        }

    }
    else
    {
        CpuTimer1.InterruptCount = 0;
    }
#endif
    ReadDrv8305RegistersFlag = 1;
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
    EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm1Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm1Regs.TBCTL.bit.SYNCOSEL = TB_CTR_ZERO;
    EPwm1Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm1Regs.TBCTL.bit.PHSEN = TB_DISABLE;
    EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm1Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm1Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm1Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm1Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm1Regs.TBCTR = 0;

    EPwm1Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm1Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm1Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm1Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm1Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm1Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm1Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm1Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm1Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm1Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
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
    EPwm1Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm1Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm1Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm1Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm1Regs.DBCTL2.all = 0; /*has no useful setting*/

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
    EPwm1Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm1Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm1Regs.TBPHS.bit.TBPHS = 0;

    EPwm1Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm1Regs.CMPA.bit.CMPA = 0;

    /*TODO how to do tripzone?, how are we going to do the protection?
     * consider when the inverter arrives*/
    EPwm1Regs.ETSEL.bit.SOCAEN = 1; /*enable EPWMxSOCA signal*/
    EPwm1Regs.ETSEL.bit.SOCASEL = 2;    /*ADC sampling is done when TBCTR==TBPRD*/
    EPwm1Regs.ETSEL.bit.INTEN = 1;  /*enable pwm interrupt*/
    EPwm1Regs.ETSEL.bit.INTSEL = 1; /*interrupt occurs when TBCTR = 0*/

    EPwm1Regs.ETPS.all = 0x00;
    EPwm1Regs.ETPS.bit.INTPRD = 1;  // Generate INT on first event
    EPwm1Regs.ETPS.bit.SOCAPRD = 1; // Generate SOC on first event
}
void InitializeEpwm2Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    /*TODO use shadow registers on both CMPA and PRDLD*/
    /*TODO check which one of these protected with EALLOW EDIS*/
    EPwm2Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm2Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm2Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm2Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm2Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm2Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm2Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm2Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm2Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm2Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm2Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm2Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm2Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm2Regs.TBCTR = 0;

    EPwm2Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm2Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm2Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm2Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm2Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm2Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm2Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm2Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm2Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm2Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
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
    EPwm2Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm2Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm2Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm2Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm2Regs.DBCTL2.all = 0; /*has no useful setting*/

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
    EPwm2Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm2Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm2Regs.TBPHS.bit.TBPHS = 0;

    EPwm2Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm2Regs.CMPA.bit.CMPA = 0;
}
void InitializeEpwm3Registers(void)
{
    /*TODO, make sync operation of the PWM modules*/
    /*TODO use shadow registers on both CMPA and PRDLD*/
    /*TODO check which one of these protected with EALLOW EDIS*/
    EPwm3Regs.TBCTL.bit.FREE_SOFT = 0b10;
    EPwm3Regs.TBCTL.bit.PHSDIR = TB_UP;
    EPwm3Regs.TBCTL.bit.CLKDIV = TB_DIV2;
    EPwm3Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;
    EPwm3Regs.TBCTL.bit.SWFSYNC = 0;
    EPwm3Regs.TBCTL.bit.SYNCOSEL = TB_SYNC_IN;
    EPwm3Regs.TBCTL.bit.PRDLD = TB_SHADOW;
    EPwm3Regs.TBCTL.bit.PHSEN = TB_ENABLE;
    EPwm3Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;

    EPwm3Regs.TBCTL2.bit.PRDLDSYNC = 0;    /*the period will be loaded from shadow to active after TBCTR = 0*/
    EPwm3Regs.TBCTL2.bit.SYNCOSELX = 0;    /*this is unnecessary*/
    EPwm3Regs.TBCTL2.bit.OSHTSYNC = 0;     /*this is unnecessary*/
    EPwm3Regs.TBCTL2.bit.OSHTSYNCMODE = 0; /*one shot sync is disabled*/

    EPwm3Regs.TBCTR = 0;

    EPwm3Regs.TBSTS.bit.CTRMAX = 0; /*this is unnecessary*/
    EPwm3Regs.TBSTS.bit.SYNCI = 0;  /*this is unnecessary*/
    EPwm3Regs.TBSTS.bit.CTRDIR = 0; /*this is unnecessary*/

    EPwm3Regs.CMPCTL.bit.LOADBSYNC = 0; /*Shadow to Active Load of CMPB:CMPBHR occurs according to LOADBMODE */
    EPwm3Regs.CMPCTL.bit.LOADASYNC = 0; /*Shadow to Active Load of CMPA:CMPAHR occurs according to LOADAMODE */
    //EPwm3Regs.CMPCTL.bit.SHDWBFULL = 0; /*you can check if the shadow register is filled or not*/
    //EPwm3Regs.CMPCTL.bit.SHDWAFULL = 0; /*you can check if the shadow register is filled or not*/
    EPwm3Regs.CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    EPwm3Regs.CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    EPwm3Regs.CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
#if 0 /*CMPC or CMPD will not be used, therefore they left uninitialized*/
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
    EPwm3Regs.DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; /*deadband is set for both fed and red*/
    EPwm3Regs.DBCTL.bit.POLSEL = DB_ACTV_HIC;      /*EPWmxB is inverted*/
    EPwm3Regs.DBFED.bit.DBFED = DEADBAND_FED / SYSCLKPERIOD;
    EPwm3Regs.DBRED.bit.DBRED = DEADBAND_RED / SYSCLKPERIOD;
    EPwm3Regs.DBCTL2.all = 0; /*has no useful setting*/

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
    EPwm3Regs.AQCTLA.bit.CAD = AQ_SET;
    EPwm3Regs.AQCTLA.bit.CAU = AQ_CLEAR;

    EPwm3Regs.TBPHS.bit.TBPHS = 0;

    EPwm3Regs.TBPRD = ((uint32_t)SYSCLKFREQUENCY) / (((uint16_t)INITIALPWMFREQ) * 4);
    EPwm3Regs.CMPA.bit.CMPA = 0;
}

void SetupGPIOs(void)
{
    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO0 = 1;   // Disable pull-up on GPIO0 (EPWM1A)
    GpioCtrlRegs.GPAPUD.bit.GPIO1 = 1;   // Disable pull-up on GPIO1 (EPWM1B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO0 = 0; // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO1 = 0; // Configure GPIO1 as EPWM1B
    GpioCtrlRegs.GPAMUX1.bit.GPIO0 = 1;  // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAMUX1.bit.GPIO1 = 1;  // Configure GPIO1 as EPWM1B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO2 = 1;   // Disable pull-up on GPIO2 (EPWM2A)
    GpioCtrlRegs.GPAPUD.bit.GPIO3 = 1;   // Disable pull-up on GPIO3 (EPWM2B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO2 = 0; // Configure GPIO2 as EPWM2A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO3 = 0; // Configure GPIO3 as EPWM2B
    GpioCtrlRegs.GPAMUX1.bit.GPIO2 = 1;  // Configure GPIO2 as EPWM2A
    GpioCtrlRegs.GPAMUX1.bit.GPIO3 = 1;  // Configure GPIO3 as EPWM2B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO4 = 1;   // Disable pull-up on GPIO4 (EPWM3A)
    GpioCtrlRegs.GPAPUD.bit.GPIO5 = 1;   // Disable pull-up on GPIO5 (EPWM3B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO4 = 0; // Configure GPIO4 as EPWM3A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO5 = 0; // Configure GPIO5 as EPWM3B
    GpioCtrlRegs.GPAMUX1.bit.GPIO4 = 1;  // Configure GPIO4 as EPWM3A
    GpioCtrlRegs.GPAMUX1.bit.GPIO5 = 1;  // Configure GPIO5 as EPWM3B
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

    EALLOW;
    GpioCtrlRegs.GPAGMUX2.bit.GPIO20 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO20 = 1;    //set this as EQEP1A pin
    GpioCtrlRegs.GPAGMUX2.bit.GPIO21 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO21 = 1;    //set this as EQEP1B pin
#if 0  // this pin is used for xint1
    GpioCtrlRegs.GPDGMUX1.bit.GPIO99 = 1;
    GpioCtrlRegs.GPDMUX1.bit.GPIO99 = 1;    //set this as EQEP1I pin
#endif
    EDIS;
}

inline void Run_PI_Controller(PID_Parameters &pidparams)
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
    Vd_Current_Value[indexcount] = moduleparams.FirstHorizon[indexcount].Vd;    // the previous' first horizon is the new current, save it for id first horizon prediction.
    Vq_Current_Value[indexcount] = moduleparams.FirstHorizon[indexcount].Vq;    // the previous' first horizon is the new current, save it for iq first horizon prediction.


    moduleparams.FirstHorizon[indexcount].IdPrediction = moduleparams.Measured.Current.transformed.Dvalue + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (Vd_Current_Value[indexcount] / LS_VALUE - RS_VALUE / LS_VALUE * moduleparams.Measured.Current.transformed.Dvalue + LS_VALUE / LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Qvalue);
    moduleparams.FirstHorizon[indexcount].IqPrediction = moduleparams.Measured.Current.transformed.Qvalue + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (Vq_Current_Value[indexcount] / LS_VALUE - RS_VALUE / LS_VALUE * moduleparams.Measured.Current.transformed.Qvalue - LS_VALUE / LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Dvalue - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / LS_VALUE);
}
static inline void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount)
{
#if 1
    moduleparams.FirstHorizon[indexcount].Vd = VD_VQ_KP * (moduleparams.Reference.Id -  moduleparams.FirstHorizon[indexcount].IdPrediction) * (1.0 + VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Dvalue - POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction;
    moduleparams.FirstHorizon[indexcount].Vq = VD_VQ_KP * (moduleparams.Reference.Iq -  moduleparams.FirstHorizon[indexcount].IqPrediction) * (1.0 + VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Qvalue + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * (LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction+ FLUX_VALUE);
#endif
    moduleparams.SecondHorizon[indexcount].Vd = moduleparams.FirstHorizon[indexcount].Vd;   // bypass the second prediction of the vdq voltage for now (it is not needed), this part will be fixed later on (major code revision is required)
    moduleparams.SecondHorizon[indexcount].Vq = moduleparams.FirstHorizon[indexcount].Vq;   // bypass the second prediction of the vdq voltage for now (it is not needed), this part will be fixed later on (major code revision is required)

    moduleparams.SecondHorizon[indexcount].Magnitude = sqrtf(moduleparams.SecondHorizon[indexcount].Vd * moduleparams.SecondHorizon[indexcount].Vd + moduleparams.SecondHorizon[indexcount].Vq * moduleparams.SecondHorizon[indexcount].Vq);

    moduleparams.SecondHorizon[indexcount].Valfa = sinf(moduleparams.AngleRad.Electrical) * moduleparams.SecondHorizon[indexcount].Vd + cosf(moduleparams.AngleRad.Electrical) * moduleparams.SecondHorizon[indexcount].Vq;
    moduleparams.SecondHorizon[indexcount].Vbeta =-cosf(moduleparams.AngleRad.Electrical) * moduleparams.SecondHorizon[indexcount].Vd + sinf(moduleparams.AngleRad.Electrical) * moduleparams.SecondHorizon[indexcount].Vq;

    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad = atan2f(moduleparams.SecondHorizon[indexcount].Vbeta, moduleparams.SecondHorizon[indexcount].Valfa) + 4.0*PI + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical/moduleparams.OptimizationFsw[indexcount];
    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod = fmodf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad, PI / 3.0);

    moduleparams.SecondHorizon[indexcount].ma = sqrtf(3)*moduleparams.SecondHorizon[indexcount].Magnitude / (moduleparams.Measured.Voltage.Vdc );

    moduleparams.SecondHorizon[indexcount].SvpwmT1 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(PI / 3.0 - moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT2 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT0 = (1.0 / moduleparams.OptimizationFsw[indexcount]) - moduleparams.SecondHorizon[indexcount].SvpwmT1 - moduleparams.SecondHorizon[indexcount].SvpwmT2;

    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 = -moduleparams.SecondHorizon[indexcount].Magnitude;

    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 * moduleparams.SecondHorizon[indexcount].SvpwmT1 / LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 * moduleparams.SecondHorizon[indexcount].SvpwmT2 / LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0 = -moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 * moduleparams.SecondHorizon[indexcount].SvpwmT0 / LS_VALUE;

    moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction = moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0;

    moduleparams.SecondHorizon[indexcount].IdPrediction = moduleparams.FirstHorizon[indexcount].IdPrediction + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.SecondHorizon[indexcount].Vd / LS_VALUE - RS_VALUE / LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction + LS_VALUE / LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IqPrediction);
    moduleparams.SecondHorizon[indexcount].IqPrediction = moduleparams.FirstHorizon[indexcount].IqPrediction + (1.0 / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.SecondHorizon[indexcount].Vq / LS_VALUE - RS_VALUE / LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction - LS_VALUE / LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IdPrediction - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / LS_VALUE);

    /*TODO add protection to cost*/
    moduleparams.Cost[indexcount] = IQRIPPLECOEFF * powf(moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction / IQ_RATED, 2) + IQREFCOEFF * powf((moduleparams.Reference.Iq - moduleparams.SecondHorizon[indexcount].IqPrediction) / IQ_RATED, 2) + IDREFCOEFF * powf((moduleparams.Reference.Id - moduleparams.SecondHorizon[indexcount].IdPrediction)/IQ_RATED, 2) + FSWCOEFF * moduleparams.OptimizationFsw[indexcount] / OPT_FSW_MAX;
    if (moduleparams.Cost[indexcount] < moduleparams.MinimumCostValue)
    {
        moduleparams.MinimumCostValue = moduleparams.Cost[indexcount];
        moduleparams.MinimumCostIndex = indexcount;
    }
}
void InitializationRoutine(void)
{
    int i=0;
    EALLOW;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO43 = 3;
    GpioCtrlRegs.GPBMUX1.bit.GPIO43 = 3;
    EDIS;
    InitializeSciaRegisters(921600.0);
    PI_iq.I_coeff = I_COEFFICIENT;
    PI_iq.P_coeff = P_COEFFICIENT;
    PI_iq.Ts = PI_TS_COEFFICIENT;
    PI_iq.Input = 0;
    PI_iq.Input_prev = 0;
    PI_iq.Output = 0;
    PI_iq.Output_prev = 0;
    PI_iq.SaturationMax = 2.0 * IQ_RATED;
    PI_iq.SaturationMin = -2.0 * IQ_RATED;

    for(i=0;i<NUMBEROFMPCLOOPS;i++)
    {
        Module1_Parameters.OptimizationFsw[i] = (i+1)*1000;
    }

    InitializeADCs();
    SetupGPIOs();
    InitializeEpwm1Registers();
    InitializeEpwm2Registers();
    InitializeEpwm3Registers();
    InitSpiDrv8305Gpio();
    DELAY_US(100000);
    InitSpiRegs_DRV830x(&SpiaRegs);
    InitDRV8305Regs(&Device1Configuration);

    EALLOW; /*configure GPIO124 to be the EN_GATE*/
    GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1;
    GpioCtrlRegs.GPDGMUX2.bit.GPIO124 = 0;
    GpioCtrlRegs.GPDMUX2.bit.GPIO124 = 0;
    GpioCtrlRegs.GPDDIR.bit.GPIO124 = 1;
    EDIS;

    EALLOW; /*configure GPIO125 to be the WAKE*/
    GpioDataRegs.GPDCLEAR.bit.GPIO125 = 1;
    GpioCtrlRegs.GPDGMUX2.bit.GPIO125 = 0;
    GpioCtrlRegs.GPDMUX2.bit.GPIO125 = 0;
    GpioCtrlRegs.GPDDIR.bit.GPIO125 = 1;
    EDIS;


    GPIO_WritePin(124, 1); // Enable DRV
    DELAY_US(50000);       // delay to allow DRV830x supplies to ramp up
    InitDRV8305(&Device1Configuration);

#if 0
    while (Device1Configuration.DRV_fault)
    {
        faultcounter++; // hang on if drv init is faulty
    }
#endif

    SetupCmpssProtections();
    EQEPSetup();
}
void InitializeADCs(void)
{
    /*
    TODOS for ADC absurd measurements
    - Try continous ADC mode
    - PPB block of the ADC will be used
*/
    EALLOW;
    AdcaRegs.ADCCTL2.bit.PRESCALE = 6; //ADCCLK = InputClokc/4.0
    AdcbRegs.ADCCTL2.bit.PRESCALE = 6; //ADCCLK = InputClokc/4.0
    AdccRegs.ADCCTL2.bit.PRESCALE = 6; //ADCCLK = InputClokc/4.0
    AdcdRegs.ADCCTL2.bit.PRESCALE = 6; //ADCCLK = InputClokc/4.0

    AdcaRegs.ADCCTL1.all = 0x00;       // ADC Control 1 Register
    AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdcbRegs.ADCCTL1.all = 0x00;       // ADC Control 1 Register
    AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdccRegs.ADCCTL1.all = 0x00;       // ADC Control 1 Register
    AdccRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdccRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    AdcdRegs.ADCCTL1.all = 0x00;       // ADC Control 1 Register
    AdcdRegs.ADCCTL1.bit.ADCPWDNZ = 1; // All analog circuitry inside the core is powered up
    AdcdRegs.ADCCTL1.bit.INTPULSEPOS = 1;

    DELAY_US(2000);

    AdcaRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)TODO Verify these
    AdcbRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)TODO Verify these
    AdccRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)TODO Verify these
    AdcdRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)TODO Verify these
    /*TODO, adcsetmode might be used?*/

    AdcaRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results (TODO Verify these)
    AdcbRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results (TODO Verify these)
    AdccRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results (TODO Verify these)
    AdcdRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results (TODO Verify these)

    AdcaRegs.ADCBURSTCTL.all = 0x00;      // ADC Burst Control Register
    AdcaRegs.ADCBURSTCTL.bit.BURSTEN = 0; // Burst mode is disabled

    AdcbRegs.ADCBURSTCTL.all = 0x00;      // ADC Burst Control Register
    AdcbRegs.ADCBURSTCTL.bit.BURSTEN = 0; // Burst mode is disabled

    AdccRegs.ADCBURSTCTL.all = 0x00;      // ADC Burst Control Register
    AdccRegs.ADCBURSTCTL.bit.BURSTEN = 0; // Burst mode is disabled

    AdcdRegs.ADCBURSTCTL.all = 0x00;      // ADC Burst Control Register
    AdcdRegs.ADCBURSTCTL.bit.BURSTEN = 0; // Burst mode is disabled

    AdcaRegs.ADCINTSEL1N2.all = 0x00;       // ADC Interrupt 1 and 2 Selection Register
    AdcaRegs.ADCINTSEL1N2.bit.INT2CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL1N2.bit.INT2E = 0;    // ADCINT2 disabled.
    AdcaRegs.ADCINTSEL1N2.bit.INT2SEL = 0;  // No interrupt selected.

    AdcaRegs.ADCINTSEL1N2.bit.INT1CONT = 1; // Continous mode is enabled
    AdcaRegs.ADCINTSEL1N2.bit.INT1E = 0;    // ADCINT1 is disabled.
    AdcaRegs.ADCINTSEL1N2.bit.INT1SEL = 0;  // EOC0 is the trigger for ADCINT1

    AdcaRegs.ADCSOCPRICTL.all = 0x00;          // ADC SOC Priority Control Register
    AdcaRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0; // the SOC is handled in round robin arbitration
    AdcaRegs.ADCSOCPRICTL.bit.RRPOINTER = 0;   // SOC0 is the last RR SOC to convert, SOC1 is the highest round robin priority, this ensures all the values are converted before the ISR.

    AdcaRegs.ADCINTSEL3N4.all = 0x00;       // ADC Interrupt 3 and 4 Selection Register
    AdcaRegs.ADCINTSEL3N4.bit.INT4CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL3N4.bit.INT4E = 0;    // ADCINT4 disabled.
    AdcaRegs.ADCINTSEL3N4.bit.INT4SEL = 0;  // No interrupt selected.
    AdcaRegs.ADCINTSEL3N4.bit.INT3CONT = 0; // Continous mode is disabled
    AdcaRegs.ADCINTSEL3N4.bit.INT3E = 0;    // ADCINT3 disabled.
    AdcaRegs.ADCINTSEL3N4.bit.INT3SEL = 0;  // No interrupt selected.

    AdcbRegs.ADCINTSEL1N2.all = 0x00;          // ADC Interrupt 1 and 2 Selection Register
    AdcbRegs.ADCINTSEL1N2.bit.INT2CONT = 0;    // Continous mode is disabled
    AdcbRegs.ADCINTSEL1N2.bit.INT2E = 0;       // ADCINT2 disabled.
    AdcbRegs.ADCINTSEL1N2.bit.INT2SEL = 0;     // No interrupt selected.
    AdcbRegs.ADCINTSEL1N2.bit.INT1CONT = 0;    // Continous mode is disabled
    AdcbRegs.ADCINTSEL1N2.bit.INT1E = 0;       // ADCINT1 disabled.
    AdcbRegs.ADCINTSEL1N2.bit.INT1SEL = 0;     // No interrupt selected.
    AdcbRegs.ADCINTSEL3N4.all = 0x00;          // ADC Interrupt 3 and 4 Selection Register
    AdcbRegs.ADCINTSEL3N4.bit.INT4CONT = 0;    // Continous mode is disabled
    AdcbRegs.ADCINTSEL3N4.bit.INT4E = 0;       // ADCINT4 disabled.
    AdcbRegs.ADCINTSEL3N4.bit.INT4SEL = 0;     // No interrupt selected.
    AdcbRegs.ADCINTSEL3N4.bit.INT3CONT = 0;    // Continous mode is disabled
    AdcbRegs.ADCINTSEL3N4.bit.INT3E = 0;       // ADCINT3 disabled.
    AdcbRegs.ADCINTSEL3N4.bit.INT3SEL = 0;     // No interrupt selected.
    AdcbRegs.ADCSOCPRICTL.all = 0x00;          // ADC SOC Priority Control Register
    AdcbRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0; // the SOC is handled in round robin arbitration

    AdccRegs.ADCINTSEL1N2.all = 0x00;          // ADC Interrupt 1 and 2 Selection Register
    AdccRegs.ADCINTSEL1N2.bit.INT2CONT = 0;    // Continous mode is disabled
    AdccRegs.ADCINTSEL1N2.bit.INT2E = 0;       // ADCINT2 disabled.
    AdccRegs.ADCINTSEL1N2.bit.INT2SEL = 0;     // No interrupt selected.
    AdccRegs.ADCINTSEL1N2.bit.INT1CONT = 0;    // Continous mode is disabled
    AdccRegs.ADCINTSEL1N2.bit.INT1E = 0;       // ADCINT1 disabled.
    AdccRegs.ADCINTSEL1N2.bit.INT1SEL = 0;     // No interrupt selected.
    AdccRegs.ADCINTSEL3N4.all = 0x00;          // ADC Interrupt 3 and 4 Selection Register
    AdccRegs.ADCINTSEL3N4.bit.INT4CONT = 0;    // Continous mode is disabled
    AdccRegs.ADCINTSEL3N4.bit.INT4E = 0;       // ADCINT4 disabled.
    AdccRegs.ADCINTSEL3N4.bit.INT4SEL = 0;     // No interrupt selected.
    AdccRegs.ADCINTSEL3N4.bit.INT3CONT = 0;    // Continous mode is disabled
    AdccRegs.ADCINTSEL3N4.bit.INT3E = 0;       // ADCINT3 disabled.
    AdccRegs.ADCINTSEL3N4.bit.INT3SEL = 0;     // No interrupt selected.
    AdccRegs.ADCSOCPRICTL.all = 0x00;          // ADC SOC Priority Control Register
    AdccRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0; // the SOC is handled in round robin arbitration

    AdcdRegs.ADCINTSEL1N2.all = 0x00;          // ADC Interrupt 1 and 2 Selection Register
    AdcdRegs.ADCINTSEL1N2.bit.INT2CONT = 0;    // Continous mode is disabled
    AdcdRegs.ADCINTSEL1N2.bit.INT2E = 0;       // ADCINT2 disabled.
    AdcdRegs.ADCINTSEL1N2.bit.INT2SEL = 0;     // No interrupt selected.
    AdcdRegs.ADCINTSEL1N2.bit.INT1CONT = 0;    // Continous mode is disabled
    AdcdRegs.ADCINTSEL1N2.bit.INT1E = 0;       // ADCINT1 disabled.
    AdcdRegs.ADCINTSEL1N2.bit.INT1SEL = 0;     // No interrupt selected.
    AdcdRegs.ADCINTSEL3N4.all = 0x00;          // ADC Interrupt 3 and 4 Selection Register
    AdcdRegs.ADCINTSEL3N4.bit.INT4CONT = 0;    // Continous mode is disabled
    AdcdRegs.ADCINTSEL3N4.bit.INT4E = 0;       // ADCINT4 disabled.
    AdcdRegs.ADCINTSEL3N4.bit.INT4SEL = 0;     // No interrupt selected.
    AdcdRegs.ADCINTSEL3N4.bit.INT3CONT = 0;    // Continous mode is disabled
    AdcdRegs.ADCINTSEL3N4.bit.INT3E = 0;       // ADCINT3 disabled.
    AdcdRegs.ADCINTSEL3N4.bit.INT3SEL = 0;     // No interrupt selected.
    AdcdRegs.ADCSOCPRICTL.all = 0x00;          // ADC SOC Priority Control Register
    AdcdRegs.ADCSOCPRICTL.bit.SOCPRIORITY = 0; // the SOC is handled in round robin arbitration

    /*We will trigger the SOC when EPwm1Regs.TBCTR=0*/
    AdcaRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcbRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdccRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcdRegs.ADCINTSOCSEL1.all = 0x00; // ADC Interrupt SOC Selection 1 Register
    AdcaRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdcbRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdccRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register
    AdcdRegs.ADCINTSOCSEL2.all = 0x00; // ADC Interrupt SOC Selection 2 Register

    /*Va pin*/
    AdcaRegs.ADCSOC0CTL.all = 0x00;
    AdcaRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC0CTL.bit.CHSEL = 0xE;              /*This is Va pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /*Vb pin*/
    AdccRegs.ADCSOC0CTL.all = 0x00;
    AdccRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdccRegs.ADCSOC0CTL.bit.CHSEL = 0x3;              /*This is Vb pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /*Vc pin*/
    AdcbRegs.ADCSOC0CTL.all = 0x00;
    AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcbRegs.ADCSOC0CTL.bit.CHSEL = 0x3;              /*This is Vc pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /*Vdc pin*/
    AdcaRegs.ADCSOC1CTL.all = 0x00;
    AdcaRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC1CTL.bit.CHSEL = 0x3;              /*This is Vdc pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /*Ia pin*/
    AdccRegs.ADCSOC1CTL.all = 0x00;
    AdccRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdccRegs.ADCSOC1CTL.bit.CHSEL = 0x2;              /*This is Ia pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdccRegs.ADCPPB1CONFIG.bit.CONFIG = 1;            // PPB is associated with SOC0
    AdccRegs.ADCPPB1OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdccRegs.ADCPPB1OFFREF = 0;                       // THIS VALUE IS TODO

    /*Ib pin*/
    AdcbRegs.ADCSOC1CTL.all = 0x00;
    AdcbRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcbRegs.ADCSOC1CTL.bit.CHSEL = 0x2;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcbRegs.ADCPPB1CONFIG.bit.CONFIG = 1;            // PPB is associated with SOC0
    AdcbRegs.ADCPPB1OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcbRegs.ADCPPB1OFFREF = 0;                       // THIS VALUE IS TODO

    /*Ic pin*/
    AdcaRegs.ADCSOC2CTL.all = 0x00;
    AdcaRegs.ADCSOC2CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC2CTL.bit.CHSEL = 0x2;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC2CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcaRegs.ADCPPB2CONFIG.bit.CONFIG = 2;            // PPB is associated with SOC0
    AdcaRegs.ADCPPB2OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcaRegs.ADCPPB2OFFREF = 0;                       // THIS VALUE IS TODO

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

    EQep1Regs.QUPRD = 2000000; // Unit Timer for 100 Hz at 200 MHz

    // Quadrature Decoder Unit (QDU) Registers
    EQep1Regs.QDECCTL.all = 0x00;    // Quadrature Decoder Control
    EQep1Regs.QDECCTL.bit.QSRC = 0;  // Position-counter source selection: Quadrature count mode (QCLK = iCLK, QDIR = iDIR)
                                     // hakansrc QSRC=2 girmis -- "0"
    EQep1Regs.QDECCTL.bit.SOEN = 0;  // Disable position-compare sync output
    EQep1Regs.QDECCTL.bit.SPSEL = 1; // Strobe pin is used for sync output: Don't care
    EQep1Regs.QDECCTL.bit.XCR = 0;   // External Clock Rate: 2x resolution: Count the rising/falling edge
    EQep1Regs.QDECCTL.bit.SWAP = 1;  // CLK/DIR Signal Source for Position Counter: Quadrature-clock inputs are not swapped
    EQep1Regs.QDECCTL.bit.IGATE = 0; // Disable gating of Index pulse
    EQep1Regs.QDECCTL.bit.QAP = 0;   // QEPA input polarity: No effect
    EQep1Regs.QDECCTL.bit.QBP = 0;   // QEPB input polarity: No effect
    EQep1Regs.QDECCTL.bit.QIP = 0;   // QEPI input polarity: No effect
    EQep1Regs.QDECCTL.bit.QSP = 0;   // QEPS input polarity: No effect

    // Position Counter and Control Unit (PCCU) Registers
    EQep1Regs.QEPCTL.all = 0x00;        // QEP Control
    EQep1Regs.QEPCTL.bit.FREE_SOFT = 0; // Emulation mode: Position counter stops immediately on emulation suspend
    EQep1Regs.QEPCTL.bit.PCRM = 1;      // Position counter reset on the maximum position
    EQep1Regs.QEPCTL.bit.IEI = 0;       // With 2, initializes the position counter on the rising edge of the QEPI signal
    EQep1Regs.QEPCTL.bit.IEL = 0;       // With 1, Latches position counter on rising edge of the index signal
    EQep1Regs.QEPCTL.bit.QPEN = 0;      // Reset the eQEP peripheral internal operating flags/read-only registers.
                                        //EQep1Regs.QEPCTL.bit.QCLM = 0; // QEP capture latch mode: Latch on position counter read by CPU
    EQep1Regs.QEPCTL.bit.QCLM = 1;      // Latch on unit time out

    EQep1Regs.QEPCTL.bit.UTE = 1; // QEP unit timer enable: Enable unit timer
    EQep1Regs.QEPCTL.bit.WDE = 1; // Enable the eQEP watchdog timer

    EQep1Regs.QPOSINIT = 0;    // Initial QPOSCNT , QPOSCNT set to zero on index event (or strobe or software if desired)
    EQep1Regs.QPOSMAX = ENCODERMAXTICKCOUNT; // Max value of QPOSCNT    /*better check this value*/

    // Quadrature edge-capture unit for low-speed measurement (QCAP)
    EQep1Regs.QCAPCTL.all = 0x00;
    EQep1Regs.QCAPCTL.bit.CEN = 1;  // eQEP capture unit is enabled
    EQep1Regs.QCAPCTL.bit.CCPS = 6; // eQEP capture timer clock prescaler: // CAPCLK = SYSCLKOUT/1
    EQep1Regs.QCAPCTL.bit.UPPS = 5; // Unit position event prescaler: UPEVNT = QCLK/1 , QCLK is triggered in every rising or falling edge of A or B
                                    // UPPS reiz veri important

    // Position Compare Control
    EQep1Regs.QPOSCTL.all = 0x0000; // Position Compare Control: Disabled
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
    EQep1Regs.QFLG.all = 0; // Interrupts are flagged here
    EQep1Regs.QCLR.all = 0; // QEP Interrupt Clear

    // added by hakansrc
    EQep1Regs.QCTMR = 0;    // This register provides time base for edge capture unit. 16 bit
    EQep1Regs.QCPRD = 0;    // This register holds the period count value between the last successive eQEP position events
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

    EQep1Regs.QEPCTL.bit.QPEN = 1; // eQEP position counter is enabled
}

void GetEncoderReadings(ModuleParameters &moduleparams)
{
    float AngleDifference = 0;
    moduleparams.AngleRad.Mechanical = ((float)EQep1Regs.QPOSCNT)/((float)ENCODERMAXTICKCOUNT)* 2.0 * PI;
    moduleparams.AngleRad.Electrical =  moduleparams.AngleRad.Mechanical*POLEPAIRS;

    /*Speed measurement*/
    if (EQep1Regs.QFLG.bit.UTO == 1) // If unit timeout (one 100 Hz period)
    {
        if(ByPass_SpeedMeasurement>=1)
        {
            ByPass_SpeedMeasurement++;
            EQep1Regs.QCLR.bit.UTO = 1;                // Clear __interrupt flag
            if(ByPass_SpeedMeasurement==3)
            {
                ByPass_SpeedMeasurement = 0;
            }
            return;
        }
        moduleparams.AngleRadTemp.Mechanical = (float) EQep1Regs.QPOSLAT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        AngleDifference = moduleparams.AngleRadTemp.Mechanical - moduleparams.AngleRadPrev.Mechanical;
        if(fabsf(AngleDifference)>=PI)
        {
            if(AngleDifference<0)
            {
                AngleDifference = AngleDifference + 2.0*PI;
            }
            else
            {
                AngleDifference = -(2.0*PI - AngleDifference) ;
            }
        }

        moduleparams.AngularSpeedRadSec.Mechanical = AngleDifference * (float) SYSCLKFREQUENCY / (float) EQep1Regs.QUPRD;
        moduleparams.AngularSpeedRadSec.Electrical = moduleparams.AngularSpeedRadSec.Mechanical*POLEPAIRS;
        moduleparams.AngularSpeedRPM.Mechanical = moduleparams.AngularSpeedRadSec.Mechanical*60.0/(2.0*PI);
        moduleparams.AngleRadPrev.Mechanical =  moduleparams.AngleRadTemp.Mechanical;
        EQep1Regs.QCLR.bit.UTO = 1;                // Clear __interrupt flag
    }
}

void GetAdcReadings(ModuleParameters &moduleparams)
{
    moduleparams.Measured.Current.PhaseA = M1_IA_CURRENT_FLOAT;
    moduleparams.Measured.Current.PhaseB = M1_IB_CURRENT_FLOAT;
    moduleparams.Measured.Current.PhaseC = M1_IC_CURRENT_FLOAT;
    moduleparams.Measured.Voltage.Vdc = M1_VDC_VOLTAGE_FLOAT;
}
void SetupCmpssProtections(void)
{
    /* For module 1
     * Ia pin is connected to ADCINC2 and CMPIN6P
     * Ib pin is connected to ADCINB2 and CMPIN3P
     * Ic pin is connected to ADCINA2 and CMPIN1P   */
    EALLOW;
    Cmpss6Regs.COMPCTL.bit.COMPDACE = 1;
    Cmpss6Regs.COMPCTL.bit.COMPHSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss6Regs.COMPCTL.bit.COMPLSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss6Regs.COMPCTL.bit.COMPLINV = 1;
    Cmpss6Regs.COMPDACCTL.bit.DACSOURCE = 0;
    Cmpss6Regs.COMPDACCTL.bit.SELREF = 0;  //Use VDDA as the reference for DAC
    Cmpss6Regs.DACHVALS.bit.DACVAL = M1_IA_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss6Regs.DACHVALA.bit.DACVAL = M1_IA_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss6Regs.DACLVALS.bit.DACVAL = M1_IA_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss6Regs.DACLVALA.bit.DACVAL = M1_IA_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss6Regs.COMPCTL.bit.CTRIPHSEL = 0;    // Configure CTRIPOUT path
    Cmpss6Regs.COMPCTL.bit.CTRIPOUTHSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss6Regs.COMPSTSCLR.bit.HLATCHCLR = 1;
    Cmpss6Regs.COMPCTL.bit.CTRIPLSEL = 0;    // Configure CTRIPOUT path
    Cmpss6Regs.COMPCTL.bit.CTRIPOUTLSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss6Regs.COMPSTSCLR.bit.LLATCHCLR = 1;

    Cmpss3Regs.COMPCTL.bit.COMPDACE = 1;
    Cmpss3Regs.COMPCTL.bit.COMPHSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss3Regs.COMPCTL.bit.COMPLSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss3Regs.COMPCTL.bit.COMPLINV = 1;
    Cmpss3Regs.COMPDACCTL.bit.DACSOURCE = 0;
    Cmpss3Regs.COMPDACCTL.bit.SELREF = 0;  //Use VDDA as the reference for DAC
    Cmpss3Regs.DACHVALS.bit.DACVAL = M1_IB_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss3Regs.DACHVALA.bit.DACVAL = M1_IB_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss3Regs.DACLVALS.bit.DACVAL = M1_IB_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss3Regs.DACLVALA.bit.DACVAL = M1_IB_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss3Regs.COMPCTL.bit.CTRIPHSEL = 0;    // Configure CTRIPOUT path
    Cmpss3Regs.COMPCTL.bit.CTRIPOUTHSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss3Regs.COMPSTSCLR.bit.HLATCHCLR = 1;
    Cmpss3Regs.COMPCTL.bit.CTRIPLSEL = 0;    // Configure CTRIPOUT path
    Cmpss3Regs.COMPCTL.bit.CTRIPOUTLSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss3Regs.COMPSTSCLR.bit.LLATCHCLR = 1;

    Cmpss1Regs.COMPCTL.bit.COMPDACE = 1;
    Cmpss1Regs.COMPCTL.bit.COMPHSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss1Regs.COMPCTL.bit.COMPLSOURCE = 0; // DAC is the source for the inverting input of the comparator
    Cmpss1Regs.COMPCTL.bit.COMPLINV = 1;
    Cmpss1Regs.COMPDACCTL.bit.DACSOURCE = 0;
    Cmpss1Regs.COMPDACCTL.bit.SELREF = 0;  //Use VDDA as the reference for DAC
    Cmpss1Regs.DACHVALS.bit.DACVAL = M1_IC_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss1Regs.DACHVALA.bit.DACVAL = M1_IC_UPPERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss1Regs.DACLVALS.bit.DACVAL = M1_IC_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss1Regs.DACLVALA.bit.DACVAL = M1_IC_LOWERBOUND_PROTECTION_ADC_VALUE_12BIT;
    Cmpss1Regs.COMPCTL.bit.CTRIPHSEL = 0;    // Configure CTRIPOUT path
    Cmpss1Regs.COMPCTL.bit.CTRIPOUTHSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss1Regs.COMPSTSCLR.bit.HLATCHCLR = 1;
    Cmpss1Regs.COMPCTL.bit.CTRIPLSEL = 0;    // Configure CTRIPOUT path
    Cmpss1Regs.COMPCTL.bit.CTRIPOUTLSEL = 0; // Asynch output feeds CTRIPH and CTRIPOUTH
    Cmpss1Regs.COMPSTSCLR.bit.LLATCHCLR = 1;

#if M1_IA_POS_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX10 = 1;
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX10 = 0;
#endif
#if M1_IA_NEG_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP4MUXENABLE.bit.MUX11 = 1;
    EPwmXbarRegs.TRIP4MUX0TO15CFG.bit.MUX11 = 0;
#endif

#if M1_IB_POS_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX4 = 1;
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX4 = 0;
#endif
#if M1_IB_NEG_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP5MUXENABLE.bit.MUX5 = 1;
    EPwmXbarRegs.TRIP5MUX0TO15CFG.bit.MUX5 = 0;
#endif

#if M1_IC_POS_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP7MUXENABLE.bit.MUX0 = 1;
    EPwmXbarRegs.TRIP7MUX0TO15CFG.bit.MUX0 = 0;
#endif
#if M1_IC_NEG_CMPSS_PROTECTION == MPC_ENABLE
    EPwmXbarRegs.TRIP7MUXENABLE.bit.MUX1 = 1;
    EPwmXbarRegs.TRIP7MUX0TO15CFG.bit.MUX1 = 0;
#endif


    EPwm1Regs.TZDCSEL.bit.DCAEVT1 = 2;
    EPwm1Regs.TZSEL.bit.DCAEVT1 = 1;
    EPwm1Regs.TZCTL.bit.TZA = TZ_FORCE_LO;
    EPwm1Regs.TZCTL.bit.TZB = TZ_FORCE_LO;
    EPwm1Regs.DCTRIPSEL.bit.DCAHCOMPSEL = 15; // all inputs are ORed
    EPwm1Regs.DCTRIPSEL.bit.DCALCOMPSEL = 15; // all inputs are ORed
    EPwm1Regs.DCAHTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm1Regs.DCALTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm1Regs.DCAHTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm1Regs.DCALTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm1Regs.DCAHTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm1Regs.DCALTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm1Regs.DCACTL.bit.EVT1SRCSEL = 0;
    EPwm1Regs.DCACTL.bit.EVT1FRCSYNCSEL = 0;

    EPwm2Regs.TZDCSEL.bit.DCAEVT1 = 2;
    EPwm2Regs.TZSEL.bit.DCAEVT1 = 1;
    EPwm2Regs.TZCTL.bit.TZA = TZ_FORCE_LO;
    EPwm2Regs.TZCTL.bit.TZB = TZ_FORCE_LO;
    EPwm2Regs.DCTRIPSEL.bit.DCAHCOMPSEL = 15; // all inputs are ORed
    EPwm2Regs.DCTRIPSEL.bit.DCALCOMPSEL = 15; // all inputs are ORed
    EPwm2Regs.DCAHTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm2Regs.DCALTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm2Regs.DCAHTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm2Regs.DCALTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm2Regs.DCAHTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm2Regs.DCALTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm2Regs.DCACTL.bit.EVT1SRCSEL = 0;
    EPwm2Regs.DCACTL.bit.EVT1FRCSYNCSEL = 0;

    EPwm3Regs.TZDCSEL.bit.DCAEVT1 = 2;
    EPwm3Regs.TZSEL.bit.DCAEVT1 = 1;
    EPwm3Regs.TZCTL.bit.TZA = TZ_FORCE_LO;
    EPwm3Regs.TZCTL.bit.TZB = TZ_FORCE_LO;
    EPwm3Regs.DCTRIPSEL.bit.DCAHCOMPSEL = 15; // all inputs are ORed
    EPwm3Regs.DCTRIPSEL.bit.DCALCOMPSEL = 15; // all inputs are ORed
    EPwm3Regs.DCAHTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm3Regs.DCALTRIPSEL.bit.TRIPINPUT4 = 1;
    EPwm3Regs.DCAHTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm3Regs.DCALTRIPSEL.bit.TRIPINPUT5 = 1;
    EPwm3Regs.DCAHTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm3Regs.DCALTRIPSEL.bit.TRIPINPUT7 = 1;
    EPwm3Regs.DCACTL.bit.EVT1SRCSEL = 0;
    EPwm3Regs.DCACTL.bit.EVT1FRCSYNCSEL = 0;

    EDIS;


}

void InitSpiDrv8305Gpio(void)
{
    EALLOW;
    GpioCtrlRegs.GPBMUX2.bit.GPIO58 = 3;  /*SPISIMOA*/
    GpioCtrlRegs.GPBGMUX2.bit.GPIO58 = 3; /*SPISIMOA*/
    GpioCtrlRegs.GPBMUX2.bit.GPIO59 = 3;  /*SPISOMIA*/
    GpioCtrlRegs.GPBGMUX2.bit.GPIO59 = 3; /*SPISOMIA*/
    GpioCtrlRegs.GPBMUX2.bit.GPIO60 = 3;  /*SPICLKA*/
    GpioCtrlRegs.GPBGMUX2.bit.GPIO60 = 3; /*SPICLKA*/
    GpioCtrlRegs.GPBMUX2.bit.GPIO61 = 3;  /*SPISTEA*/
    GpioCtrlRegs.GPBGMUX2.bit.GPIO61 = 3; /*SPISTEA*/
    EDIS;
}

// WARNING, why there is a TODO? we may need to fix it later
// ****************************************************************************
// ****************************************************************************
//TODO SPI Configuration
// ****************************************************************************
// ****************************************************************************
void InitSpiRegs_DRV830x(volatile struct SPI_REGS *s)
{
    s->SPICCR.bit.SPISWRESET = 0;  // Put SPI in reset state
    s->SPICCR.bit.SPICHAR = 0xF;   // 16-bit character
    s->SPICCR.bit.SPILBK = 0;      // loopback off
    s->SPICCR.bit.CLKPOLARITY = 0; // Rising edge without delay

    s->SPICTL.bit.SPIINTENA = 0;     // disable SPI interrupt
    s->SPICTL.bit.TALK = 1;          // enable transmission
    s->SPICTL.bit.MASTER_SLAVE = 1;  // master
    s->SPICTL.bit.CLK_PHASE = 0;     // Rising edge without delay
    s->SPICTL.bit.OVERRUNINTENA = 0; // disable reciever overrun interrupt

    s->SPIBRR.bit.SPI_BIT_RATE = 19; // SPICLK = LSPCLK / 4 (max SPICLK)

    s->SPICCR.bit.SPISWRESET = 1; // Enable SPI
}
void InitDRV8305Regs(DRV8305_Vars *deviceptr)
{
    deviceptr->cntrl5_hs_gd.all = 0;
    deviceptr->cntrl6_ls_gd.all = 0;
    deviceptr->cntrl7_gd.all = 0;
    deviceptr->cntrl9_IC_ops.all = 0;
    deviceptr->cntrlA_shunt_amp.all = 0;
    deviceptr->cntrlB_Vreg.all = 0;
    deviceptr->cntrlC_Vds_SNS.all = 0;

    deviceptr->cntrl5_hs_gd.bit.IDRIVEN_HS = drv8305_idriveN_hs_60mA;
    deviceptr->cntrl5_hs_gd.bit.IDRIVEP_HS = drv8305_idriveP_hs_50mA;
    deviceptr->cntrl5_hs_gd.bit.TDRIVEN = drv8305_tdriveN_250nS;

    deviceptr->cntrl6_ls_gd.bit.IDRIVEN_LS = drv8305_idriveN_ls_60mA;
    deviceptr->cntrl6_ls_gd.bit.IDRIVEP_LS = drv8305_idriveP_ls_50mA;
    deviceptr->cntrl6_ls_gd.bit.TDRIVEP = drv8305_tdriveP_250nS;

    deviceptr->cntrl7_gd.bit.COMM_OPTION = drv8305_comm_diode_FW;
    deviceptr->cntrl7_gd.bit.PWM_MODE = drv8305_PWM_mode_3;
    deviceptr->cntrl7_gd.bit.DEAD_TIME = drv8305_deadTime_100nS;
    deviceptr->cntrl7_gd.bit.TBLANK = drv8305_tblank_2us;
    deviceptr->cntrl7_gd.bit.TVDS = drv8305_tblank_4us;

    deviceptr->cntrl9_IC_ops.bit.Flip_OTS = drv8305_disable_OTS;
    deviceptr->cntrl9_IC_ops.bit.DIS_VPVDD_UVLO2 = drv8305_disable_PVDD_UVLO2_fault;//drv8305_enable_PVDD_UVLO2_fault;
    deviceptr->cntrl9_IC_ops.bit.DIS_GDRV_FAULT = drv8305_enable_gdrv_fault;
    deviceptr->cntrl9_IC_ops.bit.EN_SNS_CLAMP = drv8305_disable_Sns_Clamp;
    deviceptr->cntrl9_IC_ops.bit.WD_DLY = drv8305_wd_dly_20mS;
    deviceptr->cntrl9_IC_ops.bit.DIS_SNS_OCP = drv8305_enable_SnsOcp;
    deviceptr->cntrl9_IC_ops.bit.WD_EN = drv8305_disable_WD;
    deviceptr->cntrl9_IC_ops.bit.SLEEP = drv8305_sleep_No;
    deviceptr->cntrl9_IC_ops.bit.CLR_FLTS = drv8305_ClrFaults_No; // fault clearing bit
    deviceptr->cntrl9_IC_ops.bit.SET_VCPH_UV = drv8305_set_Vcph_UV_4p9V;

    deviceptr->cntrlA_shunt_amp.bit.GAIN_CS1 = (DRV_GAIN == 10) ? drv8305_gain_CS_10 : (DRV_GAIN == 20) ? drv8301_gain_20 : (DRV_GAIN == 40) ? drv8301_gain_40 : drv8301_gain_80;
    deviceptr->cntrlA_shunt_amp.bit.GAIN_CS2 = (DRV_GAIN == 10) ? drv8305_gain_CS_10 : (DRV_GAIN == 20) ? drv8301_gain_20 : (DRV_GAIN == 40) ? drv8301_gain_40 : drv8301_gain_80;
    deviceptr->cntrlA_shunt_amp.bit.GAIN_CS3 = (DRV_GAIN == 10) ? drv8305_gain_CS_10 : (DRV_GAIN == 20) ? drv8301_gain_20 : (DRV_GAIN == 40) ? drv8301_gain_40 : drv8301_gain_80;
    deviceptr->cntrlA_shunt_amp.bit.CS_BLANK = drv8305_cs_blank_0ns;
    deviceptr->cntrlA_shunt_amp.bit.DC_CAL_CH1 = drv8305_dc_cal_off;
    deviceptr->cntrlA_shunt_amp.bit.DC_CAL_CH2 = drv8305_dc_cal_off;
    deviceptr->cntrlA_shunt_amp.bit.DC_CAL_CH3 = drv8305_dc_cal_off;

    deviceptr->cntrlB_Vreg.bit.VREF_SCALING = drv8305_vref_scaling_2;
    deviceptr->cntrlB_Vreg.bit.SLEEP_DLY = drv8305_sleep_dly_10uS;
    deviceptr->cntrlB_Vreg.bit.DIS_VREG_PWRGD = 0; // temporary //
    deviceptr->cntrlB_Vreg.bit.VREG_UV_LEVEL = drv8305_vreg_UV_level_30percent;

    deviceptr->cntrlC_Vds_SNS.bit.VDS_LEVEL = drv8305_vds_level_1175mV;
    deviceptr->cntrlC_Vds_SNS.bit.VDS_MODE = drv8305_vds_mode_latchedShutDown;

    return;
}
void ReadDRV8305Registers(DRV8305_Vars *deviceptr)
{




    // ===============================================
    // read all status and control registers
    // ===============================================
    deviceptr->status1_wwd.all = DRV8305_SPI_Read(deviceptr, DRV8305_S1_WWD_ADDR) & 0x05ff;              // read DRV8305 status reg 1
    deviceptr->status2_ov_vds.all = DRV8305_SPI_Read(deviceptr, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7; // read DRV8305 status reg 2
    deviceptr->status3_IC.all = DRV8305_SPI_Read(deviceptr, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;         // read DRV8305 status reg 3
    deviceptr->status4_gd_Vgs.all = DRV8305_SPI_Read(deviceptr, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0; // read DRV8305 status reg 4



    return;
}

void InitDRV8305(DRV8305_Vars *deviceptr)
{
    Uint16 tmp1, *ptr1, *ptr2;

    // ===============================================================
    // write all control regs, ignore the return value of each write
    // ===============================================================
    //  for (tmp1=5; tmp1<= 0xc; tmp1++)
    //  {
    //      if (tmp1 != 8)
    //          tmp2 = DRV8305_SPI_Write(motor, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
    //  }

    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 5
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 6
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR);             //write to DRV8305 control reg 7
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR);               //write to DRV8305 control reg 9
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR);      //write to DRV8305 control reg A
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR);           //write to DRV8305 control reg B
    tmp1 = DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR);        //write to DRV8305 control reg C

    // ===============================================
    // read all status and control registers
    // ===============================================
    deviceptr->status1_wwd.all = DRV8305_SPI_Read(deviceptr, DRV8305_S1_WWD_ADDR) & 0x05ff;              // read DRV8305 status reg 1
    deviceptr->status2_ov_vds.all = DRV8305_SPI_Read(deviceptr, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7; // read DRV8305 status reg 2
    deviceptr->status3_IC.all = DRV8305_SPI_Read(deviceptr, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;         // read DRV8305 status reg 3
    deviceptr->status4_gd_Vgs.all = DRV8305_SPI_Read(deviceptr, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0; // read DRV8305 status reg 4
    deviceptr->readCntrl5 = DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 5
    deviceptr->readCntrl6 = DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 6
    deviceptr->readCntrl7 = DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR) & 0x03ff;             // read DRV8305 control reg 7
    deviceptr->readCntrl9 = DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR) & 0x07ff;               // read DRV8305 control reg 9
    deviceptr->readCntrlA = DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR) & 0x07ff;      // read DRV8305 control reg A
    deviceptr->readCntrlB = DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR) & 0x031f;           // read DRV8305 control reg B
    deviceptr->readCntrlC = DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR) & 0x00ff;        // read DRV8305 control reg C

    // ===============================================
    // DRV Fault diagnostics -  and Control regs
    // ===============================================
    ptr1 = (Uint16 *)&(deviceptr->Rsvd0);
    ptr2 = (Uint16 *)&(deviceptr->readCntrl5);
    deviceptr->DRV_fault = 0;

    // check all Status regs
    for (tmp1 = 1; tmp1 <= 0x4; tmp1++)
    {
        if (ptr1[tmp1])
            deviceptr->DRV_fault |= 1 << tmp1;
    }

    // check all control regs
    for (; tmp1 <= 0xc; tmp1++)
    {
        if (tmp1 != 8)
            if (ptr1[tmp1] != *ptr2++)
                deviceptr->DRV_fault |= 1 << tmp1;
    }

    return;
}
Uint16 SPI_Driver(volatile struct SPI_REGS *s, Uint16 data)
{
    s->SPITXBUF = data; // send out the data
    while (s->SPISTS.bit.INT_FLAG == 0)
        ;               // wait for the packet to complete
    data = s->SPIRXBUF; // data read to clear the INT_FLAG bit

    return (data);
}

Uint16 DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address)
{
    DELAY_US(10);
    union DRV830x_SPI_WRITE_WORD_REG w;
    Uint16 *cntrlReg;

    cntrlReg = &(deviceptr->Rsvd0);

    w.bit.R_W = 0;                  // write - 0
    w.bit.ADDRESS = address;        // load the address
    w.bit.DATA = cntrlReg[address]; // data to be written

    return (SPI_Driver(&SpiaRegs, w.all));
}
Uint16 DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address)
{
    union DRV830x_SPI_WRITE_WORD_REG w;

    w.bit.R_W = 1;           // read - 1
    w.bit.ADDRESS = address; // load the address
    w.bit.DATA = 0;          // data to be written

    return (SPI_Driver(&SpiaRegs, w.all));
}

void CalculateOffsetValue(void)
{
    for (OffsetCalCounter = 0; OffsetCalCounter < 50000;)
    {
        if (EPwm1Regs.ETFLG.bit.SOCA == 1)
        {
            if (OffsetCalCounter > 2500)
            {
                Module1_Parameters.OffsetValue.PhaseA = K1 * Module1_Parameters.OffsetValue.PhaseA + K2 * M1_ADCRESULT_IA * ADC_PU_SCALE_FACTOR; //Module1 : Phase A offset
                Module1_Parameters.OffsetValue.PhaseB = K1 * Module1_Parameters.OffsetValue.PhaseB + K2 * M1_ADCRESULT_IB * ADC_PU_SCALE_FACTOR; //Module1 : Phase B offset
                Module1_Parameters.OffsetValue.PhaseC = K1 * Module1_Parameters.OffsetValue.PhaseC + K2 * M1_ADCRESULT_IC * ADC_PU_SCALE_FACTOR; //Module1 : Phase C offset
#if 0
                motor1.offset_shntA = K1*motor1.offset_shntA + K2*(IFB_A1)*ADC_PU_SCALE_FACTOR;     //Mtr1 : Phase A offset
                motor1.offset_shntB = K1*motor1.offset_shntB + K2*(IFB_B1)*ADC_PU_SCALE_FACTOR;     //Mtr1 : Phase B offset
                motor1.offset_shntC = K1*motor1.offset_shntC + K2*(IFB_C1)*ADC_PU_SCALE_FACTOR;     //Mtr1 : Phase C offset
#endif
            }
            EPwm1Regs.ETCLR.bit.SOCA = 1;
            OffsetCalCounter++;
        }
    }
    EALLOW;
    AdccRegs.ADCPPB1OFFREF = Module1_Parameters.OffsetValue.PhaseA * 4096.0;
    AdcbRegs.ADCPPB1OFFREF = Module1_Parameters.OffsetValue.PhaseB * 4096.0;
    AdcaRegs.ADCPPB2OFFREF = Module1_Parameters.OffsetValue.PhaseC * 4096.0;
    EDIS;
    OffsetCalculationIsDone = 1;
}


__interrupt void epwm1_isr(void)
{
    /*This will be the main control isr*/
    /*check ADCBSY register if  it makes here wait*/
    /*TODO, need to consider alignment scenario*/


    RunTimeProtectionControl();

    ControlISRCounter++;




    if (OffsetCalculationIsDone == 0)
    {
        EPwm1Regs.ETCLR.bit.INT = 1;
        PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
        return;
    }

    GetEncoderReadings(Module1_Parameters);


    GetAdcReadings(Module1_Parameters);


    CalculateParkTransform(Module1_Parameters);

    if (OperationMode == MODE_MPCCONTROLLER)
    {
        SpeedRefRadSec =  ramper(SpeedRefRadSec, SpeedRefRPM/60.0*2.0*PI, 0.0001); // rate transition is around approximately 1 RPM per second

        PI_iq.Input = SpeedRefRadSec - Module1_Parameters.AngularSpeedRadSec.Mechanical;
        Run_PI_Controller(PI_iq);

        Module1_Parameters.Reference.Iq = PI_iq.Output;
        Module1_Parameters.Reference.Id = IDREF;

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

        GetSvpwmDutyCycles(Module1_Parameters.SecondHorizon[Module1_Parameters.MinimumCostIndex].SvpwmT1,\
                           Module1_Parameters.SecondHorizon[Module1_Parameters.MinimumCostIndex].SvpwmT2,\
                           Module1_Parameters.SecondHorizon[Module1_Parameters.MinimumCostIndex].SvpwmT0,\
                           (1.0/((float)Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex])),\
                           Module1_Parameters.SecondHorizon[Module1_Parameters.MinimumCostIndex].VoltageVectorAngleRad,\
                           Module1_Parameters.PhaseADutyCycle,\
                           Module1_Parameters.PhaseBDutyCycle,\
                           Module1_Parameters.PhaseCDutyCycle);
    }
    else if (OperationMode == MODE_ALIGNMENT)
    {

        Module1_Parameters.PhaseADutyCycle = ALIGNMENT_DC_CURRENT*RS_VALUE/Module1_Parameters.Measured.Voltage.Vdc;
        Module1_Parameters.PhaseBDutyCycle = 0;
        Module1_Parameters.PhaseCDutyCycle = 0;

        if(AngleHasBeenReset==0)
        {
            EQep1Regs.QCLR.bit.IEL = 1;                     // Reset position cnt for QEP
            EQep1Regs.QCLR.bit.UTO = 1;                     // Reset position cnt for QEP
            EQep1Regs.QPOSCNT = 360;//((ENCODERMAXTICKCOUNT+1)/POLEPAIRS)/4;  // Reset position cnt for QEP
        }



        AlignmentCounter++;
        if(AlignmentCounter>=ALIGNMENTCOUNTVALUE)
        {

            AngleHasBeenReset = 1;

            /*should I reset some values?*/
            PI_iq.Input = 0;
            PI_iq.Input_prev = 0;
            PI_iq.Output = 0;
            PI_iq.Output_prev = 0;

            ZeroiseModule1Parameters();

            Module1_Parameters.PhaseADutyCycle = 0;
            Module1_Parameters.PhaseBDutyCycle = 0;
            Module1_Parameters.PhaseCDutyCycle = 0;
        }
        if(AlignmentCounter>=((uint32_t)MPC_STARTCOUNTVALUE))
        {
            OperationMode = MODE_MPCCONTROLLER;
            EPwm1Regs.ETCLR.bit.INT = 1;
            PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
            return;
        }


    }
    else if (OperationMode == MODE_RLLOAD)
    {
        if(ControlISRCounter%ClockMod==0)
        {
            PwmFrequency = PwmFrequency + PwmFrequencyIncrement;
            if(PwmFrequency >= 11000)
            {
                PwmFrequency = 1000;
            }
            EPwm1Regs.TBPRD = (Uint16 )((SYSCLKFREQUENCY) / (PwmFrequency * 4.0));
            EPwm2Regs.TBPRD = (Uint16 )((SYSCLKFREQUENCY) / (PwmFrequency * 4.0));
            EPwm3Regs.TBPRD = (Uint16 )((SYSCLKFREQUENCY) / (PwmFrequency * 4.0));
        }
        PhaseIncrement = 2*PI*RL_Load_Operation.Frequency/PwmFrequency;
        PhaseValue = PhaseValue + PhaseIncrement;
        /*TODO test variable frequency*/
        Module1_Parameters.PhaseADutyCycle = RL_Load_Operation.ma * ((sinf(PhaseValue)) * 0.5 + 0.5);
        Module1_Parameters.PhaseBDutyCycle = RL_Load_Operation.ma * ((sinf(PhaseValue+ TWO_PI_OVER_THREE) ) * 0.5 + 0.5);
        Module1_Parameters.PhaseCDutyCycle = RL_Load_Operation.ma * ((sinf(PhaseValue + 2.0 * TWO_PI_OVER_THREE)) * 0.5 + 0.5);
    }
    else if (OperationMode == MODE_NO_OPERATION)
    {
    }



#if ENABLE_MPC==1
    if(OperationMode == MODE_MPCCONTROLLER)
    {
        EPwm1Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm2Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm3Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
    }
#endif

    FswDecided = Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex];

#if ENABLE_MPC==1
    if(OperationMode==MODE_MPCCONTROLLER)
    {
        if(Module1_Parameters.PhaseADutyCycle>1.0)
            Module1_Parameters.PhaseADutyCycle = 1.0;
        if(Module1_Parameters.PhaseADutyCycle<0)
            Module1_Parameters.PhaseADutyCycle = 0;
        if(Module1_Parameters.PhaseBDutyCycle>1.0)
            Module1_Parameters.PhaseBDutyCycle = 1.0;
        if(Module1_Parameters.PhaseBDutyCycle<0)
            Module1_Parameters.PhaseBDutyCycle = 0;
        if(Module1_Parameters.PhaseCDutyCycle>1.0)
            Module1_Parameters.PhaseCDutyCycle = 1.0;
        if(Module1_Parameters.PhaseCDutyCycle<0)
            Module1_Parameters.PhaseCDutyCycle = 0;

        EPwm1Regs.CMPA.bit.CMPA = (Uint16 )(Module1_Parameters.PhaseADutyCycle*((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm2Regs.CMPA.bit.CMPA = (Uint16 )(Module1_Parameters.PhaseBDutyCycle*((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm3Regs.CMPA.bit.CMPA = (Uint16 )(Module1_Parameters.PhaseCDutyCycle*((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
    }
    else
    {
        EPwm1Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseADutyCycle*EPwm1Regs.TBPRD;
        EPwm2Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseBDutyCycle*EPwm2Regs.TBPRD;
        EPwm3Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseCDutyCycle*EPwm3Regs.TBPRD;
    }


#else
#if 0
    if(Module1_Parameters.PhaseADutyCycle>1.0)
        Module1_Parameters.PhaseADutyCycle = 1.0;
    if(Module1_Parameters.PhaseADutyCycle<0)
        Module1_Parameters.PhaseADutyCycle = 0;
    if(Module1_Parameters.PhaseBDutyCycle>1.0)
        Module1_Parameters.PhaseBDutyCycle = 1.0;
    if(Module1_Parameters.PhaseBDutyCycle<0)
        Module1_Parameters.PhaseBDutyCycle = 0;
    if(Module1_Parameters.PhaseCDutyCycle>1.0)
        Module1_Parameters.PhaseCDutyCycle = 1.0;
    if(Module1_Parameters.PhaseCDutyCycle<0)
        Module1_Parameters.PhaseCDutyCycle = 0;
#endif
    EPwm1Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseADutyCycle*EPwm1Regs.TBPRD;
    EPwm2Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseBDutyCycle*EPwm2Regs.TBPRD;
    EPwm3Regs.CMPA.bit.CMPA = Module1_Parameters.PhaseCDutyCycle*EPwm3Regs.TBPRD;
#endif



    if (SendOneInFour % 4 == 0)
    {
        DataToBeSent[0] = Module1_Parameters.Measured.Current.PhaseA;
        DataToBeSent[1] = Module1_Parameters.Measured.Current.PhaseB;
        DataToBeSent[2] = Module1_Parameters.AngularSpeedRPM.Mechanical;
        DataToBeSent[3] = FswDecided;
        DataToBeSent[4] = Module1_Parameters.Measured.Current.transformed.Dvalue; //;M1_IA_CURRENT_FLOAT;
        DataToBeSent[5] = Module1_Parameters.Measured.Current.transformed.Qvalue;

        SciSendMultipleFloatWithTheTag(DataToBeSent, 6);
    }

    SendOneInFour++;



    EPwm1Regs.ETCLR.bit.INT = 1;
    // Acknowledge this interrupt to receive more interrupts from group 3
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}
interrupt void xint1_isr(void)
{
    Xint1Count++;
    if(Xint1Count<2)
    {
        EQep1Regs.QPOSCNT = 1340;
        Module1_Parameters.AngleRadPrev.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        Module1_Parameters.AngleRadTemp.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        ByPass_SpeedMeasurement = 1;

    }
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}
void RunTimeProtectionControl(void)
{
    if((fabsf(M1_IA_CURRENT_FLOAT)>M1_IA_RUNTIME_PROTECTION_VALUE)||(fabsf(M1_IB_CURRENT_FLOAT)>M1_IB_RUNTIME_PROTECTION_VALUE)||(fabsf(M1_IC_CURRENT_FLOAT)>M1_IC_RUNTIME_PROTECTION_VALUE))
    {
        EPwm1Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm2Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm3Regs.TZFRC.bit.DCAEVT1 = 1;
    }
    if((M1_VDC_VOLTAGE_FLOAT>M1_VDC_UPPERBOUND_PROTECTION)||(M1_VDC_VOLTAGE_FLOAT<M1_VDC_LOWERBOUND_PROTECTION))
    {
        EPwm1Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm2Regs.TZFRC.bit.DCAEVT1 = 1;
        EPwm3Regs.TZFRC.bit.DCAEVT1 = 1;
    }
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
void ZeroiseModule1Parameters(void)
{
    memset(&Module1_Parameters.Measured, 0, sizeof(MeasuredParams));
    memset(&Module1_Parameters.FirstHorizon, 0, sizeof(PredictionParameters));
    memset(&Module1_Parameters.SecondHorizon, 0, sizeof(PredictionParameters));
    Module1_Parameters.MinimumCostIndex = 0;
    Module1_Parameters.MinimumCostValue = 0;
    memset(&Module1_Parameters.Cost,0,sizeof(float)*NUMBEROFMPCLOOPS);
    memset(&Module1_Parameters.AngleRad,0,sizeof(Angle));
    memset(&Module1_Parameters.AngleRadPrev,0,sizeof(Angle));
    memset(&Module1_Parameters.AngleRadTemp,0,sizeof(Angle));
    memset(&Module1_Parameters.AngularSpeedRadSec,0,sizeof(AngularSpeed));
    memset(&Module1_Parameters.AngularSpeedRPM,0,sizeof(AngularSpeed));
    memset(&Module1_Parameters.OffsetValue,0,sizeof(Offset));
    Module1_Parameters.PhaseADutyCycle = 0;
    Module1_Parameters.PhaseBDutyCycle = 0;
    Module1_Parameters.PhaseCDutyCycle = 0;
}
// slew programmable ramper
float ramper(float in, float out, float rampDelta)
{
    float err;

    err = in - out;
    if (err > rampDelta)
        return(out + rampDelta);
    else if (err < -rampDelta)
        return(out - rampDelta);
    else
        return(in);
}
