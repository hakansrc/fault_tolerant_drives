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
#include "CustomTypeDefs.h"
#include "MultipleFloatDataSender.h"
#include "DRV8305_defs.h"
#include "F2837xD_Ipc_drivers.h"


#define TORQUE_DISTRIBUTION_STEP    100
uint16_t    FaultFlag = NO_FAULT;
void PerformTorqueDistribution(void);
static inline void CalculateLosses(float IqRef, unsigned int uiIndex);

float M1_Possible_Iq = 0.0f;
float M1_Possible_Id = 0.0f;
float M2_Possible_Iq = 0.0f;
float M2_Possible_Id = 0.0f;

float M1_Iq_Candidate_Coefficient = 0.0f;
float M1_Id_Candidate_Coefficient = 0.0f;

float M1_d_axis_flux = 0.0f;
float M1_q_axis_flux = 0.0f;
float M2_d_axis_flux = 0.0f;
float M2_q_axis_flux = 0.0f;

unsigned int minimumlossindex = 0;
float minimumlossvalue = 1e35;

float M1_Candidate_Iqref[TORQUE_DISTRIBUTION_STEP];
float M1_Candidate_Idref[TORQUE_DISTRIBUTION_STEP];
float M2_Candidate_Iqref[TORQUE_DISTRIBUTION_STEP];
float M2_Candidate_Idref[TORQUE_DISTRIBUTION_STEP];

float M1_copper_loss = 0;
float M2_copper_loss = 0;
float M1_core_loss = 0;
float M2_core_loss = 0;

float TotalLoss[TORQUE_DISTRIBUTION_STEP];



/*TODO s
 *
 * */

#pragma DATA_SECTION("CLAData")
uint32_t    Cla1Task1_counter = 0;
#pragma DATA_SECTION("CLAData")
float    Clacoscalc = 0;
#pragma DATA_SECTION("CLAData")
float       M1_FswDecided_cla = 1000;
#pragma DATA_SECTION("CLAData")
ModuleParameters Module1_Parameters_cla;
#pragma DATA_SECTION("CLAData")
PID_Parameters      PI_iq_cla;
#pragma DATA_SECTION("CLAData")
float       SpeedRefRadSec = 0;
#pragma DATA_SECTION("CLAData")
float       SpeedRefRPM = -90;
#pragma DATA_SECTION("CLAData")
unsigned int        M1_OperationMode = MODE_NO_OPERATION;
#pragma DATA_SECTION("CLAData")
float       M1_ElectricalAngle = 0;

#pragma DATA_SECTION("CLAData")
float M1_minimumloss_iqref = 0.0f;



#pragma DATA_SECTION("M2_MINIMUMLOSS_IQ_LOCATION")
float M2_minimumloss_iqref = 0.0f;

uint16_t    ByPass_SpeedMeasurement = 0;

#pragma DATA_SECTION("M2_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module2_Parameters;
#pragma DATA_SECTION("PI_IQ_LOCATION")
PID_Parameters      PI_iq;

#pragma DATA_SECTION("M2_OPERATION_MODE_LOCATION")
unsigned int        M2_OperationMode = MODE_NO_OPERATION; /*this will be changed */
#pragma DATA_SECTION("M1_PARAMS_ADDRESS_LOCATION")
ModuleParameters Module1_Parameters;

#pragma DATA_SECTION("M1_FSWDECIDED_LOCATION")
float       M1_FswDecided = 1000;
#pragma DATA_SECTION("M2_FSWDECIDED_LOCATION")
float       M2_FswDecided = 1000;


OpenLoopOperation   RL_Load_Operation = {25, 0.5}; // 0 hz, 0 magnitude

unsigned int        M1_StartOperation = 1; /*if this is 0, then no operation will be performed. It will be set inside the debugger*/
unsigned long int   M1_BlankCounter = 0;

uint32_t            CLA1Task1End_counter = 0;

DRV8305_Vars        M1_Device1Configuration;
DRV8305_Vars        M2_Device1Configuration;
int32_t             M1_OffsetCalCounter;
int32_t             M2_OffsetCalCounter;
uint16_t            M1_OffsetCalculationIsDone = 0;
uint16_t            M2_OffsetCalculationIsDone = 0;
float K1 = (0.998),  // Offset filter coefficient K1: 0.05/(T+0.05);
    K2 = (0.001999); // Offset filter coefficient K2: T/(T+0.05);

__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/

__interrupt void epwm1_isr(void);       /*prototype of the ISR functions*/
__interrupt void xint1_isr(void);       /*prototype of the ISR functions*/

__interrupt void ipc0_isr(void);       /*prototype of the ISR functions*/

__interrupt void CLATask1_PCC_Is_Done(void);

void InitializationRoutine(void); /*all modules and gpios are initialized inside this function.*/
void InitializeEpwm1Registers(void);
void InitializeEpwm2Registers(void);
void InitializeEpwm3Registers(void);
void InitializeADCs(void);
void SetupGPIOs(void);
void EQEP1_Setup(void);
void EQEP2_Setup(void);
void AssignGSRAMs(void);
void Run_PI_Controller(PID_Parameters &pidparams);
void CalculateParkTransform(ModuleParameters &moduleparams);
void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount);
void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount);

void GetEncoderReadings(ModuleParameters &moduleparams);
void GetAdcReadings(ModuleParameters &moduleparams);
void SetupCmpssProtections(void);
void InitSpiDrv8305Gpios(void);
void InitSpiRegs_DRV830x(volatile struct SPI_REGS *s);
void InitDRV8305Regs(DRV8305_Vars *motor);
Uint16 M1_DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 M1_DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 M2_DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 M2_DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address);
Uint16 SPI_Driver(volatile struct SPI_REGS *s, Uint16 data);
void M1_InitDRV8305(DRV8305_Vars *deviceptr);
void M2_InitDRV8305(DRV8305_Vars *deviceptr);
void M1_ReadDRV8305Registers(DRV8305_Vars *deviceptr);
void M1_CalculateOffsetValue(void);
void M2_CalculateOffsetValue(void);
void RunTimeProtectionControl(void);
void GetSvpwmDutyCycles(float T1, float T2, float T0,float Ts,float VectorAngleRad, float &DutyA, float &DutyB, float &DutyC);
void ZeroiseModule1Parameters(void);
float ramper(float in, float out, float rampDelta);

void InitializePeripharelsForCpu2(void);
void InitializeGpiosForCpu2(void);

uint32_t    SvpwmSectorNumber = 0;
uint32_t    ControlISRCounter = 0;
uint32_t    AlignmentCounter = 0;
float       DataToBeSent[6];
uint32_t    SendOneInFour = 0;
uint32_t    Xint1Count = 0;

float       PhaseIncrement = 0;
float       PhaseValue = 0;
uint16_t    PwmFrequency = INITIALPWMFREQ;
uint16_t    PwmFrequencyIncrement = 0;
uint16_t    ClockMod = 1000;
uint16_t    ReadDrv8305RegistersFlag = 0;
uint16_t    AngleHasBeenReset = 0;
uint16_t    SpeedRefArrayCount = 0;
float       SpeedRefArray[4] = {-35,80,35,-80};

/*Following flag will be replaced with an IPC call*/
uint16_t    StartOperationCpu2 = 0; // when this is set to 1, cpu2 will start operation & inverter2 will contribute to the traction

/*TODO's before starting two module operation, following variables will be put to GSRAMs
 * 1- StartOperationCpu2 ( will be replaced with an IPC call)
 * 2- PI_iq (done)
 * 3- M1_OperationMode & M2_OperationMode (done)
 * 4- SpeedRefRPM (done)
 * 5- Module1_Parameters
 * */

float offsetval[3] = {0,0,0};
uint32_t    Ipc0Counter = 0;
void CLA_configClaMemory(void);
void CLA_initCpu1Cla1(void);

