/*  Author: Swapnil Ghonge
    Course: ECEN 5613 Embedded System Design
    Description:Implementation of I2C protocol.
    Filename: I2C_protocol.c
    Controller: AT89C51RC2  EEPROM: Atmel AT24C16C
    Oscillator: 11.0592 MHz
    References: https://saeedsolutions.blogspot.com/2012/11/8051-i2c-bit-banging-code-proteus.html
    https://web.archive.org/web/20130713123523/http://mailto/
*/
/*************************************
*Importing Libraries
*************************************/
#include <stdio.h>
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

/*************************************
*Setting up Macros
*************************************/

#define SDA P1_7                     //Define SDA as Pin 1.7
#define SCK P1_6                     //Define SCL as Pin 1.6
#define CRYSTAL_FREQUENCY 48
#define DELAY ((CRYSTAL_FREQUENCY /60) * 500)

/*************************************
*Delay Function
Brief: creates a delay of msec using polling operation
param : none
output: none
*************************************/

void delay(void){
    int j = 0;
    while(j++ < DELAY);
}
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
    while (!TI);
    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag

    return c;
}

// getchar gets a char from RX. Blocking. Returns char.
int getchar (void)
{
    while (!RI);
    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}
/* -------------------------------------------------- */
//          Get input function
//  This function takes input from user
/* -------------------------------------------------- */
uint8_t getinput()
{
    int number;
    uint8_t e,f;
    int a = getchar();
    if(a>='A'&& a<='F')
        e=a-'7';
    else
            e = a - '0';
    putchar(a);
    int b = getchar();
     if(b>='A'&& b<='F')
        f=b-'7';
    else
            f = b - '0';
    putchar(b);


    /*if(e >= 'A' && e <= 'F'){
        e = (e-'A')+10;
    }
    if(f >= 'A' && f <= 'F'){
        f = (f-'A')+10;
    }*/

    number = (e*16) + f;
    if(number <= 0xFF)
        return number;
    else
        getinput();
}
/* -------------------------------------------------- */
//          I2C Start function
//  This function initializes the I2C function in SDA and SCL
/* -------------------------------------------------- */
void I2CStart(void){
    SDA = 1;
    SCK = 1;
    delay();
    SDA = 0;
    delay();
    SCK = 0;
    delay();
}
//**********************************************************************
//* Function Name: void stop (void)
//**********************************************************************
//* Function Description: send stop condition
//**********************************************************************
//* Input parameters: NONE
//**********************************************************************
//* Output parameters: NONE
//**********************************************************************
/// Notes: NONE
//**********************************************************************
void stop (void)
{
	SDA = 0; // stop condition, data = 0
    delay();
	SCK = 1; // clock = 1
    delay();
	SDA = 1; // data = 1
}
//**********************************************************************
//* Function Name: char in (void)
//**********************************************************************
//* Function Description: receives a byte from memory
//**********************************************************************
//* Input parameters: NONE
//**********************************************************************
//* Output parameters:
//* - char with the byte received from memory
//**********************************************************************
/// Notes: NONE
//**********************************************************************
char in (void)
{
	char i; // index
	char aux = 0; // auxiliary storage
	SDA = 1; // insure port pin = 1 for input
	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		SCK = 0; // clock = 0
        delay();
		SCK = 1; // clock = 1
		aux = aux << 1; // load bit position
		if (SDA) // check SDA data from port pin
			aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
		else
			aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
	}
	SCK = 0; // clock = 0
	return (aux); // return data received
}
//**********************************************************************
//* Function Name: void outs (char datum)
//**********************************************************************
//* Function Description: sends to memory the input parameter with a
//*                       start condition
//**********************************************************************
//* Input parameters:
//* - char datum: data byte to send to the memory
//**********************************************************************
//* Output parameters: NONE
//**********************************************************************
/// Notes: NONE
//**********************************************************************
void outs (char datum)
{
	char i; // index
	char aux; // auxiliary storage
	SDA = 1; // set port pin SDA to insure data is HI
	SCK = 1; // set port pin SCK to insure clock is HI
    delay();
	SDA = 0; // start condition, data = 0
    delay();
	SCK = 0; // clock = 0
	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		aux = datum & 0x80; // check MSB bit
		if (aux == 0) // MSB = 0
			SDA = 0; // then SDA = 0
		else
			SDA = 1; // else MSB =1, then SDA = 1
		SCK = 1; // clock = 1
        delay();
		SCK = 0; // clock = 0
		datum = datum << 1; // rotate for next bit
	}
	SDA = 1; // set port pin for ack
    delay();
	SCK = 1; // clock ack
    delay();
	SCK = 0; // clock = 0
}
//**********************************************************************
//* Function Name: void out (char datum)
//**********************************************************************
//* Function Description: sends to memory the input parameter without a
//*                       start condition
//**********************************************************************
//* Input parameters:
//* - char datum: data byte to send to the memory
//**********************************************************************
//* Output parameters: NONE
//**********************************************************************
/// Notes: NONE
//**********************************************************************
void out (char datum)
{
	char i; // index
	char aux; // auxiliary storage
	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		aux = datum & 0x80; // check MSB bit
		if (aux == 0) // MSB = 0
			SDA = 0; // then SDA = 0
		else
			SDA = 1; // else MSB = 1, the SDA = 1
		SCK = 1; // clock = 1
        delay();
		SCK = 0; // clock = 0
		datum = datum << 1; // rotate for next bit
	}
	SDA = 1; // set port pin for ack
    delay();
	SCK = 1; // clock ack
    delay();
	SCK = 0; // clock = 0
}
//**********************************************************************
//* Function Name: void weeprom (char page, char address, char datum)
//**********************************************************************
//* Function Description: write routine for I2C EEPROM
//**********************************************************************
//* Input parameters:
//* - char page: number of 256 bytes block to use
//* - char address: position inside the 256 bytes block
//* - char datum: 1 byte data to write
//**********************************************************************
//* Output parameters: NONE
//**********************************************************************
/// Notes: NONE
//**********************************************************************
void weeprom (char page, char address, char datum)
{
	char WRCMD; // auxiliary storage to build the write command
	page = page << 1; // move A0, A1 & A2 to their positions
	page = page & 0xFE; // clear r/w bit
	WRCMD = page | 0xA0; // build the write command
	outs (WRCMD); // send the write command with start condition
	out (address); // send address
	out (datum); // send data
	stop (); // send stop condition
}
//**********************************************************************
//* Function Name: char read (char readcmd)
//**********************************************************************
//* Function Description: reads 1 byte from current memory position
//**********************************************************************
//* Input parameters:
//* - char readcmd: read command byte with A0, A1 & A2 embedded
//**********************************************************************
//* Output parameters:
//* - char with current address data
//**********************************************************************
/// Notes: NONE
//**********************************************************************
char read (char readcmd)
{
	char RDCMD; // auxiliary storage to build the read command
	char aux; // auxiliary storage
	RDCMD = readcmd | 0x01; // set r/w bit
	outs (RDCMD); // send read command with start condition
	aux = in(); // read current position
	stop (); // send stop condition
	return (aux); // return current position data
}
//**********************************************************************
//* Function Name: char reeprom (char page, char address)
//**********************************************************************
//* Function Description: read routine for I2C EEPROM
//**********************************************************************
//* Input parameters:
//* - char page: number of 256 bytes block to use
//* - char address: position inside the 256 bytes block
//**********************************************************************
//* Output parameters:
//* - char with the data from memory
//**********************************************************************
/// Notes: NONE
//**********************************************************************
char reeprom (char page, char address)
{
	char aux; // auxiliary storage
	char WRCMD; // aux. storage for the write command (to send the add.)
	aux = page; // preparing the write command
	aux = aux << 1; // move A0, A1 & A2 to their positions
	aux = aux & 0xFE; // clear r/w bit
	WRCMD = aux | 0xA0; // build the write command
	outs (WRCMD); // send the write command with start condition
	out (address); // send address
	aux = read (WRCMD); // send read command and receive data
	return (aux); // return solicited data
}
/* -------------------------------------------------- */
//          eereset function
//  This function resets the system
/* -------------------------------------------------- */
void eereset(void){
    char datum = 0x1FF;
	char i; // index
	char aux; // auxiliary storage
	SDA = 1; // set port pin SDA to insure data is HI
	SCK = 1; // set port pin SCK to insure clock is HI
	delay();
	SDA = 0; // start condition, data = 0
	delay();
	SCK = 0; // clock = 0
	for (i = 0; i <= 8; i++) // bit shifting cycle
	{
		aux = datum & 0x100; // check MSB bit
		if (aux == 0) // MSB = 0
			SDA = 0; // then SDA = 0
		else
			SDA = 1; // else MSB =1, then SDA = 1
		SCK = 1; // clock = 1
		delay();
		SCK = 0; // clock = 0
		datum = datum << 1; // rotate for next bit
	}
	SDA = 1; // set port pin for ack
	delay();
	SCK = 1; // clock ack
	delay();
	SCK = 0; // clock = 0
}
int main()
{
    while(1){
        printf_tiny("\r\n ******************I2C Function User Menu**************");
        printf_tiny("\r\n Press W for the Data at address to write");
        printf_tiny("\r\n Press R to read the data at memory location ");
        printf_tiny("\r\n Press H to print Hex Dump");
        printf_tiny("\r\n Press S for System reset");
        printf_tiny("\r\n **************Please select the option from above********");
        char input = getchar();


        switch(input){
            case 'T': I2CStart();
                      printf_tiny("\r\n I2C mode entered\n");
                      break;

            case 'W': printf_tiny("\r\nEnter the character->\n");
                      uint8_t data = getinput();
                      printf_tiny("\r\n%x",data);
                      printf_tiny("\r\nEnter the Address in Hex between 00 and ff->\n");
                      uint8_t address = getinput();
                      printf_tiny("\r\n%x",address);
                      weeprom(0x00,address,data);
                      break;

            case 'R': printf_tiny("\r\nEnter the address between 00 and ff to be Read->\n");
                      uint8_t readcmd = getinput();
                      printf_tiny("\r\n Data on that address is -> %x",reeprom(0x00,readcmd));
                      break;

            case 'H': printf_tiny("\r\nHexdump Printing................");
                      for(int i = 0;i < 256;i++){
                        if((i % 16) == 0){
                            if(i == 0){
                                printf_tiny("\r\n");
                                printf_tiny("%x: ",i);
                            }
                            else{
                                printf_tiny("\r\n");
                                printf("%x:",i);
                            }
                        }
                        printf_tiny("%x ",reeprom(0x00,i));
                       }
                       break;

            case 'S':  printf_tiny("\r\nSytem Resetting........");
                       eereset();
                       break;

            case 'P':  stop();
                       break;
        }
        putchar(input);
    }
    return 0;
}
