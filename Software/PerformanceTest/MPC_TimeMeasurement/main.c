#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>

#define P_COEFFICIENT       12.5    /*these values are random for now*/
#define I_COEFFICIENT       12.5    /*these values are random for now*/
#define PI_TS_COEFFICIENT   12.5    /*these values are random for now*/

volatile uint64_t    ui64_timemeas_execution_beginning = 0;
volatile uint64_t    ui64_timemeas_execution_total = 0;
volatile uint64_t    ui64PI_execution_beginning = 0;
volatile uint64_t    ui64PI_execution_total = 0;

typedef struct{
    float P_coeff;
    float I_coeff;
    float Ts;
    float *fptrOutput;
    float *fptrOutput_prev;
    float *fptrInput;
    float *fptrInput_prev;
}PID_Parameters;
typedef struct{
    float   *fptrPhaseA;
    float   *fptrPhaseB;
    float   *fptrPhaseC;
    float   *angleRad;
    float   *fptrDvalue;
    float   *fptrQvalue;
}ParkTransformValues;



volatile PID_Parameters PI_iq;
float fPI_Input = 25.2;
float fPI_Input_prev = 32.5;
float fPI_Output = 22.22;
float fPI_Output_prev = 33.33;



inline void Run_PI_Controller(volatile PID_Parameters *pidparams);

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
    PI_iq.fptrInput = &fPI_Input;
    PI_iq.fptrInput_prev = &fPI_Input_prev;
    PI_iq.fptrOutput = &fPI_Output;
    PI_iq.fptrOutput_prev = &fPI_Output_prev;



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
    Run_PI_Controller(&PI_iq);  /*execution of this PI controller takes around 29 clock cycles (may be reduced even further when declared as macro)*/
    ui64PI_execution_total = (IpcRegs.IPCCOUNTERL + IpcRegs.IPCCOUNTERH) - ui64PI_execution_beginning;

}

inline void  Run_PI_Controller(volatile PID_Parameters *pidparams)
{
    *(pidparams->fptrOutput) = *(pidparams->fptrOutput_prev) + pidparams->P_coeff*(*(pidparams->fptrInput)-*(pidparams->fptrInput_prev))+ (pidparams->Ts)/2.0*((pidparams->I_coeff))*(*(pidparams->fptrInput)+*(pidparams->fptrInput_prev));
}