uint64_t    torque_distributor_start = 0;
uint64_t    torque_distributor_end = 0;
uint64_t    torque_distributor_timedifference = 0;
float       time_in_usec = 0.0f;


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


    while (M1_StartOperation == 0)
    {
        if ((M1_BlankCounter % 10) == 0)
        {
            GpioDataRegs.GPATOGGLE.bit.GPIO31 = 1;
            GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;
        }

        M1_BlankCounter++;
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
    PieVectTable.IPC0_INT = &ipc0_isr;        /*specify the interrupt service routine (ISR) address to the PIE table*/
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

#if 1
    EALLOW;
    InputXbarRegs.INPUT1SELECT = 20;
    InputXbarRegs.INPUT2SELECT = 21;
    EDIS;

    EALLOW;
    OutputXbarRegs.OUTPUT3MUX0TO15CFG.bit.MUX1 = 1; // this gets input from INPUTXBAR1, i.e. outputxbar3
    OutputXbarRegs.OUTPUT4MUX0TO15CFG.bit.MUX3 = 1; // this gets input from INPUTXBAR2, i.e. outputxbar4

    OutputXbarRegs.OUTPUT3MUXENABLE.bit.MUX1 = 1;
    OutputXbarRegs.OUTPUT4MUXENABLE.bit.MUX3 = 1;
    EDIS;

    EALLOW;

    /*  On the hardware setup, GPIO14&GPIO24 and GPIO15&GPIO25 will be connected together.
     *  This way, eqep2 will directly get the A-B signals from the encoder */


    GpioCtrlRegs.GPAGMUX1.bit.GPIO14 = 1;
    GpioCtrlRegs.GPAMUX1.bit.GPIO14 = 2;    // GPIO14 is now outputxbar3, i.e. EQEP1A signals are coming to this pin right now

    GpioCtrlRegs.GPAGMUX1.bit.GPIO15 = 1;
    GpioCtrlRegs.GPAMUX1.bit.GPIO15 = 2;    // GPIO15 is now outputxbar4, i.e. EQEP1B signals are coming to this pin right now

    GpioCtrlRegs.GPAGMUX2.bit.GPIO24 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO24 = 2;    // GPIO24 is EQEP2A

    GpioCtrlRegs.GPAGMUX2.bit.GPIO25 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO25 = 2;    // GPIO25 is EQEP2B
    EDIS;

    EQEP2_Setup();
#endif

#if 1

    CLA_configClaMemory();
    CLA_initCpu1Cla1();
    PieCtrlRegs.PIEIER11.bit.INTx1 = 1;  // Enable PIE Group 11 INT1, CLA1_1 interrupt
    IER |= (M_INT11 );

#endif

    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 and XINT1 interrupt*/
    IER |= M_INT3;  /*Enable the PIE group of Epwm1 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/

    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/
    PieCtrlRegs.PIEIER1.bit.INTx13 = 1;  /*Enable the 13th interrupt of the Group 1, which is for ipc 0 interrupt*/
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1;  /*Enable the 1st interrupt of the Group 3, which is for epwm1 interrupt*/
    PieCtrlRegs.PIEIER1.bit.INTx4 = 1;  // Enable PIE Group 1 INT4

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;  /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1; /*start the global TimeBase clock */
    EDIS;

    DELAY_US(50);
    M1_CalculateOffsetValue();                 // Calculate the offset value of the current measurements.
    M2_CalculateOffsetValue();

    M1_OperationMode = MODE_ALIGNMENT; // start with the selected mode

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
            M1_ReadDRV8305Registers(&M1_Device1Configuration);
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
    if((M1_OperationMode==MODE_MPCCONTROLLER)||(M1_OperationMode==MODE_CLA_MPCCONTROLLER))
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
void CalculateParkTransform(ModuleParameters &moduleparams)
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
void ExecuteFirstPrediction(ModuleParameters &moduleparams, unsigned int indexcount)
{
    moduleparams.CurrentHorizon[indexcount].VdPrediction = moduleparams.FirstHorizon[indexcount].VdPrediction;  // First horizon prediction on the previous horizon is our current value now
    moduleparams.CurrentHorizon[indexcount].VqPrediction = moduleparams.FirstHorizon[indexcount].VqPrediction;  // First horizon prediction on the previous horizon is our current value now

    moduleparams.FirstHorizon[indexcount].IdPrediction = moduleparams.Measured.Current.transformed.Dvalue + (0.5 / M1_FswDecided) * (moduleparams.CurrentHorizon[indexcount].VdPrediction / M1_LS_VALUE - M1_RS_VALUE / M1_LS_VALUE * moduleparams.Measured.Current.transformed.Dvalue + M1_LS_VALUE / M1_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Qvalue);
    moduleparams.FirstHorizon[indexcount].IqPrediction = moduleparams.Measured.Current.transformed.Qvalue + (0.5 / M1_FswDecided) * (moduleparams.CurrentHorizon[indexcount].VqPrediction / M1_LS_VALUE - M1_RS_VALUE / M1_LS_VALUE * moduleparams.Measured.Current.transformed.Qvalue - M1_LS_VALUE / M1_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.Measured.Current.transformed.Dvalue - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / M1_LS_VALUE);
}
void ExecuteSecondPrediction(ModuleParameters &moduleparams, unsigned int indexcount)
{
    moduleparams.FirstHorizon[indexcount].VdPrediction = M1_VD_VQ_KP * (moduleparams.Reference.Id -  moduleparams.FirstHorizon[indexcount].IdPrediction) * (1.0 + M1_VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Dvalue - POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * M1_LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction;
    moduleparams.FirstHorizon[indexcount].VqPrediction = M1_VD_VQ_KP * (moduleparams.Reference.Iq -  moduleparams.FirstHorizon[indexcount].IqPrediction) * (1.0 + M1_VD_VQ_KI / moduleparams.OptimizationFsw[indexcount]) + moduleparams.Measured.Current.transformed.Qvalue + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * (M1_LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction+ FLUX_VALUE);

    moduleparams.SecondHorizon[indexcount].Magnitude = sqrtf(powf(moduleparams.FirstHorizon[indexcount].VdPrediction,2) + powf(moduleparams.FirstHorizon[indexcount].VqPrediction,2));

    moduleparams.SecondHorizon[indexcount].Valfa = sinf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VdPrediction + cosf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VqPrediction;
    moduleparams.SecondHorizon[indexcount].Vbeta =-cosf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VdPrediction + sinf(moduleparams.AngleRad.Electrical) * moduleparams.FirstHorizon[indexcount].VqPrediction;

    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad = atan2f(moduleparams.SecondHorizon[indexcount].Vbeta, moduleparams.SecondHorizon[indexcount].Valfa) + 4.0*PI + POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * (1.0/moduleparams.OptimizationFsw[indexcount]+0.0/M1_FswDecided);
    moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod = fmodf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad, PI / 3.0);

    moduleparams.SecondHorizon[indexcount].ma = sqrtf(3)*moduleparams.SecondHorizon[indexcount].Magnitude / (moduleparams.Measured.Voltage.Vdc );

    moduleparams.SecondHorizon[indexcount].SvpwmT1 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(PI / 3.0 - moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT2 = (1.0 / moduleparams.OptimizationFsw[indexcount]) * moduleparams.SecondHorizon[indexcount].ma * sinf(moduleparams.SecondHorizon[indexcount].VoltageVectorAngleRad_Mod);
    moduleparams.SecondHorizon[indexcount].SvpwmT0 = (1.0 / moduleparams.OptimizationFsw[indexcount]) - moduleparams.SecondHorizon[indexcount].SvpwmT1 - moduleparams.SecondHorizon[indexcount].SvpwmT2;

    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 = 0.66667 * moduleparams.Measured.Voltage.Vdc - moduleparams.SecondHorizon[indexcount].Magnitude;
    moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 = -moduleparams.SecondHorizon[indexcount].Magnitude;

    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT1 * moduleparams.SecondHorizon[indexcount].SvpwmT1 / M1_LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 = moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT2 * moduleparams.SecondHorizon[indexcount].SvpwmT2 / M1_LS_VALUE;
    moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0 = -moduleparams.SecondHorizon[indexcount].VoltageDuring_SvpwmT0 * moduleparams.SecondHorizon[indexcount].SvpwmT0 / M1_LS_VALUE;

    moduleparams.SecondHorizon[indexcount].Iq_Ripple_Prediction = moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT1 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT2 + moduleparams.SecondHorizon[indexcount].Iq_Delta_DuringT0;

    moduleparams.SecondHorizon[indexcount].IdPrediction = moduleparams.FirstHorizon[indexcount].IdPrediction + (1.0f / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.FirstHorizon[indexcount].VdPrediction / M1_LS_VALUE - M1_RS_VALUE / M1_LS_VALUE * moduleparams.FirstHorizon[indexcount].IdPrediction + M1_LS_VALUE / M1_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IqPrediction);
    moduleparams.SecondHorizon[indexcount].IqPrediction = moduleparams.FirstHorizon[indexcount].IqPrediction + (1.0f / moduleparams.OptimizationFsw[indexcount]) * (moduleparams.FirstHorizon[indexcount].VqPrediction / M1_LS_VALUE - M1_RS_VALUE / M1_LS_VALUE * moduleparams.FirstHorizon[indexcount].IqPrediction - M1_LS_VALUE / M1_LS_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical * moduleparams.FirstHorizon[indexcount].IdPrediction - FLUX_VALUE * POLEPAIRS * moduleparams.AngularSpeedRadSec.Mechanical / M1_LS_VALUE);

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

    PI_iq_cla.I_coeff = I_COEFFICIENT;
    PI_iq_cla.P_coeff = P_COEFFICIENT;
    PI_iq_cla.Ts = PI_TS_COEFFICIENT;
    PI_iq_cla.Input = 0;
    PI_iq_cla.Input_prev = 0;
    PI_iq_cla.Output = 0;
    PI_iq_cla.Output_prev = 0;
    PI_iq_cla.SaturationMax = 2.0 * IQ_RATED;
    PI_iq_cla.SaturationMin = -2.0 * IQ_RATED;

    AssignGSRAMs();



    for(i=0;i<NUMBEROFMPCLOOPS;i++)
    {
        Module1_Parameters.OptimizationFsw[i] = (i+1)*1000;
        Module1_Parameters_cla.OptimizationFsw[i] = (i+1)*1000;
    }

    InitializeADCs();
    SetupGPIOs();                   // initialize gpios for both cpu1 & cpu2
    InitializeEpwm1Registers();
    InitializeEpwm2Registers();
    InitializeEpwm3Registers();
    InitSpiDrv8305Gpios();          // initialize SPIs for both M1 & M2
    DELAY_US(100000);
    InitSpiRegs_DRV830x(&SpiaRegs); // initialize spi registers for M1 inverter
    InitSpiRegs_DRV830x(&SpibRegs); // initialize spi registers for M2 inverter
    InitDRV8305Regs(&M1_Device1Configuration);  // initialize drv8305 registers for M1
    InitDRV8305Regs(&M2_Device1Configuration);  // initialize drv8305 registers for M2

    EALLOW; /*configure GPIO26 to be the EN_GATE for M2 inverter*/
    GpioDataRegs.GPACLEAR.bit.GPIO26 = 1;
    GpioCtrlRegs.GPAGMUX2.bit.GPIO26 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO26 = 0;
    GpioCtrlRegs.GPADIR.bit.GPIO26 = 1;
    EDIS;

    EALLOW; /*configure GPIO27 to be the WAKE for M2 inverter*/
    GpioDataRegs.GPACLEAR.bit.GPIO27 = 1;
    GpioCtrlRegs.GPAGMUX2.bit.GPIO27 = 0;
    GpioCtrlRegs.GPAMUX2.bit.GPIO27 = 0;
    GpioCtrlRegs.GPADIR.bit.GPIO27 = 1;
    EDIS;

    EALLOW; /*configure GPIO124 to be the EN_GATE for M1 inverter*/
    GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1;
    GpioCtrlRegs.GPDGMUX2.bit.GPIO124 = 0;
    GpioCtrlRegs.GPDMUX2.bit.GPIO124 = 0;
    GpioCtrlRegs.GPDDIR.bit.GPIO124 = 1;
    EDIS;

    EALLOW; /*configure GPIO125 to be the WAKE for M1 inverter*/
    GpioDataRegs.GPDCLEAR.bit.GPIO125 = 1;
    GpioCtrlRegs.GPDGMUX2.bit.GPIO125 = 0;
    GpioCtrlRegs.GPDMUX2.bit.GPIO125 = 0;
    GpioCtrlRegs.GPDDIR.bit.GPIO125 = 1;
    EDIS;


    GPIO_WritePin(CPU1_ENABLEDRV8305_PIN, 1); // Enable DRV for module 1
    GPIO_WritePin(CPU2_ENABLEDRV8305_PIN, 1); // Enable DRV for module 2
    DELAY_US(50000);       // delay to allow DRV830x supplies to ramp up
    M1_InitDRV8305(&M1_Device1Configuration);
    M2_InitDRV8305(&M2_Device1Configuration);
    //M2_OffsetCalculationIsDone = 1;
#if 0
    while (M1_Device1Configuration.DRV_fault)
    {
        faultcounter++; // hang on if drv init is faulty
    }
#endif

    InitializePeripharelsForCpu2();
    InitializeGpiosForCpu2();

    SetupCmpssProtections();
    EQEP1_Setup();
}
void InitializeADCs(void)
{
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

    AdcaRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)
    AdcbRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)
    AdccRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)
    AdcdRegs.ADCCTL2.bit.SIGNALMODE = 0; // (Single ended ADC)

    AdcaRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results
    AdcbRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results
    AdccRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results
    AdcdRegs.ADCCTL2.bit.RESOLUTION = 0; // 12 bit ADC results

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


    /* For the M1;
     * A_SOC0 -> Va     (M1)
     * C_SOC0 -> Vb     (M1)
     * B_SOC0 -> Vc     (M1)
     * A_SOC1 -> Vdc    (M1)
     * C_SOC1 & C_PPB1 -> Ia     (M1)
     * B_SOC1 & B_PPB1 -> Ib     (M1)
     * A_SOC2 & A_PPB1 -> Ic     (M1)
     *
     *
#define M1_ADCRESULT_VA AdcaResultRegs.ADCRESULT0
#define M1_ADCRESULT_VB AdccResultRegs.ADCRESULT0
#define M1_ADCRESULT_VC AdcbResultRegs.ADCRESULT0
#define M1_ADCRESULT_VDC AdcaResultRegs.ADCRESULT1
#define M1_ADCRESULT_IA AdccResultRegs.ADCRESULT1
#define M1_ADCRESULT_IB AdcbResultRegs.ADCRESULT1
#define M1_ADCRESULT_IC AdcaResultRegs.ADCRESULT2
     * */
    /* For the M2;
     * A_SOC3 -> Va     (M2)
     * C_SOC2 -> Vb     (M2)
     * B_SOC2 -> Vc     (M2)
     * A_SOC4 -> Vdc    (M2)
     * C_SOC3 & C_PPB2  -> Ia     (M2)
     * B_SOC3 & B_PPB2  -> Ib     (M2)
     * A_SOC5 & A_PPB2  -> Ic     (M2)
#define M2_ADCRESULT_VA AdcaResultRegs.ADCRESULT3
#define M2_ADCRESULT_VB AdccResultRegs.ADCRESULT2
#define M2_ADCRESULT_VC AdcbResultRegs.ADCRESULT2
#define M2_ADCRESULT_VDC AdcaResultRegs.ADCRESULT4
#define M2_ADCRESULT_IA AdccResultRegs.ADCRESULT3
#define M2_ADCRESULT_IB AdcbResultRegs.ADCRESULT3
#define M2_ADCRESULT_IC AdcaResultRegs.ADCRESULT5
     * */

    /* M1 Va pin*/
    AdcaRegs.ADCSOC0CTL.all = 0x00;
    AdcaRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC0CTL.bit.CHSEL = 0xE;              /*This is Va pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M1 Vb pin*/
    AdccRegs.ADCSOC0CTL.all = 0x00;
    AdccRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdccRegs.ADCSOC0CTL.bit.CHSEL = 0x3;              /*This is Vb pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M1 Vc pin*/
    AdcbRegs.ADCSOC0CTL.all = 0x00;
    AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcbRegs.ADCSOC0CTL.bit.CHSEL = 0x3;              /*This is Vc pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC0CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M1 Vdc pin*/
    AdcaRegs.ADCSOC1CTL.all = 0x00;
    AdcaRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC1CTL.bit.CHSEL = 0x3;              /*This is Vdc pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M1 Ia pin*/
    AdccRegs.ADCSOC1CTL.all = 0x00;
    AdccRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdccRegs.ADCSOC1CTL.bit.CHSEL = 0x2;              /*This is Ia pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdccRegs.ADCPPB1CONFIG.bit.CONFIG = 1;            // PPB is associated with SOC1
    AdccRegs.ADCPPB1OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdccRegs.ADCPPB1OFFREF = 0;                       // This value is calculated automatically

    /* M1 Ib pin*/
    AdcbRegs.ADCSOC1CTL.all = 0x00;
    AdcbRegs.ADCSOC1CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcbRegs.ADCSOC1CTL.bit.CHSEL = 0x2;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC1CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcbRegs.ADCPPB1CONFIG.bit.CONFIG = 1;            // PPB is associated with SOC1
    AdcbRegs.ADCPPB1OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcbRegs.ADCPPB1OFFREF = 0;                       // This value is calculated automatically

    /* M1 Ic pin*/
    AdcaRegs.ADCSOC2CTL.all = 0x00;
    AdcaRegs.ADCSOC2CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM1 SocA is the trigger*/
    AdcaRegs.ADCSOC2CTL.bit.CHSEL = 0x2;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC2CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcaRegs.ADCPPB1CONFIG.bit.CONFIG = 2;            // PPB is associated with SOC2
    AdcaRegs.ADCPPB1OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcaRegs.ADCPPB1OFFREF = 0;                       // This value is calculated automatically

    /*Module 2 ADCs are initialized here, adcresultregs can be read from both cpus, therefore the control of whole ADCs are left to CPU2 */
    /* For the M1;
     * A_SOC0 -> Va     (M1)
     * C_SOC0 -> Vb     (M1)
     * B_SOC0 -> Vc     (M1)
     * A_SOC1 -> Vdc    (M1)
     * C_SOC1 & C_PPB1 -> Ia     (M1)
     * B_SOC1 & B_PPB1 -> Ib     (M1)
     * A_SOC2 & A_PPB1 -> Ic     (M1)
     *
     * */
    /* For the M2;
     * A_SOC3 -> Va     (M2)
     * C_SOC2 -> Vb     (M2)
     * B_SOC2 -> Vc     (M2)
     * A_SOC4 -> Vdc    (M2)
     * C_SOC3 & C_PPB2  -> Ia     (M2)
     * B_SOC3 & B_PPB2  -> Ib     (M2)
     * A_SOC5 & A_PPB2  -> Ic     (M2)
     *
     * */

    /*-------------- M2 Adc Configuration start --------------*/
    /* M2 Va pin*/
    AdcaRegs.ADCSOC3CTL.all = 0x00;
    AdcaRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdcaRegs.ADCSOC3CTL.bit.CHSEL = 0xF;              /*This is Va pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC3CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M2 Vb pin*/
    AdccRegs.ADCSOC2CTL.all = 0x00;
    AdccRegs.ADCSOC2CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdccRegs.ADCSOC2CTL.bit.CHSEL = 0x5;              /*This is Vb pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC2CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M2 Vc pin*/
    AdcbRegs.ADCSOC2CTL.all = 0x00;
    AdcbRegs.ADCSOC2CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdcbRegs.ADCSOC2CTL.bit.CHSEL = 0x5;              /*This is Vc pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC2CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M2 Vdc pin*/
    AdcaRegs.ADCSOC4CTL.all = 0x00;
    AdcaRegs.ADCSOC4CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdcaRegs.ADCSOC4CTL.bit.CHSEL = 0x5;              /*This is Vdc pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC4CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/

    /* M2 Ia pin*/
    AdccRegs.ADCSOC3CTL.all = 0x00;
    AdccRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdccRegs.ADCSOC3CTL.bit.CHSEL = 0x4;              /*This is Ia pin for TIDA-00909 PCB*/
    AdccRegs.ADCSOC3CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdccRegs.ADCPPB2CONFIG.bit.CONFIG = 3;            // PPB is associated with SOC3
    AdccRegs.ADCPPB2OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdccRegs.ADCPPB2OFFREF = 0;                       // This value is calculated automatically

    /* M2 Ib pin*/
    AdcbRegs.ADCSOC3CTL.all = 0x00;
    AdcbRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdcbRegs.ADCSOC3CTL.bit.CHSEL = 0x4;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcbRegs.ADCSOC3CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcbRegs.ADCPPB2CONFIG.bit.CONFIG = 3;            // PPB is associated with SOC3
    AdcbRegs.ADCPPB2OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcbRegs.ADCPPB2OFFREF = 0;                       // This value is calculated automatically

    /* M2 Ic pin*/
    AdcaRegs.ADCSOC5CTL.all = 0x00;
    AdcaRegs.ADCSOC5CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    AdcaRegs.ADCSOC5CTL.bit.CHSEL = 0x4;              /*This is Ib pin for TIDA-00909 PCB*/
    AdcaRegs.ADCSOC5CTL.bit.ACQPS = ACQPS_PERIOD;     /*TODO: This value should be tested*/
    AdcaRegs.ADCPPB2CONFIG.bit.CONFIG = 5;            // PPB is associated with SOC5
    AdcaRegs.ADCPPB2OFFCAL.bit.OFFCAL = 0;            // Write zero to this for now
    AdcaRegs.ADCPPB2OFFREF = 0;                       // This value is calculated automatically



    /*-------------- M2 Adc Configuration end   --------------*/

    EDIS;
}
void AssignGSRAMs(void)
{
    EALLOW;
    MemCfgRegs.GSxMSEL.bit.MSEL_GS13 = 0;       /*CPU1 is the owner of RAMGS13*/
    MemCfgRegs.GSxMSEL.bit.MSEL_GS14 = 1;       /*CPU2 is the owner of RAMGS14*/

    MemCfgRegs.GSxMSEL.bit.MSEL_GS4 = 1;       /*CPU2 is the owner of RAMGS4*/
    MemCfgRegs.GSxMSEL.bit.MSEL_GS5 = 1;       /*CPU2 is the owner of RAMGS5*/
    MemCfgRegs.GSxMSEL.bit.MSEL_GS6 = 1;       /*CPU2 is the owner of RAMGS6*/
    MemCfgRegs.GSxMSEL.bit.MSEL_GS7 = 1;       /*CPU2 is the owner of RAMGS7*/

    EDIS;
}
void EQEP1_Setup(void)
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

