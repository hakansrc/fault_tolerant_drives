#include <F2837xD_Device.h>
#include <math.h>
#include <F2837xD_Pie_defines.h>
#include <F2837xD_Examples.h>
#include <F2837xD_Adc_defines.h>
#include <F2837xD_EPwm_defines.h>
#include <SciLib28379d.h>
#include <stdio.h>
#include <string.h>

#define SCIBRXBUFFERSIZE 256
#define PI              3.141592654
#define SWFREQ 40000           // Hz

__interrupt void cpu_timer0_isr(void);
__interrupt void cpu_timer1_isr(void);
__interrupt void cpu_timer2_isr(void);
__interrupt void SCIB_RX_FIFO_isr(void);
void Gpio_Select1();
void SciSendFloat(float *fVariableToSend);


LibSciSettings SciSettings;
unsigned int scibrxcount = 0;
unsigned char ucScibRxBuffer[SCIBRXBUFFERSIZE];
unsigned int uiScibRxBufferIndex=0;
double spwm_counter = 0;
float epwm_duty = 0.5;


unsigned long int delaytime = 1000000;
float number1= 50.2;
float number2= -53.4;

char carrynumber1[4];
char carrynumber2[4];
char *ptrnumber1;
unsigned int sendthroughsciflag = 0;
int main(void)
{
    /**/
    InitSysCtrl();// first link F2837xD_SysCtrl.c
    InitPeripheralClocks();


    InitPieCtrl();
    // Disable CPU interrupts and clear all CPU interrupt flags:
    //
    IER = 0x0000;
    IFR = 0x0000;

    InitPieVectTable();

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;   /*disable epwm clock to initialize epwm modules*/
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC =0;
    EDIS;
    InitCpuTimers();   // For this example, only initialize the Cpu Timers
    ConfigCpuTimer(&CpuTimer0, 100, 2000000); //2 miliseconds
    ConfigCpuTimer(&CpuTimer1, 100, 1000000/SWFREQ); //1 seconds
    ConfigCpuTimer(&CpuTimer2, 100, 1000000); //2 seconds

    //CpuTimer0Regs.PRD.all = 0xFFFFFFFF;
    CpuTimer0Regs.TCR.all = 0x4000; // Use write-only instruction to set TSS bit = 0
    CpuTimer1Regs.TCR.all = 0x4000; // Use write-only instruction to set TSS bit = 0
    CpuTimer2Regs.TCR.all = 0x4000; // Use write-only instruction to set TSS bit = 0


    InitPieCtrl();// first link F2837xD_PieCtrl.c
    IER = 0x0000;
    IFR = 0x0000;
    //PieVectTable.TIMER0_INT = &cpu_timer0_isr;
    InitPieVectTable();

    EALLOW;  // This is needed to write to EALLOW protected registers
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;
    EDIS;

    Gpio_Select1();

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;
    CpuSysRegs.PCLKCR0.bit.GTBCLKSYNC =1;

    EDIS;
    IER |= M_INT1;
    IER |= M_INT3;
    IER |= M_INT13;
    IER |= M_INT14;

    SciSettings.BaudRate = BAUD460800;  /*baud 115200*/
    SciSettings.CharacterBits = 7;      /*8 character bits*/
    SciSettings.ParityEnable = 0;       /*parity disabled*/
    SciSettings.ParityType = 0;         /*odd parity*/
    SciSettings.StopBit = 0;            /*1 stop bit*/
    InitializeSci_Lib(&ScibRegs,&SciSettings,&SCIB_RX_FIFO_isr);
    /*
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;
    PieCtrlRegs.PIEIER3.bit.INTx1 = 1;
    PieCtrlRegs.PIEIER3.bit.INTx2 = 1;
    PieCtrlRegs.PIEIER3.bit.INTx3 = 1;
    */
    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global realtime interrupt DBGM
    char VariableToSend[22];
    sprintf(VariableToSend,"merhabalar ben hakan0\n");
    VariableToSend[10] = '0';
    //memcpy((float *)carrynumber1,&number1,4);
    //memcpy(carrynumber2,&number2,4);
    //sprintf(carrynumber1,"%x",number1);
#if 0
    int *p;
    int *p2;
    p = &number1;
    carrynumber1[3] = __byte(p,3);
    carrynumber1[2] = __byte(p,2);
    carrynumber1[1] = __byte(p,1);
    carrynumber1[0] = __byte(p,0);

    p2 = &number2;
    carrynumber2[3] = __byte(p2,3);
    carrynumber2[2] = __byte(p2,2);
    carrynumber2[1] = __byte(p2,1);
    carrynumber2[0] = __byte(p2,0);
#endif
    while(1)
    {
#if 0
        ScibUartSend(VariableToSend, 22);
        if(VariableToSend[20]=='9')
        {
            VariableToSend[20] = '0';
        }
        else
        {
            VariableToSend[20]++;
        }
        if(VariableToSend[10]=='9')
        {
            VariableToSend[10] = '0';
        }
        else
        {
            VariableToSend[10]++;
        }
#endif
        //ScibUartSend(carrynumber1, 4);
        /*
        ScibUartSend(ptrnumber1, 2);
        ScibUartSend(ptrnumber1+1, 2);
        ScibUartSend(ptrnumber1+2, 2);
        ScibUartSend(ptrnumber1+3, 2);
        */
        /*
        ScibUartSend(carrynumber1, 4);
        ScibUartSend(carrynumber2, 4);
        */

        //SciSendFloat(&number1);
        //SciSendFloat(&number2);
        //ScibUartSend((char *)&carrynumber1, 4);
        DELAY_US(delaytime);

        if(sendthroughsciflag==1)
        {

        }
    }
}




