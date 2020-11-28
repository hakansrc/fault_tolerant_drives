#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>


__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/
__interrupt void epwm1_isr(void);       /*prototype of the ISR functions*/
void InitializeEpwm1Registers();        /*prototype of epwm1 initialization function*/

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

    InitializeEpwm1Registers();


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
void InitializeEpwm1Registers()
{
    EPwm1Regs.TBCTL.all = 0x00;
    EPwm1Regs.TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;  // Set counter to be up-down

    /*These bits select the time base clock pre-scale value (TBCLK = EPWMCLK/(HSPCLKDIV * CLKDIV):*/
    EPwm1Regs.TBCTL.bit.CLKDIV = TB_DIV1;
    EPwm1Regs.TBCTL.bit.HSPCLKDIV = TB_DIV1;


    EPwm1Regs.TBPRD = (200000000) / (10000) /2;  /*period is set to be 10khz (for up down count)*/

    EPwm1Regs.CMPCTL.all = 0x00;
    EPwm1Regs.CMPCTL.bit.SHDWAMODE = 1;         //only active registers are used

    EPwm1Regs.AQCTLA.all = 0x00;
    EPwm1Regs.AQCTLA.bit.CAU = AQ_SET;      //set high
    EPwm1Regs.AQCTLA.bit.CAD = AQ_CLEAR;    //set low

    EPwm1Regs.CMPA.bit.CMPA = EPwm1Regs.TBPRD / 2;    // Set compare A value

    EPwm1Regs.ETSEL.all = 0x00;
    EPwm1Regs.ETSEL.bit.INTSEL = 1; // When TBCTR == 0
    EPwm1Regs.ETSEL.bit.INTEN = 1;  // Enable INT
    EPwm1Regs.ETPS.all = 0x00;
    EPwm1Regs.ETPS.bit.INTPRD = 1;  // Generate INT on first event

    EALLOW;
    GpioCtrlRegs.GPAPUD.bit.GPIO0 = 1;    // Disable pull-up on GPIO0 (EPWM1A)
    GpioCtrlRegs.GPAPUD.bit.GPIO1 = 1;    // Disable pull-up on GPIO1 (EPWM1B)
    GpioCtrlRegs.GPAGMUX1.bit.GPIO0 = 0;  // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAGMUX1.bit.GPIO1 = 0;  // Configure GPIO1 as EPWM1B
    GpioCtrlRegs.GPAMUX1.bit.GPIO0 = 1;   // Configure GPIO0 as EPWM1A
    GpioCtrlRegs.GPAMUX1.bit.GPIO1 = 1;   // Configure GPIO1 as EPWM1B
    EDIS;


}
__interrupt void epwm1_isr(void)
{
    Epwm1Counter++;
    EPwm1Regs.ETCLR.bit.INT = 1;
    // Acknowledge this interrupt to receive more interrupts from group 3
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP3;
}
