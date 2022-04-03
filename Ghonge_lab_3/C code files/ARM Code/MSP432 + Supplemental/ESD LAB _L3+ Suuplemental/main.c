/* --COPYRIGHT--,BSD_EX
 * Copyright (c) 2014, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY ->DIRECT, IN->DIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY ->OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *******************************************************************************
 *
 *                       MSP432 CODE EXAMPLE DISCLAIMER
 *
 * MSP432 code examples are self-contained low-level programs that typically
 * demonstrate a single peripheral function or device feature in a highly
 * concise manner. For this the code may rely on the device's power-on default
 * register values and settings such as the clock configuration and care must
 * be taken when combining code from several examples to avoid potential side
 * effects. Also see http://www.ti.com/tool/mspdriverlib for an API functional
 * library & https://dev.ti.com/pinmux/ for a GUI approach to peripheral configuration.
 *
 * --/COPYRIGHT--*/
//******************************************************************************
//   MSP432P401 Demo -
//
//  Description: This file contains function ie PWM, Temperature change, period change
//                  echoeing of values
//
//
//  The application needs to set MCLK = DCO = 48MHz, and SMCLK = DCO/4 = 12MHz
//  and UART baudrate is 9600bps.
//
//References: https://microdigisoft.com/ti-launchpad-pulse-width-modulation-pwm-using-msp432-microcontroller/
//                Examples code given for MSP432
//                   MSP43P432P401
//             -----------------------
//         /|\|                       |
//          | |                       |
//          --|RST                    |
//            |                       |
//            |                       |
//            |     P1.3/EUSCI_A0->TXD|---->
//            |                       |
//            |     P1.2/EUSCI_A0->RXD|<----
//            |                       |
//            |                       |
//
//   Swapnil Ghonge
//   University of Colorado Boulder
//   03/10/2022
//   Built with CCSv6.1, IAR, Keil, GCC
//******************************************************************************
#include "msp.h"
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
/***********************************
 * Variable Decalaration
 *********************************/
char celsius[20];// Celsius value stored in array
char farenhite[20]; // Farenhite value stored in array
char buffer[20]; // to print duty cycle
char buffer_n[20];// to print period
char my_buff[30];


volatile float prev_temp = 0; // store the current temperature value
volatile float curr_temp = 0; // stores the previous temperature value
volatile long temp;
volatile float IntDegF;
volatile float IntDegC;
volatile float temp_diff = 0; // stores the difference in temperature


int period = 1000; // the period is 100% ie 1000
int switch_flag = 0; // flag sets when switch is pressed
int switch_right = 0; // flag sets when right switch is pressed
int switch_left = 0; // flag sets when left switch is pressed
int k;

/**********************************************
 * Function Declaration
 ***********************************************/
void delayMs(int n);
void portRemap(void);
void myputstr(char *ptr);
void setP1_2Int(void);
void setRxInt(void);
void ADC14_IRQHandler(void);
void PORT1_IRQHandle(void);
void pwm();
int number = 400; // initializing the duty cycle to 400 ie the 40%

/**********************************************
 * Initialzation for Switch (Push Button)
 ***********************************************/
void switch_config()
{
    // Configuring P1.4 and P1.1 (switch) as input with pull-up resistor.
    //We are using ~of BIT1 for setting as input
    P1->DIR = ~(uint8_t) BIT4;
    P1->OUT = BIT4;
    P1->REN = BIT4;

    //P1.1 (switch) is configured as input with pullup resistor
    P1->DIR = ~(uint8_t) BIT1;
    P1->OUT = (BIT1 | BIT4 );
    P1->REN = (BIT1 | BIT4 );
}
/**********************************************
 * Initialzation for Interrupt for  Switch (Push Button)
 ***********************************************/
void ISR()
{

    P1->SEL0 = 0;
    P1->SEL1 = 0;

    //Enabling interrupt in falling edge
    P1->IES = BIT1 | BIT4;

    //Clearing Port 1 interrupt flags
    P1->IFG = 0;

    //Enabling interrupts in P1.1 and P1.4
    P1->IE = BIT1 | BIT4;

    // Enable Port 1 interrupt on the NVIC
    NVIC->ISER[1] = 1 << ((PORT1_IRQn) & 31);
}





