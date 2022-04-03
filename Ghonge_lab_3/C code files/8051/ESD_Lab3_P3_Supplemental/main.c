/*@author : Swapnil Ghonge
 *@brief: this file contains function for 8051uC which for Programmable Counter Array
 *        RUN PWM mode
 *        PWM mode
 *        Set FCLK PERIPH at the minimum frequency supported by the CKRL register
 *        Set FCLK PERIPH at the maximum frequency supported by the CKRL register
 *        Enter Idle mode (set IDLE bit in PCON register)
 *        Enter Power Down mode (set PDE bit in PCON register)
 *
 *
 */


#include <mcs51/8051.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>



int input_char;
int watchdog_flag;

_sdcc_external_startup()
{
    AUXR |= 0x0C;
    return 0;
}
/* -------------------------------------------------- */
//          putchar function
/* -------------------------------------------------- */
int putchar (int c)
{
    // Note: Compare the asm generated for the next three lines
    //       They all accomplish the same thing, but is the asm the same?
    while (!TI);
    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag

    return c;
}
/* -------------------------------------------------- */
//          getchar function
/* -------------------------------------------------- */
// getchar gets a char from RX. Blocking. Returns char.
int getchar (void)
{
    // Note: Compare the asm generated for the next three lines
    //       They all accomplish the same thing, but is the asm the same?
    while (!RI);
    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}
unsigned int getinput()
{
    unsigned int a ;
    unsigned int number;

    again:  printf_tiny("Enter a value btw 1 and 6 \r\n");

        a = getchar(); // get first digit
        int e=a-'0';
        printf_tiny("a= %d\r\n", e);
        // putchar(a);

    // converst ASCII to Integer
    number= e;
    printf_tiny("number = %d\n\r", number);
    if((number>=1) &&(number<=8)) // value of digit >48 and less then 4800
    {
      printf_tiny("valid input\r\n");
      printf_tiny("num= %d", number);
      return number;
    }
    else
    {
        printf_tiny("not a valid input\r\n");
        goto again;
    }
//    return 0;
}
/***********************************
FUnction that initializes hardware
************************************/
void hardware_init()
{
    CKCON0 = 0x1F;
    IEN0 |= 0x80;
    TMOD |= 0x20;
    SCON |= 0x50;
    TCON |= 0x40;
    TH1 = 0xFD;
    TI = 1;
}
/***********************************
FUnction that configures PWM
************************************/

void run_pwm()
{
    printf_tiny("Running PWM\r\n");
    CMOD = 0x02;
    CL = 0x00;
    CH = 0x00;
    CCAP0L = 0xbf;
    CCAP0H = 0xbf;
    CCON = 0x40;
    CCAPM0 = 0x42;

}
/***********************************
FUnction that stop which stops the PWM
************************************/
void stop_pwm(void)
{
    printf_tiny("Stopping the PWM\r\n");
    CCAPM0 &= 0x00;
}
/***********************************
FUnction that configures minimum Frequency in CLock
************************************/
void min_freq()
{
    printf_tiny("going to minimum frequency\r\n");
    CKRL = 0x00;
}

/***********************************
FUnction that configures Maximum Frequency in CLock
************************************/
void max_freq()
{
    printf_tiny("going to maximum frequency\r\n");
    CKRL = 0xFF;

}
/***********************************
FUnction that configures Idle mode in PCON regsiter
************************************/
void idle_mode()
{

    printf_tiny("going to idle mode\r\n");
    PCON = 0x01;

}
/***********************************
FUnction that configures power down mode in PCON regsiter
************************************/

void power_down_mode()
{

   printf_tiny("going to power down mode\r\n");
    PCON |= 0x02;
}
void high_speed_toggle(void)
{
    printf_tiny("high speed\r\n");
    CMOD = 0x02;
    CCAP0L = 0x00;
    CCAP0H = 0x00;
    CCON = 0x40;
    CCAPM0 = 0x4C;
}
void watchdog_switch()
{
    if(watchdog_flag==0)
    {
        printf_tiny("watchdog_on");
        watchdog_flag=1;
    }
    else
    {
        printf_tiny("watchdog_off");
        watchdog_flag=0;
    }
}
void watchdog(void)
{

    if(watchdog_flag==1)
    {
        CCAP4L = 0x00;
        CCAP4H = 0xFF;
        CMOD |= 0x40;
        CCON = 0x40;
        CCAPM4 |= 0x4C;
    }
    else
    {
        CMOD = 0x00;
    }
}
void main(void)
{

    // Insert code
hardware_init();
    while(1)
    {

        printf_tiny("*************USER MENU for LAB 3 Part 3*******************\r\n");
        printf_tiny("1 for run PWM mode\r\n");
        printf_tiny("2 for stop PWM mode\r\n");
        printf_tiny("3 forSet FCLK PERIPH at the minimum frequency supported by the CKRL register  \r\n");
        printf_tiny("4 for Set FCLK PERIPH at the maximum frequency supported by the CKRL register\r\n");
        printf_tiny("5 for Enter Idle mode\r\n");
        printf_tiny("6 for Enter Power Down mode\r\n");
        printf_tiny("7 for Enter for High Speed Toggle\r\n");
        printf_tiny("8 for Enter for watchdog timer\r\n");


        input_char = getchar();
        putchar(input_char);

        if (input_char == '1')
        {
          run_pwm();
        }
        else if (input_char == '2')
        {
          stop_pwm();
        }
        else if (input_char == '3')
        {
          min_freq();
        }
        else if (input_char == '4')
        {
            max_freq();
        }
        else if (input_char == '5')
        {
            idle_mode();
        }
        else if (input_char == '6')
        {
            power_down_mode();
        }
         else if (input_char == '7')
        {
            high_speed_toggle();
        }
        else if (input_char == '8')
        {
             watchdog_switch();
            watchdog();
        }

    }

}
