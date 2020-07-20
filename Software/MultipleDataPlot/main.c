#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>
#include <string.h>
#include <math.h>

__interrupt void cpu_timer0_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer1_isr(void);  /*prototype of the ISR functions*/
__interrupt void cpu_timer2_isr(void);  /*prototype of the ISR functions*/


#define HAKANSRC
#ifdef HAKANSRC
void scia_fifo_init();
int SciaUartSend_NoInterrupt(char *BuffWriteArray, unsigned int lengthOfData);
int SciSendMultipleFloatWithTheTag(float *FloatArrayToBeSent, uint16_t ui16NumberOfFloats,volatile struct SCI_REGS* SerialChannelPtr);
void SciaBackgroundTask(void);
#define SCILIBBUFFERLENGTH      128
#define SCIARXBUFFERSIZE        64
unsigned char ucSciaRxBuffer[SCIARXBUFFERSIZE];
unsigned int uiSciaRxBufferIndex = 0;
char cSciaLibDataBuffer[SCILIBBUFFERLENGTH];
unsigned int uiSciaLibWriteToBufferIndex;
unsigned int uiSciaLibReadFromBufferIndex;
unsigned int uiSciaLibBufferNumberOfMessages;
int SciSendFloatTagged(float *fVariableToSend, volatile struct SCI_REGS* SerialChannelPtr, char *TheTag);
int SciSendFloatNoTag(float *fVariableToSend, volatile struct SCI_REGS* SerialChannelPtr);
char cPartitionTheTaggedNumber[8];
char cPartitionTheUnTaggedNumber[4];
#define MULTIPLEFLOATARRAYSIZE 28
char cSendMultipleFloatArray[MULTIPLEFLOATARRAYSIZE];
#define THETAG              "hsrc"
#define TAGNUMBER1            "0001"
#define TAGNUMBER2            "0002"
#define TAGNUMBER3            "0003"
#define TAGNUMBER4            "0004"
#define TAGNUMBER5            "0005"
float reference_error = 0;
#endif //HAKANSRC


/**
 * main.c
 */

float fSynchronousData = 5.0;
unsigned char SendData = 0;
float fFloatToBeSent[6] = {2,2,2,2,2,2};
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
    ConfigCpuTimer(&CpuTimer0, 200, 28*1000000/512); //1 seconds
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


    scia_fifo_init();
    while(1)
    {
#ifdef HAKANSRC
    SciaBackgroundTask();
#endif //HAKANSRC
    }
    return 0;
}
__interrupt void cpu_timer0_isr(void)
{
    CpuTimer0.InterruptCount++;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
#if 0
    SciaRegs.SCITXBUF.all = 'h';
    SciaRegs.SCITXBUF.all = 's';
    SciaRegs.SCITXBUF.all = 'r';
    SciaRegs.SCITXBUF.all = 'c';
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 11;
    SciaRegs.SCITXBUF.all = 11;
    SciaRegs.SCITXBUF.all = 12;
    SciaRegs.SCITXBUF.all = 12;
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 22;
    SciaRegs.SCITXBUF.all = 22;
    SciaRegs.SCITXBUF.all = 22;
    SciaRegs.SCITXBUF.all = 22;
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 33;
    SciaRegs.SCITXBUF.all = 33;
    SciaRegs.SCITXBUF.all = 32;
    SciaRegs.SCITXBUF.all = 32;
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 44;
    SciaRegs.SCITXBUF.all = 44;
    SciaRegs.SCITXBUF.all = 42;
    SciaRegs.SCITXBUF.all = 42;
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 55;
    SciaRegs.SCITXBUF.all = 55;
    SciaRegs.SCITXBUF.all = 52;
    SciaRegs.SCITXBUF.all = 52;
    DELAY_US(44);
    SciaRegs.SCITXBUF.all = 66;
    SciaRegs.SCITXBUF.all = 66;
    SciaRegs.SCITXBUF.all = 62;
    SciaRegs.SCITXBUF.all = 62;
    DELAY_US(44);
#else
    SciSendMultipleFloatWithTheTag(fFloatToBeSent,6,&SciaRegs);
#endif


    if(SendData==200)
    {
        SendData = 0;
    }
#if 0
    SciaRegs.SCITXBUF.all = 'B';
    SciaRegs.SCITXBUF.all = 'C';
    SciaRegs.SCITXBUF.all = 'D';
    SciaRegs.SCITXBUF.all = 'E';
    SciaRegs.SCITXBUF.all = 'F';
    SciaRegs.SCITXBUF.all = 'G';
#endif

}