/**********************************************
 * Initialzation for Receive in UART
 ***********************************************/
void setRxInt(void)
{
    P1->SEL0 |= BIT2;                    // Reconfigure P1.2 as UART RX function
    P1->REN &= ~BIT2;                       // Disable resistor enable
    EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;    // Clear the UART RX interrupt flag
    EUSCI_A0->IE |= EUSCI_A_IE_RXIE;        // Enable the UART RX interrupt

    // Enable eUSCI_A0 interrupt in NVIC
    NVIC->ISER[0] = 1 << ((EUSCIA0_IRQn) & 31);
}

void setP1_2Int(void)
{
    P1->SEL0 &= ~BIT2;        //P1.2 as IO
    P1->DIR &= ~BIT2;        //P1.2 as input
    P1->OUT |= BIT2;        //P1.2 pull up
    P1->REN |= BIT2;        //P1.2 resistor enable
    P1->IES |= BIT2;        //High-to int
    P1->IFG &= ~BIT2;        //clear flag
    P1->IE |= BIT2;        //enable int

    // Enable Port1 interrupt in NVIC
    NVIC->ISER[1] = 1 << ((PORT1_IRQn) & 31);
}
/**********************************************
 * Interrupt Service Routine for PORT1
 ***********************************************/
// UART interrupt service routine
void PORT1_IRQHandler(void)
{
    volatile uint32_t i;

    if (P1->IFG & BIT2)
    {
        setRxInt();
        P1->IE &= ~BIT2;
        NVIC->ISER[1] = 0;
        P1->IFG &= ~BIT2;
    }

    else if (P1->IFG & BIT1) // when left switch is set
    {
        switch_left = 1;
        switch_right = 0;
        switch_flag = 1;
    }
    else if (P1->IFG & BIT4) // when right switch is set
    {
        switch_left = 0;
        switch_right = 1;
        switch_flag = 1;
    }

    for (i = 0; i < 10000; i++)
    {
        P1->IFG &= ~BIT1;
        P1->IFG &= ~BIT4;
    }
}
/**********************************************
 * Interrupt Service Routine for UART
 ***********************************************/
