/*
 * @file :LED_TOGGLE.c
 *
 * @date: 02/17/2022
 * @author: Swapnil Ghonge
 *
 *
 * @brief: toggle the on-board red LED using a timer interrupt on MSP432
 */
#include "msp.h"

/*
 * @brief: Initializing the GPIO on the Board of LED
 * return: NULL
 */
void initialize()
{
  //Watchdog timer initialize
    WDT_A -> CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD ;

    // Configure GPIO
    P1->DIR |= BIT0;
    P1->OUT |= BIT0;

    TIMER_A0->CCTL[0] = TIMER_A_CCTLN_CCIE; // TACCR0 interrupt enabled
}

//
int count_interrupt = 0;

int main(void)
{

    //Initializing Interrupts and other outputs
    initialize();


    TIMER_A0->CCR[0] = 0xFFFF; //Comparing FFFF with timer up count
    TIMER_A0->CTL = TIMER_A_CTL_SSEL__SMCLK |  TIMER_A_CTL_MC__CONTINUOUS;  // SMCLK, continuous mode


    // Enabling global interrupt
    __enable_irq();

    NVIC->ISER[0] = 1 << ((TA0_0_IRQn) & 31);

    while (1)
    {
        __no_operation(); // No operation
    }
}

/*Interrupt routine
 *This function is called when the timer interrupt occurs.
 *It toggles LED and keeps the counter zero
 *
 *Return : None
 *Parameters : None
 *
 *
 * */
void TA0_0_IRQHandler(void)
{
    count_interrupt++; //Incrementing count till it reaches 300ms
    TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG;
    TIMER_A0->CCR[0] += 0xFFFF;              // Add 0xFFFF offset

    if(count_interrupt == 15)
    {
        P1->OUT ^= BIT0; //Toggling the LED
        count_interrupt = 0; //setting the counter to 0
    }
}