__interrupt void cpu_timer0_isr(void)
{
    CpuTimer0.InterruptCount++;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

__interrupt void cpu_timer1_isr(void)
{
    GpioDataRegs.GPATOGGLE.bit.GPIO31 = 1;   //blue
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;   //blue
    CpuTimer1.InterruptCount++;
    epwm_duty = (0.5*sin(2*PI * 50 * spwm_counter / SWFREQ - 2 * PI / 3) + 1) / 2;
    spwm_counter += 1;
    //epwm_duty = 0.012;
    SciSendFloat(&epwm_duty);
    if (spwm_counter > ((SWFREQ / 50) - 1))
    {
        spwm_counter = 0;
        sendthroughsciflag = 1;
    }
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

__interrupt void cpu_timer2_isr(void)
{
    CpuTimer2.InterruptCount++;

}
void Gpio_Select1()
{
    EALLOW;
    GpioCtrlRegs.GPAMUX1.all = 0;
    GpioCtrlRegs.GPAMUX2.all = 0;
    GpioCtrlRegs.GPAGMUX1.all = 0;
    GpioCtrlRegs.GPAGMUX2.all = 0;

    GpioCtrlRegs.GPBMUX1.all = 0;
    GpioCtrlRegs.GPBMUX2.all = 0;
    GpioCtrlRegs.GPBGMUX1.all = 0;
    GpioCtrlRegs.GPBGMUX2.all = 0;

    GpioCtrlRegs.GPCMUX1.all = 0;
    GpioCtrlRegs.GPCMUX2.all = 0;
    GpioCtrlRegs.GPCGMUX1.all = 0;
    GpioCtrlRegs.GPCGMUX2.all = 0;

    GpioCtrlRegs.GPDMUX1.all = 0;
    GpioCtrlRegs.GPDMUX2.all = 0;
    GpioCtrlRegs.GPDGMUX1.all = 0;
    GpioCtrlRegs.GPDGMUX2.all = 0;

    GpioCtrlRegs.GPEMUX1.all = 0;
    GpioCtrlRegs.GPEMUX2.all = 0;
    GpioCtrlRegs.GPEGMUX1.all = 0;
    GpioCtrlRegs.GPEGMUX2.all = 0;

    GpioCtrlRegs.GPFMUX1.all = 0;
    //GpioCtrlRegs.GPFMUX2.all = 0;
    GpioCtrlRegs.GPFGMUX1.all = 0;
    //GpioCtrlRegs.GPFGMUX2.all = 0;

    GpioCtrlRegs.GPAPUD.bit.GPIO31 = 0; // enable pull up
    GpioDataRegs.GPASET.bit.GPIO31 = 1; // Load output latch. Recommended in rm
    GpioCtrlRegs.GPADIR.bit.GPIO31 = 1; // set it as output

    GpioCtrlRegs.GPBPUD.bit.GPIO34 = 0; // enable pull up
    GpioDataRegs.GPBSET.bit.GPIO34 = 1; // Load output latch. Recommended in rm
    GpioCtrlRegs.GPBDIR.bit.GPIO34 = 1; // set it as output



    GpioDataRegs.GPACLEAR.bit.GPIO31 = 1;
    GpioDataRegs.GPBSET.bit.GPIO34 = 1;


    EDIS;

    /*TODO pullup settings can be done here*/
    /***************************************/

}

__interrupt void SCIB_RX_FIFO_isr(void)
{
    static int i = 0;
    for(i=0;i<ScibRegs.SCIFFRX.bit.RXFFIL;i++)
    {
        ucScibRxBuffer[uiScibRxBufferIndex] = ScibRegs.SCIRXBUF.bit.SAR;
        uiScibRxBufferIndex++;
        if(uiScibRxBufferIndex==SCIBRXBUFFERSIZE)
        {
            uiScibRxBufferIndex = 0;
        }
    }
    ScibRegs.SCIFFRX.bit.RXFFOVRCLR=1;   // Clear Overflow flag
    ScibRegs.SCIFFRX.bit.RXFFINTCLR=1;   // Clear Interrupt flag
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;
}


void SciSendFloat(float *fVariableToSend)
{
    char cPartitionTheNumber[4];
    cPartitionTheNumber[3] = __byte((int *)fVariableToSend,3);
    cPartitionTheNumber[2] = __byte((int *)fVariableToSend,2);
    cPartitionTheNumber[1] = __byte((int *)fVariableToSend,1);
    cPartitionTheNumber[0] = __byte((int *)fVariableToSend,0);
    ScibUartSend(cPartitionTheNumber, 4);
}
