#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>
#include "CustomTypeDefs.h"
#include <math.h>

using namespace std;



volatile uint64_t    ui64_timemeas_execution_beginning = 0;
volatile uint64_t    ui64_timemeas_execution_total = 0;
volatile uint64_t    ui64PI_execution_beginning = 0;
volatile uint64_t    ui64PI_execution_total = 0;
volatile uint64_t    ui64ParkTransform_execution_beginning = 0;
volatile uint64_t    ui64ParkTransform_execution_total = 0;





volatile PID_Parameters PI_iq;
volatile ModuleParameters Module1Parameters;



inline void Run_PI_Controller(volatile PID_Parameters &pidparams);
inline void CalculateParkTransform(volatile ModuleParameters& moduleparameters);

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

    InitSysCtrl();  /*initialize the peripheral clocks*/


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
}

inline void Run_PI_Controller(volatile PID_Parameters &pidparams)
{
    pidparams.Output = pidparams.Output_prev + pidparams.P_coeff*(pidparams.Input-pidparams.Input_prev)+ (pidparams.Ts)/2.0*pidparams.I_coeff*(pidparams.Input+pidparams.Input_prev);
}
inline void CalculateParkTransform(volatile ModuleParameters& moduleparameters)
{
    moduleparameters.PhaseCurrent.transformed.Dvalue = 0.66667*(moduleparameters.PhaseCurrent.PhaseA*sinf(moduleparameters.Angle.Electrical)\
            +moduleparameters.PhaseCurrent.PhaseB*sinf(moduleparameters.Angle.Electrical-0.66667*PI/*2*PI/3*/)\
            +moduleparameters.PhaseCurrent.PhaseC*sinf(moduleparameters.Angle.Electrical+0.66667*PI/*2*PI/3*/));
    moduleparameters.PhaseCurrent.transformed.Qvalue = 0.66667*(moduleparameters.PhaseCurrent.PhaseA*cosf(moduleparameters.Angle.Electrical)\
            +moduleparameters.PhaseCurrent.PhaseB*cosf(moduleparameters.Angle.Electrical-0.66667*PI/*2*PI/3*/)\
            +moduleparameters.PhaseCurrent.PhaseC*cosf(moduleparameters.Angle.Electrical+0.66667*PI/*2*PI/3*/));
#if 0
    moduleparameters.PhaseCurrent.ZeroValue = 0.66667*0.5*(moduleparameters.PhaseCurrent.PhaseA\
            +moduleparameters.PhaseCurrent.PhaseB\
            +moduleparameters.PhaseCurrent.PhaseC);
#endif
    //ids = 2/3*(ias*sin(ref_frame_position)+ibs*sin(ref_frame_position-2*pi/3)+ics*sin(ref_frame_position+2*pi/3));
    //iqs =  2/3*(ias*cos(ref_frame_position)+ibs*cos(ref_frame_position-2*pi/3)+ics*cos(ref_frame_position+2*pi/3));
    //i0 = 2/3*1/2*(ias+ibs+ics);
}
