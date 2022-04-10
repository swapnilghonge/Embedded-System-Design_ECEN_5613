/*  Author: Swapnil Ghonge
    Course: ECEN 5613 Embedded System Design
    Description:Implementation of I2C protocol.
    Filename: LCD.c
    Controller: AT89C51RC2  EEPROM: Atmel AT24C16C
    Oscillator: 11.0592 MHz
    References: https://saeedsolutions.blogspot.com/2012/11/8051-i2c-bit-banging-code-proteus.html
    https://web.archive.org/web/20130713123523/http://mailto/
    took help from Abhijith to debug my code.
 * Consists of various options to control LCD display.
 *
 * A timer is set at the bottom right corner which runs the moment we initialize the LCD
 * Based on user input, we can control LCD irrespective of running timer
 *
 * @Reference: https://www.pjrc.com/tech/8051/board5/lcd_example.html
 */



/*
 * Header files
 */
#include <at89c51ed2.h>
#include <stdio.h>
#include <stdint.h>



/*
 * Preprocessor directives
 */
#define COUNT_ONE_MILLISECOND 82
#define LCD_CMD 0x8000
#define RS P1_4
#define RW P1_5
#define ONE_TENTH_SECOND 30
#define CGRAM_START_ADDRESS 0x40



/*
 * Global variables
 */
volatile uint8_t __at(0x8000) lcd_ptr;
volatile int counter=0;
volatile char one_tenth_second='0';
volatile char second_one='0';
volatile char second_two='0';
volatile char minute_one='0';
volatile char minute_two='0';



/*
 * Function prototypes
 */
int putchar(int c);
int getchar(void);
void delay(int milliseconds);
void lcdinit(void);
void lcdbusywait(void);
void lcdgotoaddr(unsigned char addr);
void lcdgotoxy(unsigned char row, unsigned char column);
void lcdputch(char cc);
void lcdputstr(char *ss);
void lcdclear(void);
char valid_input(void);
void timer0_ISR()__interrupt(1);
uint8_t save_cursor_address;



/*
 * startup function
 */
_sdcc_external_startup()
{
    AUXR|=0x0C; //for 1kB memory
    return 0;
}



 /*
 * Function definitions
 */

/*
 * UART Print function
 * Parameters:
 *          character to be echoed on serial terminal
 * Return:
 *          returns the same character
 */
int putchar (int c)
{
    while (!TI);

    SBUF = c;
    TI = 0;

    return c;
}



/*
 * UART Input function
 * Parameters:
 *          character to be accepted from user via serial terminal
 * Return:
 *          register with the user input character
 */
int getchar (void)
{
    while (!RI);

    RI = 0;
    return SBUF;
}
/*
 * Delay function
 * Parameters:
 *          input time in milliseconds
 * Return:
 *          none
 */
void delay(int milliseconds){
    for(int j=0;j<milliseconds;j++){
        for(int i=0;i<COUNT_ONE_MILLISECOND;i++);
    }
}
/*
 * get_cursor_address function
 * Parameters:
 *          none
 * Return:
 *          returns the current cursor address of LCD
 */
uint8_t get_cursor_address(){
    // Read busy flag (DB7) and address counter (DB0 to DB6)
    RS=0;
    RW=1;
    return lcd_ptr&(~0x80);
}
/*
 * lcdinit function
 * Parameters:
 *          none
 * Return:
 *          initializes the LCD
 */
void lcdinit(void){
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Wait for more than 15ms
    delay(160);
    // Unlock Command
    lcd_ptr=0x30;
    // Wait for more than 4.1ms
    delay(170);
    // Unlock Command
    lcd_ptr=0x30;
    // Wait for more than 100us
    delay(150);
    // Unlock Command
    lcd_ptr=0x30;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Function Set Command: Note N=1, F=0 for DMC20480
    lcd_ptr=0x38;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Turn the display on and cursor on  and blinking on
    lcd_ptr=0x0F;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Clear screen and send the cursor home.
    lcd_ptr=0x01;
    // Poll for BF=0
    lcdbusywait();
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Entry Mode Set command
    lcd_ptr=0x06;
    // Poll for BF=0
    lcdbusywait();

    one_tenth_second='0';
    second_one='0';
    second_two='0';
    minute_one='0';
    minute_two='0';
}
/*
 * lcdbusywait function
 * Parameters:
 *          none
 * Return:
 *          waits till busy flag is not set
 */