void EQEP2_Setup(void)
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

    EQep2Regs.QUPRD = 2000000; // Unit Timer for 100 Hz at 200 MHz

    // Quadrature Decoder Unit (QDU) Registers
    EQep2Regs.QDECCTL.all = 0x00;    // Quadrature Decoder Control
    EQep2Regs.QDECCTL.bit.QSRC = 0;  // Position-counter source selection: Quadrature count mode (QCLK = iCLK, QDIR = iDIR)
                                     // hakansrc QSRC=2 girmis -- "0"
    EQep2Regs.QDECCTL.bit.SOEN = 0;  // Disable position-compare sync output
    EQep2Regs.QDECCTL.bit.SPSEL = 1; // Strobe pin is used for sync output: Don't care
    EQep2Regs.QDECCTL.bit.XCR = 0;   // External Clock Rate: 2x resolution: Count the rising/falling edge
    EQep2Regs.QDECCTL.bit.SWAP = 1;  // CLK/DIR Signal Source for Position Counter: Quadrature-clock inputs are not swapped
    EQep2Regs.QDECCTL.bit.IGATE = 0; // Disable gating of Index pulse
    EQep2Regs.QDECCTL.bit.QAP = 0;   // QEPA input polarity: No effect
    EQep2Regs.QDECCTL.bit.QBP = 0;   // QEPB input polarity: No effect
    EQep2Regs.QDECCTL.bit.QIP = 0;   // QEPI input polarity: No effect
    EQep2Regs.QDECCTL.bit.QSP = 0;   // QEPS input polarity: No effect

    // Position Counter and Control Unit (PCCU) Registers
    EQep2Regs.QEPCTL.all = 0x00;        // QEP Control
    EQep2Regs.QEPCTL.bit.FREE_SOFT = 0; // Emulation mode: Position counter stops immediately on emulation suspend
    EQep2Regs.QEPCTL.bit.PCRM = 1;      // Position counter reset on the maximum position
    EQep2Regs.QEPCTL.bit.IEI = 0;       // With 2, initializes the position counter on the rising edge of the QEPI signal
    EQep2Regs.QEPCTL.bit.IEL = 0;       // With 1, Latches position counter on rising edge of the index signal
    EQep2Regs.QEPCTL.bit.QPEN = 0;      // Reset the eQEP peripheral internal operating flags/read-only registers.
                                        //EQep2Regs.QEPCTL.bit.QCLM = 0; // QEP capture latch mode: Latch on position counter read by CPU
    EQep2Regs.QEPCTL.bit.QCLM = 1;      // Latch on unit time out

    EQep2Regs.QEPCTL.bit.UTE = 1; // QEP unit timer enable: Enable unit timer
    EQep2Regs.QEPCTL.bit.WDE = 1; // Enable the eQEP watchdog timer

    EQep2Regs.QPOSINIT = 0;    // Initial QPOSCNT , QPOSCNT set to zero on index event (or strobe or software if desired)
    EQep2Regs.QPOSMAX = ENCODERMAXTICKCOUNT; // Max value of QPOSCNT    /*better check this value*/

    // Quadrature edge-capture unit for low-speed measurement (QCAP)
    EQep2Regs.QCAPCTL.all = 0x00;
    EQep2Regs.QCAPCTL.bit.CEN = 1;  // eQEP capture unit is enabled
    EQep2Regs.QCAPCTL.bit.CCPS = 6; // eQEP capture timer clock prescaler: // CAPCLK = SYSCLKOUT/1
    EQep2Regs.QCAPCTL.bit.UPPS = 5; // Unit position event prescaler: UPEVNT = QCLK/1 , QCLK is triggered in every rising or falling edge of A or B
                                    // UPPS reiz veri important

    // Position Compare Control
    EQep2Regs.QPOSCTL.all = 0x0000; // Position Compare Control: Disabled
                                    // hakansrc enable etmis: PCE=1, PCSPW=0xFFF
    /*
     EQep2Regs.QPOSCTL.bit.PCSHDW = 0;   // shadow disabled
     EQep2Regs.QPOSCTL.bit.PCLOAD = 0;   // does not matter, shadow already disabled
     EQep2Regs.QPOSCTL.bit.PCPOL = 0;    // polarity of sync output is set to high pulse output
     EQep2Regs.QPOSCTL.bit.PCE = 1;      // position compare enable
     EQep2Regs.QPOSCTL.bit.PCSPW = 0xFFF;// Select-position-compare sync output pulse width, 4096 * 4 * SYSCLKOUT cycles
     */

    // QEP Interrupt Control (EQEPxINT)
    // Eleven interrupt events (PCE, PHE, QDC, WTO, PCU, PCO, PCR, PCM, SEL, IEL and UTO) can be generated.
    EQep2Regs.QEINT.all = 0x00;
    /*
     EQep2Regs.QEINT.bit.WTO = 1;      // Watchdog time out interrupt enabled
     EQep2Regs.QEINT.bit.UTO = 1; // unit timeout interrupt enabled, check QCAPCTL.bit.CCPS (NOTE: can be used for speed calculations at high speeds,check technical reference manual page 1996)
     EQep2Regs.QEINT.bit.IEL = 1;        // Index event latch interrupt enabled
     */

    // added by hakansrc
    EQep2Regs.QFLG.all = 0; // Interrupts are flagged here
    EQep2Regs.QCLR.all = 0; // QEP Interrupt Clear

    // added by hakansrc
    EQep2Regs.QCTMR = 0;    // This register provides time base for edge capture unit. 16 bit
    EQep2Regs.QCPRD = 0;    // This register holds the period count value between the last successive eQEP position events
    EQep2Regs.QCTMRLAT = 0; // QCTMR latch register, latching can be stopped by clearing QEPCTL[QCLM] register
    EQep2Regs.QCPRDLAT = 0; // QCPRD latch register, latching can be stopped by clearing QEPCTL[QCLM] register

    /*
     // Registers to be watched
     EQep2Regs.QPOSCNT   // Position counter: This counter acts as a position integrator whose count value is proportional to position from a give reference point
     EQep2Regs.QPOSINIT  // Position counter init: contains the position value that is used to initialize the position counter based on external strobe or index event
     EQep2Regs.QPOSMAX   // Maximum Position Count: contains the maximum position counter value.
     EQep2Regs.QPOSCMP   // Position Compare: is compared with the position counter (QPOSCNT) to generate sync output and/or interrupt on compare match
     EQep2Regs.QPOSILAT  // Index Position Latch: The position-counter value is latched into this register on an index event as defined by the QEPCTL[IEL] bits.
     EQep2Regs.QPOSLAT   // Position Latch: The position-counter value is latched into this register on a unit time out event.
     EQep2Regs.QUTMR        // QEP Unit Timer: This register acts as time base for unit time event generation. When this timer value matches the unit time period value a unit time event is generated.
     EQep2Regs.QUPRD     // QEP unit period: contains the period count for the unit timer to generate periodic unit time events.
     EQep2Regs.QWDTMR    // Watchdog timer: time base for the watchdog to detect motor stalls
     EQep2Regs.QWDPRD   // Watchdog period: contains the time-out count for the eQEP peripheral watch dog timer
     EQep2Regs.QCTMR        // QEP Capture Timer: This register provides time base for edge capture unit
     EQep2Regs.QCPRD        // QEP Capture Period: This register holds the period count value between the last successive eQEP position events

     EQep2Regs.QFLG.bit.INT   // Global interrupt status flag
     EQep2Regs.QCLR.bit.INT   // Global interrupt clear flag
     EQep2Regs.QFLG.bit.WTO  // Watchdog timeout interrupt flag
     EQep2Regs.QCLR.bit.WTO = 1;     // Clear watchdog timeout interrupt flag

     EQep2Regs.QEPSTS.bit.UPEVNT     // 1h (R/W) = Unit position event detected. Write 1 to clear
     EQep2Regs.QEPSTS.bit.QDF    // Quadrature direction flag: 1=Clockwise
     */

    EQep2Regs.QEPCTL.bit.QPEN = 1; // eQEP position counter is enabled
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