__interrupt void cpu_timer1_isr(void)
{
    CpuTimer1.InterruptCount++;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

__interrupt void cpu_timer2_isr(void)
{
#ifdef HAKANSRC
    //SciSendFloatTagged(&fSynchronousData, &SciaRegs, TAGNUMBER1);
#endif
    CpuTimer2.InterruptCount++;

}

#ifdef HAKANSRC
void scia_fifo_init()
{

    EALLOW;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBMUX1.bit.GPIO42 = 3;
    GpioCtrlRegs.GPBGMUX1.bit.GPIO43 = 3;
    GpioCtrlRegs.GPBMUX1.bit.GPIO43 = 3;
    EDIS;

#define CPU_FREQ        200e6
#define LSPCLK_FREQ     CPU_FREQ/4
#define SCI_FREQ        921600.0
#define SCI_PRD         (((float)LSPCLK_FREQ)/(SCI_FREQ*8))-1
#define TAGNUMBER1            "0001"

   SciaRegs.SCICCR.all = 0x0007;      // 1 stop bit,  No loopback
                                      // No parity,8 char bits,
                                      // async mode, idle-line protocol
   SciaRegs.SCICTL1.all = 0x0003;     // enable TX, RX, internal SCICLK,
                                      // Disable RX ERR, SLEEP, TXWAKE
   SciaRegs.SCICTL2.bit.TXINTENA = 0;
   SciaRegs.SCICTL2.bit.RXBKINTENA = 0;
   SciaRegs.SCIHBAUD.all = 0x0000;
   SciaRegs.SCILBAUD.all = round(SCI_PRD);
   SciaRegs.SCICCR.bit.LOOPBKENA = 0; // Enable loop back
   SciaRegs.SCIFFTX.all = 0xC022;
   SciaRegs.SCIFFRX.all = 0x0022;
   SciaRegs.SCIFFCT.all = 0x00;

   SciaRegs.SCICTL1.all = 0x0023;     // Relinquish SCI from Reset
   SciaRegs.SCIFFTX.bit.TXFIFORESET = 1;
   SciaRegs.SCIFFRX.bit.RXFIFORESET = 1;
}
void SciaBackgroundTask(void)
{
    while ((uiSciaLibBufferNumberOfMessages > 0)
            && (SciaRegs.SCIFFTX.bit.TXFFST != 16))
    {
        SciaRegs.SCITXBUF.all =
                cSciaLibDataBuffer[uiSciaLibReadFromBufferIndex];
        uiSciaLibReadFromBufferIndex++;
        if (uiSciaLibReadFromBufferIndex == SCILIBBUFFERLENGTH)
        {
            uiSciaLibReadFromBufferIndex = 0;
        }
        uiSciaLibBufferNumberOfMessages--;
    }
}

int SciaUartSend_NoInterrupt(char *BuffWriteArray, unsigned int lengthOfData)
{
    if ((uiSciaLibBufferNumberOfMessages + lengthOfData) > SCILIBBUFFERLENGTH)
    {
        /*because the buffer is full, try again later*/
        return -1;
    }
    if ((uiSciaLibWriteToBufferIndex + lengthOfData) < SCILIBBUFFERLENGTH)
    {
        /*if rollover won't happen, just copy inside the buffer*/
        memcpy(&cSciaLibDataBuffer[uiSciaLibWriteToBufferIndex], BuffWriteArray,
               lengthOfData);
        uiSciaLibWriteToBufferIndex += lengthOfData;
        uiSciaLibBufferNumberOfMessages += lengthOfData;
    }
    else
    {
        /*if rollover happens, deal with it nicely*/
        /*first copy the first part*/
        memcpy(&cSciaLibDataBuffer[uiSciaLibWriteToBufferIndex], BuffWriteArray,
               (SCILIBBUFFERLENGTH - uiSciaLibWriteToBufferIndex));
        /*then copy the second part*/
        memcpy(&cSciaLibDataBuffer[0],
               BuffWriteArray
                       + (SCILIBBUFFERLENGTH - uiSciaLibWriteToBufferIndex),
               lengthOfData
                       - (SCILIBBUFFERLENGTH - uiSciaLibWriteToBufferIndex));
        uiSciaLibBufferNumberOfMessages += lengthOfData;
        uiSciaLibWriteToBufferIndex = lengthOfData
                - (SCILIBBUFFERLENGTH - uiSciaLibWriteToBufferIndex);
    }
    return lengthOfData;
}

int SciSendMultipleFloatWithTheTag(float *FloatArrayToBeSent, uint16_t ui16NumberOfFloats,volatile struct SCI_REGS* SerialChannelPtr)
{
    int16_t theIndex=0;


    /*hakansrc
     WARNING: Call this function only inside an ISR (i.e. not in a polling manner), otherwise problems will occur.
     WARNING: Before using this function make sure the serial channel is initialized using the InitializeSci_Lib function of the library
     This function should be called at maximum rate of 20khz. For higher frequency values, the bandwidth of the serial channel is not enough.
     Using this function an important variable inside the code can be observed with a rate of 20khz.
     Further investigation of the signal (FFT etc.) can be made if the signal is saved using the matlab routine SaveSerialData.m.
     This function requires no tagging
     */
#if 0
    for(theIndex=((ui16NumberOfFloats+1)*4-1);theIndex>=0;theIndex--)
    {
        cSendMultipleFloatArray[theIndex] = __byte((int *) FloatArrayToBeSent,theIndex);
    }
#else
    for(theIndex=4;theIndex<((ui16NumberOfFloats+1)*4);theIndex++)
    {
        cSendMultipleFloatArray[theIndex] = __byte((int *) FloatArrayToBeSent,theIndex-4);
    }
#endif

#if 0
    cSendMultipleFloatArray[7] = __byte((int *) fVariableToSend, 3);
    cSendMultipleFloatArray[6] = __byte((int *) fVariableToSend, 2);
    cSendMultipleFloatArray[5] = __byte((int *) fVariableToSend, 1);
    cSendMultipleFloatArray[4] = __byte((int *) fVariableToSend, 0);
#endif
    memcpy(cSendMultipleFloatArray, THETAG, 4);
    if (SerialChannelPtr == &SciaRegs)
    {
        return SciaUartSend_NoInterrupt(cSendMultipleFloatArray, (ui16NumberOfFloats+1)*4);
    }
    return -1;
}

int SciSendFloatNoTag(float *fVariableToSend, volatile struct SCI_REGS* SerialChannelPtr)
{
    /*hakansrc
     WARNING: Call this function only inside an ISR (i.e. not in a polling manner), otherwise problems will occur.
     WARNING: Before using this function make sure the serial channel is initialized using the InitializeSci_Lib function of the library
     This function should be called at maximum rate of 20khz. For higher frequency values, the bandwidth of the serial channel is not enough.
     Using this function an important variable inside the code can be observed with a rate of 20khz.
     Further investigation of the signal (FFT etc.) can be made if the signal is saved using the matlab routine SaveSerialData.m.
     This function requires no tagging
     */
    cPartitionTheUnTaggedNumber[3] = __byte((int *) fVariableToSend, 3);
    cPartitionTheUnTaggedNumber[2] = __byte((int *) fVariableToSend, 2);
    cPartitionTheUnTaggedNumber[1] = __byte((int *) fVariableToSend, 1);
    cPartitionTheUnTaggedNumber[0] = __byte((int *) fVariableToSend, 0);
    if (SerialChannelPtr == &SciaRegs)
    {
        return SciaUartSend_NoInterrupt(cPartitionTheUnTaggedNumber, 4);
    }
    return -1;
}
int SciSendFloatTagged(float *fVariableToSend, volatile struct SCI_REGS* SerialChannelPtr, char *TheTag)
{
    /*hakansrc
     WARNING: Call this function only inside an ISR (i.e. not in a polling manner), otherwise problems will occur.
     WARNING: Before using this function make sure the serial channel is initialized using the InitializeSci_Lib function of the library
     This  function should can be called around 10 times a second. It is for observing variables with low data rates, such as RMS values, Control parameter values, speed etc.
     The tags are are stated as definitions at the beginning (TAGNUMBER1:TAGNUMBER5), they can be renamed, tags always have to be 4 characters.
     If the tag entities are changed, make sure they are also changed inside the matlab routine SaveSerialData.m, which does filtering & saving of the data.
     */
    cPartitionTheTaggedNumber[7] = __byte((int *) fVariableToSend, 3);
    cPartitionTheTaggedNumber[6] = __byte((int *) fVariableToSend, 2);
    cPartitionTheTaggedNumber[5] = __byte((int *) fVariableToSend, 1);
    cPartitionTheTaggedNumber[4] = __byte((int *) fVariableToSend, 0);
    memcpy(cPartitionTheTaggedNumber, TheTag, 4);
    if (SerialChannelPtr == &SciaRegs)
    {
        return SciaUartSend_NoInterrupt(cPartitionTheTaggedNumber, 8);
    }
    return -1;
}
#endif //HAKANSRC
