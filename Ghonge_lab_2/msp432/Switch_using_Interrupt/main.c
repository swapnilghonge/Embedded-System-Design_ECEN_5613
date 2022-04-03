/*
 *@author: Swapnil Ghonge
 *@filename: main.c
 *@brief: This function contains LED initializing function to trigger hardware related to it
 *@reference: msp432p401x_p1_03.c example folder
 */



#include "msp.h"

void LED_init()
{
    //Setting Port 2 Pin 1_blue
    P2->DIR |= BIT1;
    P2->OUT |= BIT1;
    //Setting Port 2 Pin 2 green

    P2->DIR |= BIT2;
    P2->OUT |= BIT2;
}

void switch_config()
{
    // Configuring P1.0 as output and P1.1 (switch) as input with pull-up resistor.
    //We are using ~of BIT1 for setting as input
    P1->DIR = ~(uint8_t) BIT1;
    P1->OUT = BIT1;
    P1->REN = BIT1;

    //P1.4 (switch) is configured as input with pullup resistor
    P1->DIR = ~(uint8_t) BIT4;
    P1->OUT = BIT4;
    P1->REN = BIT4;
}


void ISR()
{

    P1->SEL0 = 0;
    P1->SEL1 = 0;

    //Enabling interrupt in falling edge
    P1->IES = BIT1;
    P1->IES = BIT4;

    //Clearing Port 1 interrupt flags
    P1->IFG = 0;


    //Enabling interrupts in P1.1 and P1.4
    P1->IE = BIT1;
    P1->IE = BIT4;

    // Enable Port 1 interrupt on the NVIC
    NVIC->ISER[1] = 1 << ((PORT1_IRQn) & 31);
}

void initial()
{

        // Hold the watchdog
        WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;


        //calling the Initializing LED function
        LED_init();

        //calling the Ports and pins of switch
        switch_config();

        //Configuring interrupts
        ISR();


        // setting ports to zero
        P2->DIR |= 0xFF; P2->OUT = 0;
        P3->DIR |= 0xFF; P3->OUT = 0;
        P4->DIR |= 0xFF; P4->OUT = 0;
        P5->DIR |= 0xFF; P5->OUT = 0;
        P6->DIR |= 0xFF; P6->OUT = 0;
        P7->DIR |= 0xFF; P7->OUT = 0;
        P8->DIR |= 0xFF; P8->OUT = 0;
        P9->DIR |= 0xFF; P9->OUT = 0;
        P10->DIR |= 0xFF; P10->OUT = 0;

        P2->OUT |= BIT1;
        P2->OUT &= ~BIT2;

        // Configure Port J
        PJ->DIR |= (BIT0| BIT1 | BIT2 | BIT3);
        PJ->OUT &= ~(BIT0 | BIT1 | BIT2 | BIT3);

}

    volatile int count = 0, flag =0;

    int main(void)
    {

        //This function does all the initializations
        initial();


        // Enable PCM run mode, which allows to device to enter LPM3 without waiting for peripherals
        PCM->CTL1 = PCM_CTL0_KEY_VAL | PCM_CTL1_FORCE_LPM_ENTRY;

        //Timer configuration
        TIMER_A0->CCTL[0] = TIMER_A_CCTLN_CCIE; // TACCR0 interrupt enabled


        TIMER_A0->CCR[0] = 0xFFFF;
        TIMER_A0->CTL = TIMER_A_CTL_SSEL__SMCLK | // SMCLK, continuous mode
                TIMER_A_CTL_MC__CONTINUOUS | TIMER_A_CTL_ID_2;

        NVIC->ISER[0] = 1 << ((TA0_0_IRQn) & 31);


        // Enable global interrupt
        __enable_irq();

        // Setting the sleep deep bit
        SCB->SCR |= (SCB_SCR_SLEEPDEEP_Msk);

        // Do not wake up on exit from ISR
        SCB->SCR |= SCB_SCR_SLEEPONEXIT_Msk;

        // Ensures SLEEPONEXIT takes effect immediately
        __DSB();

        // Go to LPM4
        __sleep();

        return 0;
    }



    /* Port1 ISR */
    void PORT1_IRQHandler(void)
    {
        volatile uint32_t i;
        flag ^= 1;

        // Delay for switch debounce
        for(i = 0; i < 10000; i++)
        {
            P1->IFG &= ~BIT1;
            P1->IFG &= ~BIT4;
        }
    }

    /*Timer A ISR Handler*/
    void TA0_0_IRQHandler(void) {

        TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG;

        if(flag)
        {
            ; //No operation
        }
        else if(count == 14)  //Almost 300ms delay
            {
                P2->OUT ^= BIT1;
                P2->OUT ^= BIT2;
                count = 0;
            }
        else
            count++;

        TIMER_A0->CCR[0] += 0xFFFF; //Reloading the counter

    }