void lcdbusywait(void)
{
    // Read busy flag (DB7) and address counter (DB0 to DB6)
    RS=0;
    RW=1;
    // Poll for BF=0
    while(lcd_ptr&0x80);
}
/*
 * lcdgotoaddr function
 * Parameters:
 *          input address to where cursor should go to
 * Return:
 *          none
 */
void lcdgotoaddr(unsigned char addr){
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Set DDRAM Address
    addr=addr|0x80;
    // send command
    lcd_ptr=addr;
    // Poll for BF=0
    lcdbusywait();
}
/*
 * lcdgotoxy function
 * Parameters:
 *          coordinates to where cursor should go to
 * Return:
 *          none
 */
void lcdgotoxy(unsigned char row, unsigned char column){
    unsigned char address;

    if(row=='0')
        address=(0<<4);
    else if(row=='1')
        address=(4<<4);
    else if(row=='2')
        address=(1<<4);
    else
        address=(5<<4);

    if(row>'2' && column>='A' && column<='F')
        address|=('8'-'0');
    else if(column>='A' && column<='F')
        address|=(column-'7');
    else if(column>='0' && column<='9')
        address|=(column-'0');
    else
        address|=('8'-48);

    lcdgotoaddr(address);
    // Poll for BF=0
    lcdbusywait();
}
/*
 * lcdputch function
 * Parameters:
 *          character that should be print on LC
 * Return:
 *          none
 */
void lcdputch(char cc){
    if(get_cursor_address()==0x0F){
        // DR write as an internal operation (DR to DDRAM or CGRAM)
        RS=1;
        RW=0;
        //delay(50);
        // send command
        lcd_ptr=cc;
        // Poll for BF=0
        lcdbusywait();

        lcdgotoxy('1','0');
    }
    else if(get_cursor_address()==0x4F){
        // DR write as an internal operation (DR to DDRAM or CGRAM)
        RS=1;
        RW=0;
        //delay(50);
        // send command
        lcd_ptr=cc;
        // Poll for BF=0
        lcdbusywait();

        lcdgotoxy('2','0');
    }
    else if(get_cursor_address()==0x1F){
        // DR write as an internal operation (DR to DDRAM or CGRAM)
        RS=1;
        RW=0;
        //delay(50);
        // send command
        lcd_ptr=cc;
        // Poll for BF=0
        lcdbusywait();

        lcdgotoxy('3','0');
    }
    else if(get_cursor_address()==0x58){
        // DR write as an internal operation (DR to DDRAM or CGRAM)
        RS=1;
        RW=0;
        //delay(50);
        // send command
        lcd_ptr=cc;
        // Poll for BF=0
        lcdbusywait();

        lcdgotoxy('0','0');
    }
    else{
        // DR write as an internal operation (DR to DDRAM or CGRAM)
        RS=1;
        RW=0;
        //delay(50);
        // send command
        lcd_ptr=cc;
        // Poll for BF=0
        lcdbusywait();
    }
}
/*
 * lcdputstr function
 * Parameters:
 *          string that should be print on LC
 * Return:
 *          none
 */
void lcdputstr(char *ss){
    int i=0;
    while(ss[i]!='\0'){
        lcdputch(ss[i]);
        i++;
    }
}
/*
 * lcdclear function
 *          Clears the LCD screen
 * Parameters:
 *          none
 * Return:
 *          none
 */
void lcdclear(void){
    // IR write as an internal operation (display clear, etc.)
    RS=0;
    RW=0;
    // Clears entire display and sets DDRAM Address 0 in address counter.
    lcd_ptr=0x01;
    // Poll for BF=0
    lcdbusywait();
    lcdgotoaddr(0x00);
    lcdputstr("       ");
    lcdgotoaddr(0x00);
}



/*
 * Inputs data function
 * Parameters:
 *          None
 * Return:
 *          Data in hex format
 */