void InitSpiDrv8305Gpios(void)
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

    EALLOW;
    GpioCtrlRegs.GPBMUX2.bit.GPIO63 = 3;  /*SPISIMOA*/
    GpioCtrlRegs.GPBGMUX2.bit.GPIO63 = 3; /*SPISIMOA*/
    GpioCtrlRegs.GPCMUX1.bit.GPIO64 = 3;  /*SPISOMIA*/
    GpioCtrlRegs.GPCGMUX1.bit.GPIO64 = 3; /*SPISOMIA*/
    GpioCtrlRegs.GPCMUX1.bit.GPIO65 = 3;  /*SPICLKA*/
    GpioCtrlRegs.GPCGMUX1.bit.GPIO65 = 3; /*SPICLKA*/
    GpioCtrlRegs.GPCMUX1.bit.GPIO66 = 3;  /*SPISTEA*/
    GpioCtrlRegs.GPCGMUX1.bit.GPIO66 = 3; /*SPISTEA*/
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
void M1_ReadDRV8305Registers(DRV8305_Vars *deviceptr)
{




    // ===============================================
    // read all status and control registers
    // ===============================================
    deviceptr->status1_wwd.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S1_WWD_ADDR) & 0x05ff;              // read DRV8305 status reg 1
    deviceptr->status2_ov_vds.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7; // read DRV8305 status reg 2
    deviceptr->status3_IC.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;         // read DRV8305 status reg 3
    deviceptr->status4_gd_Vgs.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0; // read DRV8305 status reg 4



    return;
}

