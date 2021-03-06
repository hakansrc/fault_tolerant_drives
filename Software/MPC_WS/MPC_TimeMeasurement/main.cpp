#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>
#include <math.h>

#include "CustomTypeDefs.h"
#include "MachineParameters.h"
#include "ConstantParameters.h"
#include "ControllerParameters.h"

using namespace std;



volatile uint64_t    ui64_timemeas_execution_beginning = 0;
volatile uint64_t    ui64_timemeas_execution_total = 0;
volatile uint64_t    ui64PI_execution_beginning = 0;
volatile uint64_t    ui64PI_execution_total = 0;
volatile uint64_t    ui64ParkTransform_execution_beginning = 0;
volatile uint64_t    ui64ParkTransform_execution_total = 0;

volatile uint64_t    ui64Prediction_execution_beginning = 0;
volatile uint64_t    ui64Prediction_execution_total = 0;




volatile PID_Parameters PI_iq;
ModuleParameters Module1Parameters;



inline void Run_PI_Controller(volatile PID_Parameters &pidparams);
inline void CalculateParkTransform(volatile ModuleParameters& moduleparams);
static inline void ExecuteFirstPrediction(ModuleParameters& moduleparams, unsigned int indexcount);
static inline void ExecuteSecondPrediction(ModuleParameters& moduleparams, unsigned int indexcount);

__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/

uint16_t run_the_controller = 0;
uint16_t run_the_controller_counter = 0;

/**
 * main.c
 */
int main(void)
{
    int i = 0;

    InitSysCtrl();  /*initialize the peripheral clocks*/


    InitPieCtrl();  /*initialize the PIE table (interrupt related)*/
    IER = 0x0000;   /*clear the Interrupt Enable Register   (IER)*/
    IFR = 0x0000;   /*clear the Interrupt Flag Register     (IFR)*/
    InitPieVectTable();

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;   /*stop the TimeBase clock for later synchronization*/
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 0;  /*stop the global TimeBase clock for later synchronization*/
    EDIS;

    for(i=0;i<NUMBEROFMPCLOOPS;i++)
    {
        Module1Parameters.OptimizationFsw[i] = ((float)i+1.0)*1000.0;
    }


    /*Initialize cpu timers*/
    InitCpuTimers();
    ConfigCpuTimer(&CpuTimer0, 200, 100000); //.1 seconds
    ConfigCpuTimer(&CpuTimer1, 200, 1000000); //1 seconds
    ConfigCpuTimer(&CpuTimer2, 200, 1000000); //1 seconds
    CpuTimer0Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer1Regs.TCR.all = 0x4000; // enable cpu timer interrupt
    CpuTimer2Regs.TCR.all = 0x4000; // enable cpu timer interrupt



    EALLOW;
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;  /*specify the interrupt service routine (ISR) address to the PIE table*/
    EDIS;
    IER |= M_INT1;  /*Enable the PIE group of Cpu timer 0 interrupt*/
    IER |= M_INT13; /*Enable the PIE group of Cpu timer 1 interrupt*/
    IER |= M_INT14; /*Enable the PIE group of Cpu timer 2 interrupt*/
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;  // Enable the PIE block
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;  /*Enable the 7th interrupt of the Group 1, which is for timer 0 interrupt*/

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;   /*start the TimeBase clock */
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC = 1;  /*start the global TimeBase clock */
    EDIS;

    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global realtime interrupt DBGM

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

    PI_iq.I_coeff   = I_COEFFICIENT;
    PI_iq.P_coeff   = P_COEFFICIENT;
    PI_iq.Ts        = PI_TS_COEFFICIENT;
    PI_iq.Input = 22.1;
    PI_iq.Input_prev = 21.5;
    PI_iq.Output = 56.234;
    PI_iq.Output_prev = 234.234;
    PI_iq.SaturationMax = 2.0*IQ_RATED;
    PI_iq.SaturationMax = -2.0*IQ_RATED;



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
    ui64_timemeas_execution_beginning = IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH;
    ui64_timemeas_execution_total = (IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH) - ui64_timemeas_execution_beginning;

    ui64PI_execution_beginning =  IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH;
    Run_PI_Controller(PI_iq);  /*execution of this PI controller takes around 29 clock cycles (may be reduced even further when declared as macro)*/
    ui64PI_execution_total = (IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH) - ui64PI_execution_beginning;

    ui64ParkTransform_execution_beginning =  IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH;
    CalculateParkTransform(Module1Parameters);  /*execution of this parktransform controller takes around 58 clock cycles (may be reduced even further when declared as macro)*/
    ui64ParkTransform_execution_total = (IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH) - ui64ParkTransform_execution_beginning;

    ui64Prediction_execution_beginning =  IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH;
    Module1Parameters.MinimumCostValue = (float)1e20;
    ExecuteFirstPrediction(Module1Parameters,0);
    ExecuteSecondPrediction(Module1Parameters,0);
    ExecuteFirstPrediction(Module1Parameters,1);
    ExecuteSecondPrediction(Module1Parameters,1);
    ExecuteFirstPrediction(Module1Parameters,2);
    ExecuteSecondPrediction(Module1Parameters,2);
    ExecuteFirstPrediction(Module1Parameters,3);
    ExecuteSecondPrediction(Module1Parameters,3);
    ExecuteFirstPrediction(Module1Parameters,4);
    ExecuteSecondPrediction(Module1Parameters,4);
    ExecuteFirstPrediction(Module1Parameters,5);
    ExecuteSecondPrediction(Module1Parameters,5);
    ExecuteFirstPrediction(Module1Parameters,6);
    ExecuteSecondPrediction(Module1Parameters,6);
    ExecuteFirstPrediction(Module1Parameters,7);
    ExecuteSecondPrediction(Module1Parameters,7);
    ExecuteFirstPrediction(Module1Parameters,8);
    ExecuteSecondPrediction(Module1Parameters,8);
    ExecuteFirstPrediction(Module1Parameters,9);
    ExecuteSecondPrediction(Module1Parameters,9);
    ui64Prediction_execution_total = (IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH) - ui64Prediction_execution_beginning;
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