unsigned char valid_input(void){
    unsigned char place_ten=putchar(getchar());
    unsigned char place_one=putchar(getchar());
    unsigned char hex_val;
    if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='0'&&place_one<='9')){
        hex_val=(((place_ten-'0')*16)+(place_one-'0'));
    }
    else if((place_ten=='0'||place_ten=='1'||place_ten=='4'||place_ten=='5')&&(place_one>='A'&&place_one<='F')){
        hex_val=(((place_ten-'0')*16)+(place_one-'7'));
    }
    else{
        printf_tiny("\n\rEnter valid input between (00 to 1F) or (40 to 58): \n\r");
        valid_input();
    }
    return hex_val;
}



/*
 * Interrupt handler for timer0
 *          Takes care of the LCD timer
 * Parameters:
 *          None
 * Return:
 *          none
 */
void timer0_ISR()__interrupt(1)
{
    //printf("enTERED isr");
    save_cursor_address=get_cursor_address();
    if(counter==ONE_TENTH_SECOND){
        P1_1=P1_1^1;
        counter=0;
        one_tenth_second++;
    }
    counter++;
    TF0=0;
    TL0=0x00;
    TH0=0xF0;
    lcdgotoaddr(0x59);
    lcdputch(minute_two);
    lcdputch(minute_one);
    lcdputch(':');
    lcdputch(second_two);
    lcdputch(second_one);
    lcdputch('.');
    lcdputch(one_tenth_second);
    //HANDLE TIMER DISPLAY
    if(one_tenth_second==':'){
        one_tenth_second='0';
        second_one++;
        if(second_one==':'){
            second_one='0';
            second_two++;
            if(second_two=='6'){
                second_two='0';
                minute_one++;
                if(minute_one==':'){
                    minute_one='0';
                    minute_two++;
                    if(minute_two=='6'){
                        minute_two='0';
                    }
                }
            }
        }
    }
    lcdgotoaddr(save_cursor_address);
}



/*
 * Initialises timer0
 *          Takes care of the LCD timer
 * Parameters:
 *          None
 * Return:
 *          none
 */
void init_timer0(void){
    TCON=TCON&(~0x30);
    TMOD=0x01;
    TL0=0x00;
    TH0=0xF0;
    IE=0x82;
    TCON|=0x10;

}


void init_uart(){
    SCON=0x52;
    TMOD=0x20;
    TH1=0xFD;
    TR1=1;
}


uint8_t send_addr_read_data(uint8_t ddram_flag, uint8_t address){
    //set address
    if(ddram_flag==1){
        lcdgotoaddr(address);
    }
    else{
        RS=0;
        RW=0;
        lcd_ptr=address;
        lcdbusywait();
    }
    RS=1;
    RW=1;
    return lcd_ptr;
}

void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]){
    unsigned char cchar_num=(0x40|((ccode-'0')<<3));
    printf("\n\rcustom character number %x",cchar_num);
    for(int m=0;m<8;m++){
        RS=0;
        RW=0;
        lcd_ptr=cchar_num+m;
        printf("\n\rlcd_ptr= %x",cchar_num+m);
        lcdbusywait();
        RS=1;
        RW=0;
        lcd_ptr=row_vals[m];
        lcdbusywait();
    }
    lcdgotoxy('0','4');
    lcdputch(0);
}