// UART interrupt service routine
void EUSCIA0_IRQHandler(void)
{
    if (EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG)
    {

        while (!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG))
            ;
        // enter the value as per requriments
        if ((EUSCI_A0->RXBUF != 'd') && (EUSCI_A0->RXBUF != 'D')
                && (EUSCI_A0->RXBUF != 't') && (EUSCI_A0->RXBUF != 'T')
                && (EUSCI_A0->RXBUF != '-') && (EUSCI_A0->RXBUF != '+')
                && (EUSCI_A0->RXBUF != 'c') && (EUSCI_A0->RXBUF != 'C')
                && (EUSCI_A0->RXBUF != 'f') && (EUSCI_A0->RXBUF != 'F')
                && (EUSCI_A0->RXBUF != 'p') && (EUSCI_A0->RXBUF != 'P')
                && (EUSCI_A0->RXBUF != 's') && (EUSCI_A0->RXBUF != 'S'))
        {
            // Echo the received character back
            EUSCI_A0->TXBUF = EUSCI_A0->RXBUF;
        }



        else if ((EUSCI_A0->RXBUF == 't') || (EUSCI_A0->RXBUF == 'T'))
        {
            sprintf(celsius, "\n\rTemperature in degree (C)=%f\n\r", IntDegC);
            myputstr(celsius);
            sprintf(farenhite, "Temperature in degree(F)=%f\n\r", IntDegF);
            myputstr(farenhite);
        }
        else if ((EUSCI_A0->RXBUF == 'c') || (EUSCI_A0->RXBUF == 'C'))
        {
            sprintf(farenhite, "\n\rTemperature in degree (C)=%f\n\r", IntDegC);
            myputstr(farenhite);
        }
        else if ((EUSCI_A0->RXBUF == 'f') || (EUSCI_A0->RXBUF == 'F'))
        {
            sprintf(farenhite, "\n\rTemperature in degree (F)=%f\n\r", IntDegF);
            myputstr(farenhite);
        }

        else if ((EUSCI_A0->RXBUF == 'd') || (EUSCI_A0->RXBUF == 'D'))
        {
            sprintf(buffer, "\nDuty cycle at Pin 7.7=%d\n\r", number);
            myputstr(buffer);
            pwm();
        }
        else if ((EUSCI_A0->RXBUF == 'p') || (EUSCI_A0->RXBUF == 'P'))
        {
             if (period == 1000)
                      {
                      period = 500;
                      }
                      else if (period == 500)
                      {
                      period = 1000;
                      }
            sprintf(buffer_n, "\nPeriod is =%d\n\r", period);
            myputstr(buffer_n);

        }
        /*Increase the duty cycle and toggle led at port 1*/
        else if ((EUSCI_A0->RXBUF == '+'))
        {
            P1DIR = 0x01;
            P1OUT ^= 0x01;
            number = number + 100;
            pwm();
        }

        /*Increase the duty cycle and toggle led at port 2*/
        else if ((EUSCI_A0->RXBUF == '-'))
        {
            P2DIR |= 0x01;
            P2OUT ^= 0x01;
            number = number - 100;
            pwm();
        }
        else if ((EUSCI_A0->RXBUF == 's') || (EUSCI_A0->RXBUF == 'S')) // when S or s is pressed
        {
            for (k=0; k < 30; k++)
            {
                /* increase duty cycle by 5% */
                TIMER_A0->CCR[4] += 2500;
                if (TIMER_A0->CCR[4] > 50000) /* wrap around when reaches 100% */
                    TIMER_A0->CCR[4] = 500; /* begin from 1% */
                delayMs(50);

                TIMER_A0->CCR[1] += 2500;
                if (TIMER_A0->CCR[1] > 50000)
                    TIMER_A1->CCR[1] > 500;
                delayMs(50);
                TIMER_A0->CCR[3] += 2500;
                if (TIMER_A0->CCR[3] > 50000)
                    TIMER_A0->CCR[3] > 500;
                delayMs(50);
            }
        }
    }
}

void myputstr(char *ptr)
{
    while (*ptr)
    {
        while (!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG))
            ;                    // Check if the TX buffer is empty first
        EUSCI_A0->TXBUF = *ptr++; //Echo the received character on the serial terminal
    }
}

/**********************************************
 * Interrupt Service Routine for ADC
 ***********************************************/
void ADC14_IRQHandler(void)
{
    if (ADC14->IFGR0 & ADC14_IFGR0_IFG0)
    {
        temp = ADC14->MEM[0];
    }
}

/**********************************************
 * Pulse width modulated signal
 ***********************************************/
void pwm()
{
    TIMER_A1->CCR[0] = period - 1;                    // PWM Period
    TIMER_A1->CCTL[1] = TIMER_A_CCTLN_OUTMOD_7;     // CCR1 reset/set
    TIMER_A1->CCR[1] = number;                      // CCR1 PWM duty cycle
    TIMER_A1->CTL = TIMER_A_CTL_SSEL__SMCLK |       // SMCLK
            TIMER_A_CTL_MC__UP |            // Up mode
            TIMER_A_CTL_CLR;                // Clear TAR
}
/**********************************************
 * Function to remap the port from P.7,2.6,2.4 to RGB LED
 ***********************************************/
void portRemap(void)
{
    PMAP->KEYID = 0x2D52; /* unlock PMAP */

    P2MAP->PMAP_REGISTER1 = 23; /* remap P2.1 to 23 (TPM0.4) */
    P2MAP->PMAP_REGISTER0 = 22;

    P2MAP->PMAP_REGISTER2 = 20;

    P2->DIR |= 7;
    P2->SEL0 |= 7;
    P2->SEL1 &= ~7;

    PMAP->CTL = 1; /* lock PMAP */
    PMAP->KEYID = 0;
}