void M1_InitDRV8305(DRV8305_Vars *deviceptr)
{
    Uint16 tmp1, *ptr1, *ptr2;

    // ===============================================================
    // write all control regs, ignore the return value of each write
    // ===============================================================
    //  for (tmp1=5; tmp1<= 0xc; tmp1++)
    //  {
    //      if (tmp1 != 8)
    //          tmp2 = M1_DRV8305_SPI_Write(motor, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
    //  }

    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 5
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 6
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR);             //write to DRV8305 control reg 7
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR);               //write to DRV8305 control reg 9
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR);      //write to DRV8305 control reg A
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR);           //write to DRV8305 control reg B
    tmp1 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR);        //write to DRV8305 control reg C

    // ===============================================
    // read all status and control registers
    // ===============================================
    deviceptr->status1_wwd.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S1_WWD_ADDR) & 0x05ff;              // read DRV8305 status reg 1
    deviceptr->status2_ov_vds.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7; // read DRV8305 status reg 2
    deviceptr->status3_IC.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;         // read DRV8305 status reg 3
    deviceptr->status4_gd_Vgs.all = M1_DRV8305_SPI_Read(deviceptr, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0; // read DRV8305 status reg 4
    deviceptr->readCntrl5 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 5
    deviceptr->readCntrl6 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 6
    deviceptr->readCntrl7 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR) & 0x03ff;             // read DRV8305 control reg 7
    deviceptr->readCntrl9 = M1_DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR) & 0x07ff;               // read DRV8305 control reg 9
    deviceptr->readCntrlA = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR) & 0x07ff;      // read DRV8305 control reg A
    deviceptr->readCntrlB = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR) & 0x031f;           // read DRV8305 control reg B
    deviceptr->readCntrlC = M1_DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR) & 0x00ff;        // read DRV8305 control reg C

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

void M2_InitDRV8305(DRV8305_Vars *deviceptr)
{
    Uint16 tmp1, *ptr1, *ptr2;

    // ===============================================================
    // write all control regs, ignore the return value of each write
    // ===============================================================
    //  for (tmp1=5; tmp1<= 0xc; tmp1++)
    //  {
    //      if (tmp1 != 8)
    //          tmp2 = M2_DRV8305_SPI_Write(motor, tmp1);                //write to DRV8305 control reg @ address 'tmp1';
    //  }

    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 5
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR); //write to DRV8305 control reg 6
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR);             //write to DRV8305 control reg 7
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR);               //write to DRV8305 control reg 9
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR);      //write to DRV8305 control reg A
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR);           //write to DRV8305 control reg B
    tmp1 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR);        //write to DRV8305 control reg C

    // ===============================================
    // read all status and control registers
    // ===============================================
    deviceptr->status1_wwd.all = M2_DRV8305_SPI_Read(deviceptr, DRV8305_S1_WWD_ADDR) & 0x05ff;              // read DRV8305 status reg 1
    deviceptr->status2_ov_vds.all = M2_DRV8305_SPI_Read(deviceptr, DRV8305_S2_OV_VDS_FAULTS_ADDR) & 0x07e7; // read DRV8305 status reg 2
    deviceptr->status3_IC.all = M2_DRV8305_SPI_Read(deviceptr, DRV8305_S3_IC_FAULTS_ADDR) & 0x0777;         // read DRV8305 status reg 3
    deviceptr->status4_gd_Vgs.all = M2_DRV8305_SPI_Read(deviceptr, DRV8305_S4_GD_VGS_FAULTS_ADDR) & 0x07e0; // read DRV8305 status reg 4
    deviceptr->readCntrl5 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C5_HS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 5
    deviceptr->readCntrl6 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C6_LS_GATE_DRIVER_CNTRL_ADDR) & 0x03ff; // read DRV8305 control reg 6
    deviceptr->readCntrl7 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C7_GD_CNTRL_ADDR) & 0x03ff;             // read DRV8305 control reg 7
    deviceptr->readCntrl9 = M2_DRV8305_SPI_Write(deviceptr, DRV8305_C9_IC_OPS_ADDR) & 0x07ff;               // read DRV8305 control reg 9
    deviceptr->readCntrlA = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CA_SHUNT_AMP_CNTRL_ADDR) & 0x07ff;      // read DRV8305 control reg A
    deviceptr->readCntrlB = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CB_VREG_CNTRL_ADDR) & 0x031f;           // read DRV8305 control reg B
    deviceptr->readCntrlC = M2_DRV8305_SPI_Write(deviceptr, DRV8305_CC_VDS_SNS_CNTRL_ADDR) & 0x00ff;        // read DRV8305 control reg C

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

Uint16 M1_DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address)
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
Uint16 M1_DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address)
{
    union DRV830x_SPI_WRITE_WORD_REG w;

    w.bit.R_W = 1;           // read - 1
    w.bit.ADDRESS = address; // load the address
    w.bit.DATA = 0;          // data to be written

    return (SPI_Driver(&SpiaRegs, w.all));
}

Uint16 M2_DRV8305_SPI_Write(DRV8305_Vars *deviceptr, Uint16 address)
{
    DELAY_US(10);
    union DRV830x_SPI_WRITE_WORD_REG w;
    Uint16 *cntrlReg;

    cntrlReg = &(deviceptr->Rsvd0);

    w.bit.R_W = 0;                  // write - 0
    w.bit.ADDRESS = address;        // load the address
    w.bit.DATA = cntrlReg[address]; // data to be written

    return (SPI_Driver(&SpibRegs, w.all));
}
Uint16 M2_DRV8305_SPI_Read(DRV8305_Vars *deviceptr, Uint16 address)
{
    union DRV830x_SPI_WRITE_WORD_REG w;

    w.bit.R_W = 1;           // read - 1
    w.bit.ADDRESS = address; // load the address
    w.bit.DATA = 0;          // data to be written

    return (SPI_Driver(&SpibRegs, w.all));
}

void M1_CalculateOffsetValue(void)
{
    for (M1_OffsetCalCounter = 0; M1_OffsetCalCounter < 50000;)
    {
        if (EPwm1Regs.ETFLG.bit.SOCA == 1)
        {
            if (M1_OffsetCalCounter > 2500)
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
            M1_OffsetCalCounter++;
        }
    }
    EALLOW;
    AdccRegs.ADCPPB1OFFREF = Module1_Parameters.OffsetValue.PhaseA * 4096.0;
    AdcbRegs.ADCPPB1OFFREF = Module1_Parameters.OffsetValue.PhaseB * 4096.0;
    AdcaRegs.ADCPPB1OFFREF = Module1_Parameters.OffsetValue.PhaseC * 4096.0;
    EDIS;
    M1_OffsetCalculationIsDone = 1;
}

