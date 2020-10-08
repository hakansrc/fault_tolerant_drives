#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>
#include <math.h>

#include "CustomTypeDefs.h"
#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"



__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/
__interrupt void epwm1_isr(void);       /*prototype of the ISR functions*/

void InitializationRoutine(void);       /*all modules and gpios are initialized inside this function.*/
void InitializeEpwm1Registers(void);
void SetupGPIOs(void);
inline void Run_PI_Controller(volatile PID_Parameters &pidparams);
inline void CalculateParkTransform(volatile ModuleParameters& moduleparams);
static inline void ExecuteFirstPrediction(ModuleParameters& moduleparams, unsigned int indexcount);
static inline void ExecuteSecondPrediction(ModuleParameters& moduleparams, unsigned int indexcount);
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
    EPwm1Regs.TBCTL.bit.PHSEN = TB_ENABLE;
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




}
__interrupt void epwm1_isr(void)
{
    /*This will be the main control isr*/
    Epwm1Counter++;

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

inline void Run_PI_Controller(volatile PID_Parameters &pidparams)
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
}
inline void CalculateParkTransform(volatile ModuleParameters& moduleparams)
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
    SetupGPIOs();
    InitializeEpwm1Registers();
}