/* delay milliseconds when system clock is at 3 MHz */
void delayMs(int n)
{
    int i, j;

    for (j = 0; j < n; j++)
        for (i = 750; i > 0; i--)
            ; /* Delay */
}

void main(void)
{
    /*Variables to store the ADC temperature reference calibration value*/
    int32_t adcRefTempCal_1_2v_30;
    int32_t adcRefTempCal_1_2v_85;

    /*Stop watchdog timer*/
    WDT_A->CTL = WDT_A_CTL_PW |
    WDT_A_CTL_HOLD;

    //calling the Ports and pins of switch
    switch_config();

    //Configuring interrupts
    ISR();

    /* Configure P2.7 as Timer A0.4 output */
    P2->SEL0 |= 0x80;
    P2->SEL1 &= ~0x80;
    P2->DIR |= 0x80;

    portRemap(); /* remap output to P2.1 green LED */

    /* configure TimerA0.4 as PWM */
    TIMER_A0->CCR[0] = 50000 - 1; /* PWM Period */
    TIMER_A0->CCR[4] = 500; /* begin from 1% */
    TIMER_A0->CCTL[4] = TIMER_A_CCTLN_OUTMOD_7; /* CCR4 reset/set mode */
    TIMER_A0->CTL = 0x0214; /* use SMCLK, count up, clear TA0R register */

    /*configure timerA1.0, A1.2 as PWM*/
    //TIMER_A1->CCR[0] = 50000 - 1;            // PWM Period
    TIMER_A0->CCTL[1] = TIMER_A_CCTLN_OUTMOD_6; // CCR1 reset/set
    TIMER_A0->CCR[1] = 750;                 // CCR1 PWM duty cycle
    /*configure timerA1.0, A1.2 as PWM*/
    TIMER_A0->CCTL[3] = TIMER_A_CCTLN_OUTMOD_6; // CCR2 reset/set
    TIMER_A0->CCR[3] = 250;                 // CCR2 PWM duty cycle

    /* Read the ADC temperature reference calibration value */
    adcRefTempCal_1_2v_30 = TLV->ADC14_REF1P2V_TS30C;
    adcRefTempCal_1_2v_85 = TLV->ADC14_REF1P2V_TS85C;

    /* Initialize the shared reference module */
    /* By default, REFMSTR=1 => REFCTL is used to configure the internal reference */
    while (REF_A->CTL0 & REF_A_CTL0_GENBUSY)
        ;            // If ref generator busy, WAIT
    REF_A->CTL0 |= REF_A_CTL0_VSEL_0 |        // Enable internal 1.2V reference
            REF_A_CTL0_ON;                              // Turn reference on

    REF_A->CTL0 &= ~REF_A_CTL0_TCOFF;               // Enable temperature sensor

    /* Configure ADC - Pulse sample mode; ADC14_CTL0_SC trigger */
    ADC14->CTL0 |= ADC14_CTL0_SHT0_6 |  // ADC ON,temperature sample period>5us
            ADC14_CTL0_ON |
            ADC14_CTL0_SHP;
    ADC14->CTL1 |= ADC14_CTL1_TCMAP;       // Enable internal temperature sensor
    ADC14->MCTL[0] = ADC14_MCTLN_VRSEL_1 |    // ADC input ch A22 => temp sense
            ADC14_MCTLN_INCH_22;
    ADC14->IER0 = 0x0001;                    // ADC_IFG upon conv result-ADCMEM0

    /* Wait for reference generator to settle */
    while (!(REF_A->CTL0 & REF_A_CTL0_GENRDY))
        ;
    ADC14->CTL0 |= ADC14_CTL0_ENC;

    // Configure GPIO
    P7->DIR |= BIT6 | BIT7;                                  // P7.7 set TA1.1~2
    P7->SEL0 |= BIT6 | BIT7;
    P7->SEL1 &= ~(BIT6 | BIT7 );

    /*CS module configuration*/
    CS->KEY = CS_KEY_VAL;                // Unlock CS module for register access
    CS->CTL0 = 0;                                     // Reset tuning parameters
    CS->CTL0 = CS_CTL0_DCORSEL_3; // Set DCO to 12MHz (nominal, center of 8-16MHz range)
    CS->CTL1 = CS_CTL1_SELA_2 |                           // Select ACLK = REFO
            CS_CTL1_SELS_3 |                                 // SMCLK = DCO
            CS_CTL1_SELM_3;                                  // MCLK = DCO
    CS->KEY = 0;                      // Lock CS module from unintended accesses

    // Configure UART pins
    P1->SEL0 |= BIT2 | BIT3;             // set 2-UART pin as secondary function

    // Configure UART
    EUSCI_A0->CTLW0 |= EUSCI_A_CTLW0_SWRST;                // Put eUSCI in reset
    EUSCI_A0->CTLW0 = EUSCI_A_CTLW0_SWRST |            // Remain eUSCI in reset
            EUSCI_B_CTLW0_SSEL__SMCLK; // Configure eUSCI clock source for SMCLK


    // Baud Rate calculation
    // 12000000/(16*9600) = 78.125
    // Fractional portion = 0.125
    // User's Guide Table 21-4: UCBRSx = 0x10
    // UCBRFx = int ( (78.125-78)*16) = 2
    EUSCI_A0->BRW = 78;                                      // 12000000/16/9600
    EUSCI_A0->MCTLW = (2 << EUSCI_A_MCTLW_BRF_OFS) |
    EUSCI_A_MCTLW_OS16;

    EUSCI_A0->CTLW0 &= ~EUSCI_A_CTLW0_SWRST;                 // Initialize eUSCI
    EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;        // Clear eUSCI RX interrupt flag
    EUSCI_A0->IE |= EUSCI_A_IE_RXIE;              // Enable USCI_A0 RX interrupt

    // Enable global interrupt
    __enable_irq();

    // Enable eUSCIA0 interrupt/ADC interrupt in NVIC module
    NVIC->ISER[0] |= (1 << ((EUSCIA0_IRQn) & 31)) | (1 << ((ADC14_IRQn) & 31));

    //Sampling and conversion start
    ADC14->CTL0 |= ADC14_CTL0_SC;
    int k;
    while (1)
    {
        if (number >= 1000)
        {
            number = 1000;
        }
        else if (number <= 0)
        {
            number = 0;
        }


        ADC14->CTL0 |= ADC14_CTL0_SC;       // Sampling and conversion start


        for (k = 0; k < 10000; k++)
            ;             //delay

        /*Calculate temperature in Celsius*/
        IntDegC = (((float) temp - adcRefTempCal_1_2v_30) * (85 - 30))
                / (adcRefTempCal_1_2v_85 - adcRefTempCal_1_2v_30) + 30.0f;


        curr_temp = IntDegC; //saving the current temperature

        delayMs(450);       // wait for 450 ms to measure temperature difference

        temp_diff = (curr_temp - prev_temp); // taking temperature difference
        prev_temp = curr_temp;

        /*Condition to check Duty Cycle*/

        if (temp_diff > 0.5)
        {
            number = number + 100;
            pwm();
        }
        else if (temp_diff < -0.5)
        {
            number = number - 100;
            pwm();
        }

        /* Temperature in Fahrenheit */
        IntDegF = ((9 * IntDegC) / 5) + 32;

        /* When the switch is pressed*/
        if (switch_flag)
        {
            if (switch_right) // if the pressed switch is right
            {
                P1DIR = 0x01;
                P1OUT ^= 0x01;
                number = number + 100; // increment the duty cycle
                switch_flag = 0;
                pwm();
            }
            else if (switch_left) // if the pressed switch is left
            {
                P2DIR |= 0x01;
                P2OUT ^= 0x01;
                number = number - 100; // decrement the duty cycle
                switch_flag = 0;
                pwm();
            }
        }

    }
}