void M2_CalculateOffsetValue(void)
{
    /* For the M2;
     * A_SOC3 -> Va     (M2)
     * C_SOC2 -> Vb     (M2)
     * B_SOC2 -> Vc     (M2)
     * A_SOC4 -> Vdc    (M2)
     * C_SOC3 & C_PPB2  -> Ia     (M2)
     * B_SOC3 & B_PPB2  -> Ib     (M2)
     * A_SOC5 & A_PPB2  -> Ic     (M2)
     *
     * */

    EALLOW;
    /* M2 Ia pin*/
    AdccRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    /* M2 Ib pin*/
    AdcbRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    /* M2 Ic pin*/
    AdcaRegs.ADCSOC5CTL.bit.TRIGSEL = EPWM1_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    EDIS;
    for (M2_OffsetCalCounter = 0; M2_OffsetCalCounter < 50000;)
    {
        if (EPwm1Regs.ETFLG.bit.SOCA == 1)
        {
            if (M2_OffsetCalCounter > 2500)
            {
                Module2_Parameters.OffsetValue.PhaseA = K1 * Module2_Parameters.OffsetValue.PhaseA + K2 * M2_ADCRESULT_IA * ADC_PU_SCALE_FACTOR; //Module1 : Phase A offset
                Module2_Parameters.OffsetValue.PhaseB = K1 * Module2_Parameters.OffsetValue.PhaseB + K2 * M2_ADCRESULT_IB * ADC_PU_SCALE_FACTOR; //Module1 : Phase B offset
                Module2_Parameters.OffsetValue.PhaseC = K1 * Module2_Parameters.OffsetValue.PhaseC + K2 * M2_ADCRESULT_IC * ADC_PU_SCALE_FACTOR; //Module1 : Phase C offset
                offsetval[0] = K1 * offsetval[0] + K2 * M2_ADCRESULT_IA * ADC_PU_SCALE_FACTOR; //Module1 : Phase A offset
                offsetval[1] = K1 * offsetval[1] + K2 * M2_ADCRESULT_IB * ADC_PU_SCALE_FACTOR; //Module1 : Phase B offset
                offsetval[2] = K1 * offsetval[2] + K2 * M2_ADCRESULT_IC * ADC_PU_SCALE_FACTOR; //Module1 : Phase C offset
            }
            EPwm1Regs.ETCLR.bit.SOCA = 1;
            M2_OffsetCalCounter++;
        }

    }
    EALLOW;
    AdccRegs.ADCPPB2OFFREF =  offsetval[0]  * 4096.0;
    AdcbRegs.ADCPPB2OFFREF =  offsetval[1]  * 4096.0;
    AdcaRegs.ADCPPB2OFFREF =  offsetval[2]  * 4096.0;
    EDIS;


    EALLOW;
    /* M2 Ia pin*/
    AdccRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    /* M2 Ib pin*/
    AdcbRegs.ADCSOC3CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    /* M2 Ic pin*/
    AdcaRegs.ADCSOC5CTL.bit.TRIGSEL = EPWM4_SOCA_TRG; /*ePWM4 SocA is the trigger*/
    EDIS;


    M2_OffsetCalculationIsDone = 1;
}