void main(void)
{
    init_uart();
    //variables
    char input,lcd_input,ch,*string;
    int i,j;
    uint8_t k; // iteration variable
    //initialise LCD
    lcdinit();
    init_timer0();
    while(1){



                printf_tiny("\n\n\rPress # for to see the menu");
                printf_tiny("\n\n\rEnter a choice:    ");

            //accept new character at every iteration
            input=getchar();
            printf_tiny("%c\n\r",input);
        switch(input){
            case '#':
                //menu
                    __critical
                    {
                    printf_tiny("*************ESD LAB 4 Part 2 Menu***************");
                    //printf_tiny("\n\rEnter 'J' to go to desired address(00 to 1F, 40 to 58)\n\r");
                    //printf_tiny("\n\rEnter 'X' to go to desired location(00 to 38)\n\r");
                    printf_tiny("\n\rPress C to print desired character on LCD\n\r");
                    printf_tiny("\n\rPress S to print desired string on LCD\n\r");
                    printf_tiny("\n\rPress O to clear LCD\n\r");
                    printf_tiny("\n\rPress E to stop the elapsed time clock\n\r");
                    printf_tiny("\n\rPress R to restart the clock\n\r");
                    printf_tiny("\n\rPress B to reset the clock back to '00:00.0'\n\r");
                     printf_tiny("\n\r**************************************************\n\r");
                    //printf_tiny("\n\rEnter 'H' to display hexdump\n\r");
                    //printf_tiny("\n\rEnter 'Q' to create new custom character\n\r");
                    }
                break;
            case 'J':
                //Jump to address location

                    printf_tiny("\n\rEnter address without prefix '0x': ");
                    unsigned char goto_address=valid_input();
                     __critical{
                    lcdgotoaddr(goto_address);
                }
                break;
            case 'X':
                //Jump to co-ordinates
                //__critical{
                    printf_tiny("\n\rEnter row: ");
                    unsigned char row=putchar(getchar());
                    printf_tiny("\n\rEnter column: ");
                    unsigned char column=putchar(getchar());
                    lcdgotoxy(row,column);
               // }
                break;
            case 'C':
                //Input character

                    printf_tiny("\n\rEnter character to print on LCD: ");
                    lcd_input=getchar();
                    printf_tiny("%c\n\r",lcd_input);
                    __critical{
                    lcdputch(lcd_input);
                }
                break;
            case 'S':
                //input string

                    printf_tiny("\n\rEnter string to print on LCD: ");
                    int k=1;
                    i=0;
                    while(k){
                        ch=getchar();
                        //ASCII of carriage return is 0xD
                        printf_tiny("%c",ch);
                        if(ch==0xD)
                            k=0;
                        else{
                            *(string+i)=ch;
                            i++;
                        }
                    }
                    *(string+i)='\0';
                  __critical{
                    lcdputstr(string);
                }
                break;
            case 'O':
                //clear LCD
                __critical{
                    lcdclear();
                }
                break;
            case 'E':
                //Stop timer
                TCON&=~(0x10);
                break;
            case 'R':
                //restart clock
                TCON|=0x10;
                break;
            case 'B':
                //clear timer
                __critical{
                    save_cursor_address=get_cursor_address();
                    one_tenth_second='0';
                    second_one='0';
                    second_two='0';
                    minute_one='0';
                    minute_two='0';
                    lcdgotoaddr(0x59);
                    lcdputch(minute_two);
                    lcdputch(minute_one);
                    lcdputch(':');
                    lcdputch(second_two);
                    lcdputch(second_one);
                    lcdputch('.');
                    lcdputch(one_tenth_second);
                    lcdgotoaddr(save_cursor_address);
                }
                break;

            case 'H':
                // HexDump function for DDRAM address
                __critical{
                    save_cursor_address=get_cursor_address();
                    printf_tiny("\n\rPrinting Hexdump of DDRAM\n\r");
                    for(k=0x00;k<=0x5F;k++){
                        if(k==0x10)
                            k=0x40;
                        else if(k==0x50)
                            k=0x10;
                        else if(k==0x20)
                            k=0x50;

                        if(!(k%16)){
                            printf("\n\r0x%02x: ",k);
                        }
                        printf("0x%02x ",send_addr_read_data(1,k));
                    }
                    printf("\n\r");

                    printf_tiny("\n\rPrinting Hexdump of CGRAM\n\r");
                    for(k=0x40;k<=0x7F;k++){
                        if(!(k%16)){
                            printf("\n\r0x%02x: ",k);
                        }
                        printf("0x%02x ",send_addr_read_data(0,k));
                    }
                    printf("\n\r");
                    lcdgotoaddr(save_cursor_address);
                }
                break;
           case 'Q':

                    save_cursor_address=get_cursor_address();
                    printf_tiny("\n\rCreate your own custom character\n\r");
                    printf_tiny("Enter character code: ");
                    unsigned char ccode=getchar();
                    printf_tiny("%c\n\r",ccode);
                    unsigned char row_vals[8];
                    printf_tiny("\n\rEnter row values: ");
                    for(j=0;j<8;j++){
                        printf("\n\rEnter no. %d row value: ",j);
                        row_vals[j]=valid_input();
                    }
                    __critical{
                    lcdcreatechar(ccode,row_vals);
                    lcdgotoaddr(save_cursor_address);
                }
                break;
            default:
                break;
        }
    }

}


