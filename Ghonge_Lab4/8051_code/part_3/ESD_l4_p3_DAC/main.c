/*  Author: Swapnil Ghonge
    Course: ECEN 5613 Embedded System Design
    Description:Implementation of I2C protocol.
    Filename: LCD.c
    Controller: AT89C51RC2  EEPROM: Atmel AT24C16C
    Oscillator: 11.0592 MHz
 * Consists of various options to control DAC operation
 *
 */
#include <at89c51ed2.h>
#include <stdio.h>
#include <stdint.h>
#define SCK P1_6
#define SDA P1_7
#define CS P1_2
#define LDAC P1_3

_sdcc_external_startup()
{
    AUXR|=0x0C; //for 1kB memory
    return 0;
}
/****************************
* Funtion that generates sepcific msec of delay
***************************/
void delay(int ms){
    for(int i = 0;i < ms;i++){
        for(int j = 0;j < 100;j++){
        }
    }
}

/*
*SCK - Clock synchronization signal sent to slave to synchonize the data
*when Chip select (CS) = 0, SLAVE IS SELECTED
*to stop communication master stops clock signal and deselects the slave
*
*/
void spi_send(uint8_t msg){
    SPDAT = msg;
}
void main(){
    SPCON = 0xF2;
  uint16_t msg= 0;
        LDAC=1; // latach = 1
        CS=0; // select slave
        msg=0;
        msg = msg | (0x7<<12) ; // configuring the register to the D0- D7 of the SPDAT register
        msg = msg | (100<<4) ; // configuring the LSB of the register

        spi_send(msg>>8); // shifting the data by 8 so that new set of 8 bits can come.

        delay(1);
        spi_send(msg); // send the data againg
        printf("message=%x\n\r",msg); // print that data
        CS=1; // deselect slave
        LDAC=0; // latach the DAc 
        LDAC=1; // unlatch the DAC

}