__interrupt void epwm1_isr(void)
{
    ControlISRCounter++;
#if 0
    torque_distributor_start = (uint64_t)IpcRegs.IPCCOUNTERL + (uint64_t)((uint64_t)IpcRegs.IPCCOUNTERH)*((uint64_t)4294967296);
    PerformTorqueDistribution();
    torque_distributor_end = (uint64_t)IpcRegs.IPCCOUNTERL + (uint64_t)((uint64_t)IpcRegs.IPCCOUNTERH)*((uint64_t)4294967296);

    torque_distributor_timedifference = torque_distributor_end - torque_distributor_start;
    time_in_usec = ((float)torque_distributor_timedifference)/((float)200);
#endif
#if 1
    if (M1_OperationMode == MODE_CLA_MPCCONTROLLER)
    {
        memcpy(&PI_iq,&PI_iq_cla,sizeof(PID_Parameters));
        EPwm1Regs.ETCLR.bit.INT = 1;
        PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
        return;
    }
#endif

    GetEncoderReadings(Module1_Parameters);
    /*This will be the main control isr*/
    /*check ADCBSY register if  it makes here wait*/
    /*TODO, need to consider alignment scenario*/


    RunTimeProtectionControl();





    if ((M1_OffsetCalculationIsDone == 0)||(M2_OffsetCalculationIsDone==0))
    {
        EPwm1Regs.ETCLR.bit.INT = 1;
        PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
        return;
    }



    GetAdcReadings(Module1_Parameters);


    CalculateParkTransform(Module1_Parameters);

    if (M1_OperationMode == MODE_MPCCONTROLLER)
    {
        SpeedRefRadSec =  ramper(SpeedRefRadSec, SpeedRefRPM/60.0*2.0*PI, 0.0001); // rate transition is around approximately 1 RPM per second

        PI_iq.Input = SpeedRefRadSec - Module1_Parameters.AngularSpeedRadSec.Mechanical;
        Run_PI_Controller(PI_iq);

        Module1_Parameters.Reference.Iq = PI_iq.Output/((float)2);
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
    else if (M1_OperationMode == MODE_ALIGNMENT)
    {

        Module1_Parameters.PhaseADutyCycle = ALIGNMENT_DC_CURRENT*M1_RS_VALUE/Module1_Parameters.Measured.Voltage.Vdc;
        Module1_Parameters.PhaseBDutyCycle = 0;
        Module1_Parameters.PhaseCDutyCycle = 0;

        if(AngleHasBeenReset==0)
        {
            EQep1Regs.QCLR.bit.IEL = 1;                     // Reset position cnt for QEP
            EQep1Regs.QCLR.bit.UTO = 1;                     // Reset position cnt for QEP
            EQep1Regs.QPOSCNT = 360;//((ENCODERMAXTICKCOUNT+1)/POLEPAIRS)/4;  // Reset position cnt for QEP
            EQep2Regs.QCLR.bit.IEL = 1;                     // Reset position cnt for QEP
            EQep2Regs.QCLR.bit.UTO = 1;                     // Reset position cnt for QEP
            EQep2Regs.QPOSCNT = 360;//((ENCODERMAXTICKCOUNT+1)/POLEPAIRS)/4;  // Reset position cnt for QEP
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
            PI_iq_cla.Input = 0;
            PI_iq_cla.Input_prev = 0;
            PI_iq_cla.Output = 0;
            PI_iq_cla.Output_prev = 0;

            ZeroiseModule1Parameters();

            Module1_Parameters.PhaseADutyCycle = 0;
            Module1_Parameters.PhaseBDutyCycle = 0;
            Module1_Parameters.PhaseCDutyCycle = 0;
        }
        if(AlignmentCounter>=((uint32_t)MPC_STARTCOUNTVALUE))
        {
            M1_OperationMode = MODE_CLA_MPCCONTROLLER;
            //M1_OperationMode = MODE_MPCCONTROLLER;
            EPwm1Regs.ETCLR.bit.INT = 1;
            PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;

            /*eqep2 is now ready to go, cpu2 can use it now*/
            if(DevCfgRegs.CPUSEL2.bit.EQEP2==0) // if this belongs to cpu1, then give it to CPU2
            {
                EALLOW;
                DevCfgRegs.CPUSEL2.bit.EQEP2 = 1; // EQep2 block is assigned to CPU2
                EDIS;
            }
            IpcRegs.IPCSET.bit.IPC31=1; // set this so that CPU2 will continue
            //IPCBootCPU2(C1C2_BROM_BOOTMODE_BOOT_FROM_RAM);
            return;
        }


    }
    else if (M1_OperationMode == MODE_RLLOAD)
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
    else if (M1_OperationMode == MODE_NO_OPERATION)
    {
    }



#if ENABLE_MPC==1
    if(M1_OperationMode == MODE_MPCCONTROLLER)
    {
        EPwm1Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm2Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        EPwm3Regs.TBPRD = (Uint16 )(((float )SYSCLKFREQUENCY) / (Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex] * 4.0));
        M2_OperationMode = MODE_MPCCONTROLLER;
        //IpcRegs.IPCSET.bit.IPC31=1; // set this so that CPU2 will continue
    }
#endif


#if ENABLE_MPC==1
    if(M1_OperationMode==MODE_MPCCONTROLLER)
    {
        M1_FswDecided = Module1_Parameters.OptimizationFsw[Module1_Parameters.MinimumCostIndex];
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



#if 0
    if (SendOneInFour % 4 == 0)
    {
        DataToBeSent[0] = M1_FswDecided;
        DataToBeSent[1] = M2_FswDecided;
        DataToBeSent[2] = Module1_Parameters_cla.Measured.Current.transformed.Dvalue; // .Measured.Current.PhaseA;
        DataToBeSent[3] = Module1_Parameters_cla.Measured.Current.PhaseA;
        DataToBeSent[4] = Module1_Parameters_cla.Measured.Current.PhaseB;
        DataToBeSent[5] = Module1_Parameters_cla.Measured.Current.PhaseC;

        SciSendMultipleFloatWithTheTag(DataToBeSent, 6);
    }

    SendOneInFour++;

#endif



    EPwm1Regs.ETCLR.bit.INT = 1;
    // Acknowledge this interrupt to receive more interrupts from group 3
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}
__interrupt void xint1_isr(void)
{
    Xint1Count++;
    if(Xint1Count<5) // in the first two rotations, reset the encoder value so that we are aligned to the "sweetpoint"
    {
        EQep1Regs.QPOSCNT = ENCODER_SWEETPOINT_VALUE;

        //EQep2Regs.QPOSCNT = ENCODER_SWEETPOINT_VALUE;
        IpcRegs.IPCSET.bit.IPC0 = 1; // set this so that cpu2 will set eqep2 to sweetpoint

        Module1_Parameters.AngleRadPrev.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        Module1_Parameters.AngleRadTemp.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        Module1_Parameters_cla.AngleRadPrev.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
        Module1_Parameters_cla.AngleRadTemp.Mechanical = (float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0 * PI;
#if 0
        ByPass_SpeedMeasurement = 1;  // do not try to calculate speed at first two rotation. the speed measurements would be TOO wrong at first two rotations, therefore omit the speed calculation for two cycles,
#endif

    }


#if 0
    if(Xint1Count>=3)
    {
        if(DevCfgRegs.CPUSEL2.bit.EQEP2==0) // if this belongs to cpu1, then give it to CPU2
        {
            EALLOW;
            DevCfgRegs.CPUSEL2.bit.EQEP2 = 1; // EQep2 block is assigned to CPU2
            EDIS;
        }
        IpcRegs.IPCSET.bit.IPC30=1; // set this so that CPU2 read the angle from EQEP2
    }
#endif
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}
__interrupt void ipc0_isr(void)
{
    Ipc0Counter++;
    Module1_Parameters.AngleRad.Mechanical = ((float)EQep1Regs.QPOSCNT)/((float)ENCODERMAXTICKCOUNT)* 2.0 * PI;
    IpcRegs.IPCACK.bit.IPC0 = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}
__interrupt void CLATask1_PCC_Is_Done(void)
{
    CLA1Task1End_counter++;
    memcpy(&PI_iq,&PI_iq_cla,sizeof(PID_Parameters)); // give the torque reference from cpu1cla to cpu2
    memcpy(&Module1_Parameters,&Module1_Parameters_cla,sizeof(ModuleParameters));
    if (SendOneInFour % 4 == 0)
    {
        DataToBeSent[0] = Module1_Parameters_cla.Measured.Current.transformed.Dvalue; // .Measured.Current.PhaseA;
        DataToBeSent[1] = Module1_Parameters_cla.Measured.Current.transformed.Qvalue; // .Measured.Current.PhaseA;
        DataToBeSent[2] = Module2_Parameters.Measured.Current.transformed.Dvalue; // .Measured.Current.PhaseA;
        DataToBeSent[3] = Module2_Parameters.Measured.Current.transformed.Qvalue; // .Measured.Current.PhaseA;
        DataToBeSent[4] = Module1_Parameters_cla.AngularSpeedRPM.Mechanical;
        DataToBeSent[5] = SpeedRefRPM;

        SciSendMultipleFloatWithTheTag(DataToBeSent, 6);
    }

    SendOneInFour++;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP11;
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

    memset(&Module1_Parameters_cla.Measured, 0, sizeof(MeasuredParams));
    memset(&Module1_Parameters_cla.FirstHorizon, 0, sizeof(PredictionParameters));
    memset(&Module1_Parameters_cla.SecondHorizon, 0, sizeof(PredictionParameters));
    Module1_Parameters_cla.MinimumCostIndex = 0;
    Module1_Parameters_cla.MinimumCostValue = 0;
    memset(&Module1_Parameters_cla.Cost,0,sizeof(float)*NUMBEROFMPCLOOPS);
    memset(&Module1_Parameters_cla.AngleRad,0,sizeof(Angle));
    memset(&Module1_Parameters_cla.AngleRadPrev,0,sizeof(Angle));
    memset(&Module1_Parameters_cla.AngleRadTemp,0,sizeof(Angle));
    memset(&Module1_Parameters_cla.AngularSpeedRadSec,0,sizeof(AngularSpeed));
    memset(&Module1_Parameters_cla.AngularSpeedRPM,0,sizeof(AngularSpeed));
    memset(&Module1_Parameters_cla.OffsetValue,0,sizeof(Offset));
    Module1_Parameters_cla.PhaseADutyCycle = 0;
    Module1_Parameters_cla.PhaseBDutyCycle = 0;
    Module1_Parameters_cla.PhaseCDutyCycle = 0;
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
void InitializePeripharelsForCpu2(void)
{
    EALLOW;
    DevCfgRegs.CPUSEL0.bit.EPWM4 = 1; // EPwm4 block is assigned to CPU2
    DevCfgRegs.CPUSEL0.bit.EPWM5 = 1; // EPwm5 block is assigned to CPU2
    DevCfgRegs.CPUSEL0.bit.EPWM6 = 1; // EPwm6 block is assigned to CPU2
    EDIS;
}
void InitializeGpiosForCpu2(void)
{
    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO6 = 1;   // Disable pull-up on GPIO6 (EPWM4A)
    GpioCtrlRegs.GPAPUD.bit.GPIO7 = 1;   // Disable pull-up on GPIO7 (EPWM4B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO6 = 0; // Configure GPIO6 as EPWM4A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO7 = 0; // Configure GPIO7 as EPWM4B
    GpioCtrlRegs.GPAMUX1.bit.GPIO6 = 1;  // Configure GPIO6 as EPWM4A
    GpioCtrlRegs.GPAMUX1.bit.GPIO7 = 1;  // Configure GPIO7 as EPWM4B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO8 = 1;   // Disable pull-up on GPIO8 (EPWM5A)
    GpioCtrlRegs.GPAPUD.bit.GPIO9 = 1;   // Disable pull-up on GPIO9 (EPWM5B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO8 = 0; // Configure GPIO8 as EPWM5A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO9 = 0; // Configure GPIO9 as EPWM5B
    GpioCtrlRegs.GPAMUX1.bit.GPIO8 = 1;  // Configure GPIO8 as EPWM5A
    GpioCtrlRegs.GPAMUX1.bit.GPIO9 = 1;  // Configure GPIO9 as EPWM5B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO10 = 1;   // Disable pull-up on GPIO10 (EPWM6A)
    GpioCtrlRegs.GPAPUD.bit.GPIO11 = 1;   // Disable pull-up on GPIO11 (EPWM6B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO10 = 0; // Configure GPIO10 as EPWM6A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO11 = 0; // Configure GPIO11 as EPWM6B
    GpioCtrlRegs.GPAMUX1.bit.GPIO10 = 1;  // Configure GPIO10 as EPWM6A
    GpioCtrlRegs.GPAMUX1.bit.GPIO11 = 1;  // Configure GPIO11 as EPWM6B
    EDIS;

    EALLOW;
    GpioCtrlRegs.GPACSEL1.bit.GPIO6 = 2;// GPIO6 is controlled by CPU2
    GpioCtrlRegs.GPACSEL1.bit.GPIO7 = 2;// GPIO6 is controlled by CPU2
    GpioCtrlRegs.GPACSEL2.bit.GPIO8 = 2;// GPIO6 is controlled by CPU2
    GpioCtrlRegs.GPACSEL2.bit.GPIO9 = 2;// GPIO6 is controlled by CPU2
    GpioCtrlRegs.GPACSEL2.bit.GPIO10 = 2;// GPIO6 is controlled by CPU2
    GpioCtrlRegs.GPACSEL2.bit.GPIO11 = 2;// GPIO6 is controlled by CPU2
    EDIS;

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
     * LS3, LS4 and LS5 are DAT RAM for CLA
     *
     */
    MemCfgRegs.LSxMSEL.bit.MSEL_LS0 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS1 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS2 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS3 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS4 = 1;    // memory is shared between cpu & cla
    MemCfgRegs.LSxMSEL.bit.MSEL_LS5 = 1;    // memory is shared between cpu & cla

    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS0 = 1;    //LS0 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS1 = 1;    //LS1 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS2 = 1;    //LS2 is chosen as PRG RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS3 = 0;    //LS3 is chosen as DAT RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS4 = 0;    //LS4 is chosen as DAT RAM for CLA
    MemCfgRegs.LSxCLAPGM.bit.CLAPGM_LS5 = 0;    //LS5 is chosen as DAT RAM for CLA



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


    DmaClaSrcSelRegs.CLA1TASKSRCSEL1.bit.TASK1 = CLA_TRIG_EPWM1INT;


    //
    // Enable CLA interrupts at the group and subgroup levels
    //
    PieCtrlRegs.PIEIER11.all = 0xFFFF;
    EDIS;
}

void PerformTorqueDistribution(void)
{
    /*17/03/2021
     * hakansrc: The execution time of this function is 1487 uS, which is NOT acceptable
     * Need to do a study for reduction of the execution time (the aim is less than 100uS)
     *
     * */
#define CFE 1.55f
#define LAMBDA 1.55f

    unsigned int uiIndex = 0;
    float IqRef = PI_iq_cla.Output;
    minimumlossvalue = 1e35;




    /*we are assuming that the fault occured on phase A of module 1*/
    if(FaultFlag==YES_FAULT)
    {
        M1_Possible_Iq =  0.6667f*sinf(0.6667f*PI)*(1.0f-cosf(2.0f*((float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0f * PI)) );
        M1_Possible_Id = -0.6667f*sinf(0.6667f*PI)*sinf(2.0f*((float) EQep1Regs.QPOSCNT / (float) ENCODERMAXTICKCOUNT * 2.0f * PI));
        M2_Possible_Iq = 1;
        M2_Possible_Id = 0;
    }
    else
    {
        M1_Possible_Iq = 1.0f;
        M1_Possible_Id = 0.0f;
        M2_Possible_Iq = 1.0f;
        M2_Possible_Id = 0.0f;
    }

    M1_Iq_Candidate_Coefficient = IqRef*(1.0f/((float)TORQUE_DISTRIBUTION_STEP))*M1_Possible_Iq;
    M1_Id_Candidate_Coefficient = IqRef*(1.0f/((float)TORQUE_DISTRIBUTION_STEP))*M1_Possible_Id;

#if 0
    for(uiIndex=0.0f;uiIndex<TORQUE_DISTRIBUTION_STEP;uiIndex++)
    {
        /*fault is on module1 phase a for now*/
        if(FaultFlag==YES_FAULT)
        {
            //M1_Candidate_Iqref[uiIndex] = IqRef*(1.0f/((float)TORQUE_DISTRIBUTION_STEP))*((float)uiIndex)*M1_Possible_Iq;
            //M1_Candidate_Idref[uiIndex] = IqRef*(1.0f/((float)TORQUE_DISTRIBUTION_STEP))*((float)uiIndex)*M1_Possible_Id;
            M1_Candidate_Iqref[uiIndex] = M1_Iq_Candidate_Coefficient*((float)uiIndex);
            M1_Candidate_Idref[uiIndex] = M1_Id_Candidate_Coefficient*((float)uiIndex);
            /*M2 is the healthy module, therefore it can continue with id=0*/
            M2_Candidate_Iqref[uiIndex] = IqRef - M1_Candidate_Iqref[uiIndex];
            M2_Candidate_Idref[uiIndex] = 0.0f;
        }
        else
        {
            /*
            M1_Candidate_Iqref[uiIndex] = IqRef*(1.0f/((float)TORQUE_DISTRIBUTION_STEP))*((float)uiIndex);
            M1_Candidate_Idref[uiIndex] = 0.0f;
            M2_Candidate_Iqref[uiIndex] = (1.0f - (1.0f/((float)TORQUE_DISTRIBUTION_STEP))*((float)uiIndex)) * IqRef;
            M2_Candidate_Idref[uiIndex] = 0.0f;
            */
            M1_Candidate_Iqref[uiIndex] = M1_Iq_Candidate_Coefficient*((float)uiIndex);
            M1_Candidate_Idref[uiIndex] = 0.0f;
            M2_Candidate_Iqref[uiIndex] = IqRef - M1_Candidate_Iqref[uiIndex];
            M2_Candidate_Idref[uiIndex] = 0.0f;
        }
        M1_d_axis_flux = M1_LS_VALUE*M1_Candidate_Idref[uiIndex] + FLUX_VALUE;
        M1_q_axis_flux = M1_LS_VALUE*M1_Candidate_Iqref[uiIndex];
        M2_d_axis_flux = M2_LS_VALUE*M2_Candidate_Idref[uiIndex] + FLUX_VALUE;
        M2_q_axis_flux = M2_LS_VALUE*M2_Candidate_Iqref[uiIndex];

        M1_copper_loss = 1.5f*M1_RS_VALUE*(powf(M1_Candidate_Iqref[uiIndex],2.0f)+powf(M1_Candidate_Idref[uiIndex],2.0f));
        M1_core_loss =  CFE*powf(fabsf(Module1_Parameters.AngularSpeedRadSec.Electrical),LAMBDA)*(powf(M1_d_axis_flux,2.0f)+powf(M1_q_axis_flux,2.0f));

        M2_copper_loss = 1.5f*M2_RS_VALUE*(powf(M2_Candidate_Iqref[uiIndex],2.0f)+powf(M2_Candidate_Idref[uiIndex],2.0f));
        M2_core_loss =  CFE*powf(fabsf(Module1_Parameters.AngularSpeedRadSec.Electrical),LAMBDA)*(powf(M2_d_axis_flux,2.0f)+powf(M2_q_axis_flux,2.0f));

        TotalLoss[uiIndex] = M1_copper_loss + M1_core_loss + M2_copper_loss + M2_core_loss;

        if(minimumlossvalue>TotalLoss[uiIndex])
        {
            minimumlossvalue = TotalLoss[uiIndex];
            minimumlossindex = uiIndex;
        }




    }
#elif 0
    for(uiIndex=0.0f;uiIndex<TORQUE_DISTRIBUTION_STEP;uiIndex++)
    {
        CalculateLosses(IqRef, uiIndex);
    }
#elif 1
    CalculateLosses(IqRef, 0);
    CalculateLosses(IqRef, 1);
    CalculateLosses(IqRef, 2);
    CalculateLosses(IqRef, 3);
    CalculateLosses(IqRef, 4);
    CalculateLosses(IqRef, 5);
    CalculateLosses(IqRef, 6);
    CalculateLosses(IqRef, 7);
    CalculateLosses(IqRef, 8);
    CalculateLosses(IqRef, 9);

    CalculateLosses(IqRef, 10);
    CalculateLosses(IqRef, 11);
    CalculateLosses(IqRef, 12);
    CalculateLosses(IqRef, 13);
    CalculateLosses(IqRef, 14);
    CalculateLosses(IqRef, 15);
    CalculateLosses(IqRef, 16);
    CalculateLosses(IqRef, 17);
    CalculateLosses(IqRef, 18);
    CalculateLosses(IqRef, 19);

    CalculateLosses(IqRef, 20);
    CalculateLosses(IqRef, 21);
    CalculateLosses(IqRef, 22);
    CalculateLosses(IqRef, 23);
    CalculateLosses(IqRef, 24);
    CalculateLosses(IqRef, 25);
    CalculateLosses(IqRef, 26);
    CalculateLosses(IqRef, 27);
    CalculateLosses(IqRef, 28);
    CalculateLosses(IqRef, 29);

    CalculateLosses(IqRef, 30);
    CalculateLosses(IqRef, 31);
    CalculateLosses(IqRef, 32);
    CalculateLosses(IqRef, 33);
    CalculateLosses(IqRef, 34);
    CalculateLosses(IqRef, 35);
    CalculateLosses(IqRef, 36);
    CalculateLosses(IqRef, 37);
    CalculateLosses(IqRef, 38);
    CalculateLosses(IqRef, 39);

    CalculateLosses(IqRef, 40);
    CalculateLosses(IqRef, 41);
    CalculateLosses(IqRef, 42);
    CalculateLosses(IqRef, 43);
    CalculateLosses(IqRef, 44);
    CalculateLosses(IqRef, 45);
    CalculateLosses(IqRef, 46);
    CalculateLosses(IqRef, 47);
    CalculateLosses(IqRef, 48);
    CalculateLosses(IqRef, 49);

    CalculateLosses(IqRef, 50);
    CalculateLosses(IqRef, 51);
    CalculateLosses(IqRef, 52);
    CalculateLosses(IqRef, 53);
    CalculateLosses(IqRef, 54);
    CalculateLosses(IqRef, 55);
    CalculateLosses(IqRef, 56);
    CalculateLosses(IqRef, 57);
    CalculateLosses(IqRef, 58);
    CalculateLosses(IqRef, 59);

    CalculateLosses(IqRef, 60);
    CalculateLosses(IqRef, 61);
    CalculateLosses(IqRef, 62);
    CalculateLosses(IqRef, 63);
    CalculateLosses(IqRef, 64);
    CalculateLosses(IqRef, 65);
    CalculateLosses(IqRef, 66);
    CalculateLosses(IqRef, 67);
    CalculateLosses(IqRef, 68);
    CalculateLosses(IqRef, 69);

    CalculateLosses(IqRef, 70);
    CalculateLosses(IqRef, 71);
    CalculateLosses(IqRef, 72);
    CalculateLosses(IqRef, 73);
    CalculateLosses(IqRef, 74);
    CalculateLosses(IqRef, 75);
    CalculateLosses(IqRef, 76);
    CalculateLosses(IqRef, 77);
    CalculateLosses(IqRef, 78);
    CalculateLosses(IqRef, 79);

    CalculateLosses(IqRef, 80);
    CalculateLosses(IqRef, 81);
    CalculateLosses(IqRef, 82);
    CalculateLosses(IqRef, 83);
    CalculateLosses(IqRef, 84);
    CalculateLosses(IqRef, 85);
    CalculateLosses(IqRef, 86);
    CalculateLosses(IqRef, 87);
    CalculateLosses(IqRef, 88);
    CalculateLosses(IqRef, 89);

    CalculateLosses(IqRef, 90);
    CalculateLosses(IqRef, 91);
    CalculateLosses(IqRef, 92);
    CalculateLosses(IqRef, 93);
    CalculateLosses(IqRef, 94);
    CalculateLosses(IqRef, 95);
    CalculateLosses(IqRef, 96);
    CalculateLosses(IqRef, 97);
    CalculateLosses(IqRef, 98);
    CalculateLosses(IqRef, 99);


#endif

    M1_minimumloss_iqref = M1_Candidate_Iqref[minimumlossindex];
    M2_minimumloss_iqref = M2_Candidate_Iqref[minimumlossindex];

}

static inline void CalculateLosses(float IqRef, unsigned int uiIndex)
{
    M1_Candidate_Iqref[uiIndex] = M1_Iq_Candidate_Coefficient*((float)uiIndex);
    M1_Candidate_Idref[uiIndex] = M1_Id_Candidate_Coefficient*((float)uiIndex);

    /*M2 is the healthy module, therefore it can continue with id=0*/
    M2_Candidate_Iqref[uiIndex] = IqRef - M1_Candidate_Iqref[uiIndex];
    M2_Candidate_Idref[uiIndex] = 0.0f;

    M1_d_axis_flux = M1_LS_VALUE*M1_Candidate_Idref[uiIndex] + FLUX_VALUE;
    M1_q_axis_flux = M1_LS_VALUE*M1_Candidate_Iqref[uiIndex];
    M2_d_axis_flux = M2_LS_VALUE*M2_Candidate_Idref[uiIndex] + FLUX_VALUE;
    M2_q_axis_flux = M2_LS_VALUE*M2_Candidate_Iqref[uiIndex];


    M1_copper_loss = 1.5f*M1_RS_VALUE*(powf(M1_Candidate_Iqref[uiIndex],2.0f)+powf(M1_Candidate_Idref[uiIndex],2.0f));
    M1_core_loss =  CFE*powf(fabsf(Module1_Parameters.AngularSpeedRadSec.Electrical),LAMBDA)*(powf(M1_d_axis_flux,2.0f)+powf(M1_q_axis_flux,2.0f));

    M2_copper_loss = 1.5f*M2_RS_VALUE*(powf(M2_Candidate_Iqref[uiIndex],2.0f)+powf(M2_Candidate_Idref[uiIndex],2.0f));
    M2_core_loss =  CFE*powf(fabsf(Module1_Parameters.AngularSpeedRadSec.Electrical),LAMBDA)*(powf(M2_d_axis_flux,2.0f)+powf(M2_q_axis_flux,2.0f));


    TotalLoss[uiIndex] = M1_copper_loss + M1_core_loss + M2_copper_loss + M2_core_loss;

    if(minimumlossvalue>TotalLoss[uiIndex])
    {
        minimumlossvalue = TotalLoss[uiIndex];
        minimumlossindex = uiIndex;
    }


}
