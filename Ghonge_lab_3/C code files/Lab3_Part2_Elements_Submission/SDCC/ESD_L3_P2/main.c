/*
@brief: This function contains the UART development for ESD Lab 3 part 2
@author: Swapnil Ghonge
@credits: CLass notes and links in References and link section on canvas
        collaborated with Ishaan to debug my code.
 */

#include <mcs51/8051.h>
//#include "sdcc_syntax_example.h"
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>


#define HEAP_SIZE 4800   // size must be smaller than available XRAM
unsigned char __xdata heap[HEAP_SIZE];
__xdata char *buffer_0;
__xdata char *buffer_1;
__xdata char *buffer_n[50];
/* -------------------------------------------------- */
//          GLOBALS
/* -------------------------------------------------- */

    unsigned int buffer_0_add; // first address of buffer 0
    unsigned int buffer_1_add; // first address of buffer 1
    int input_char;            //  variable to input character
    unsigned int storage=0;     // storage variable to count data
    unsigned int total_char =0; // total number character input
    int i = 0;
    int num;



/* -------------------------------------------------- */
//          sdcc function
/* -------------------------------------------------- */
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
// putstr takes a string (char array) and prints till it finds a NULL.
// Returns length of printed string with null char

unsigned int getinput()
{
    unsigned int a ; // for 1000's
    unsigned int b;  //for 100's
    unsigned int c;  // for 10's4
    unsigned int d;  // for one's place
    unsigned int number; //number between 48 and 4800

    again:  printf_tiny("Enter a value divisible btw 48 and 4800 and divisible by 16\r\n");

        a = getchar(); // get first digit
        int e=a-'0';
        printf_tiny("a= %d\r\n", e);
        // putchar(a);


        b = getchar(); // get 2nd digit
        int f=b-'0';
        printf_tiny("b= %d\r\n", f);
       // putchar(b);


        c = getchar(); // get 3rd digit
        int g=c-'0';
        printf_tiny(" c = %d\r\n", g);
       // putchar(c);


        d= getchar(); // get 4th digit
        int h=d-'0';
        printf_tiny(" d = %d \r\n", h);
        //putchar(d);

    // converst ASCII to Integer
    number= (e*1000 + f*100 + g*10 + h);
    printf_tiny("number = %d\n\r", number);
    if((number>=48) &&(number<=4800)&&(number%16==0)) // value of digit >48 and less then 4800
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
/* -------------------------------------------------- */
// Function for taking to select new buffer size between 30 and 300*/
/* -------------------------------------------------- */

int getinput_30_300()
{
    unsigned int q ; // for 100's
    unsigned int r;  //for 10's
    unsigned int s;  // for 1's
    unsigned int num_new; //number between 30 and 300

   again1: printf_tiny("Enter a value divisible btw 30 and 300\r\n");

    q = getchar();
    int x=q-'0';
    printf_tiny(" q = %d \r\n", x);

    r= getchar();
    int y=r-'0';
    printf_tiny(" r = %d \r\n", y);

    s= getchar();
    int z=s-'0';
    printf_tiny(" s = %d \r\n", z);

    num_new= ((x*100)+(y*10)+z);
    printf_tiny("new value of buffer is = %d",num_new);
    if ((num_new>=30)&&(num_new<=300))
    return num_new;
    else
        goto again1;


}
/* -------------------------------------------------- */
/*Function that generate a number which helps in freeing the entered number buffer*/
/* -------------------------------------------------- */
int del_num()
{
    unsigned int P ;
    unsigned int Q;
    unsigned int number3 = 0;

    printf_tiny("enter the number of buffer to delete");

    P= getchar();
    int A = P-'0';
    Q= getchar();
    int B = Q-'0';
    number3 = ((A*10)+B);

    return number3;
}

void main()
{
   unsigned int num=0;
    int number2;
    int j= 0;
    int t = 2;
    unsigned int buff_size[50];
    unsigned int num_del;
    unsigned int total_buffer_count;
    int count= 0;
    unsigned int buff_0_count;


    // get input for number
    num = getinput();
    printf_tiny("the number is %d",num);

    buffer_0 = (char*) malloc(num); // malloc num bytes and store in buffer_0
    buffer_0_add = (unsigned int)buffer_0; //printing the starting address of buffer_0

    if(buffer_0 !=NULL)
    {
        printf_tiny("malloc for buffer0 is successful\r\n");
        printf_tiny("starting address of buffer 0 is %x\r\n",buffer_0_add);
    }

    buffer_1=(char *)malloc(num); // malloc num bytes and store in buffer_1
    buffer_1_add = (unsigned int)buffer_1; //printing the starting address of buffer_1

    if(buffer_1 !=NULL)
    {
        printf_tiny("malloc for buffer1 is successful\r\n");
        printf_tiny("starting address of buffer 1 is %x\r\n",buffer_1_add);
    }

    while(1)
    {
        printf_tiny("Enter a character\r\n");
        input_char = getchar();// take input for storage
        total_char++;
        putchar(input_char);

        printf_tiny("the input character is %d\r\n", input_char);

        /*character between the a to z are accepted*/
        if(((count<num)&&(input_char>='a')&&(input_char<='z')))
        {
            storage++;
            *((buffer_0)+count) = input_char;
            int *p = ((buffer_0)+count);
            count++;
            printf_tiny("buffer is \r\n%p",p);
            printf_tiny("count = %d\r\n",count);
        }
        else if((count==num)&&(input_char != '-' )&&(input_char != '+')&&(input_char!='?')&&(input_char!='@')&&(input_char!='='))
        {
            putchar(input_char);
            printf_tiny("buffer is full\r\n");
        }

        else if (input_char == '+')
        {
            printf_tiny(" Allocating a new buffer\r\n");
            printf_tiny("enter a new value between 30 and 300\r\n");
            number2 = getinput_30_300(); // values between30 and 300 are accepted

            buffer_n[j] = (char*)malloc(number2); // allocating new buffer with memory

            if(buffer_n[j]==NULL)
            {
                printf_tiny("\n\rMemory Allocation for Buffer_%d Failed\n\rPress '+' to Try again\n\r",j+2);
            }
            else
            {
                printf_tiny("\n\rMemory Allocation Successful for Buffer_%d\n\r",(j+2));
                printf_tiny("\n\rBuffer_%d allocated of size %d\n\r",(j+2),number2);
                printf_tiny("\n\rAddress of buffer_%d = 0x%x\n\r",(j+2),(uint16_t)(buffer_n[i]));
                buff_size[t]=number2;              //store size of newly allocated buffer to buff_size array
                t++;
                j++;
            }

        }
        else if (input_char == '-')
        {
            printf_tiny("\n\rEnter a valid buffer number\n\r");
            num_del = del_num();

             if(num_del == 0)
                {
                printf_tiny("\n\rBuffer 0 cannot be deleted!\n\r");
                }
            else if(num_del == 1)
                {
                free(buffer_1);
                 printf_tiny("\n\rBuffer 1>%d\n\r",(unsigned int)buffer_1);
                 buffer_1 = 0;
                printf_tiny("Buffer 1 deleted\r\n");
                }
                else if(((num_del>1))&&(num_del<=(j+2)))
                {
                        printf_tiny("\n\rDeleting buffer_%d.........\n\r",num_del);
                        free(buffer_n[num_del-2]);
                        printf_tiny("\n\rBuffer %d  is free\n\r",num_del);
                        buffer_n[num_del-2]=0;
                }

                else
                    {
                        printf_tiny("\n\rEnter a valid buffer number\n\rPress '-' to delete any valid buffer\n\r");
                    }
        }

         else if (input_char == '?')
         {
            printf_tiny(" HEAP REPORT of buffer_0 \r\n");
            printf_tiny("\n\rStart Addressof buffer_0x%x\n\r",buffer_0_add);
            printf_tiny("\n\rEnding Address of buffer_0x%x\n\r",(buffer_0_add)+(num));
            printf_tiny("\n\rBuffer Size of buffer_0 %d\n\r",num);
            printf_tiny("\n\rStored characters in buffer>>>%d\n\r",storage);
            printf_tiny("\n\rFree Spaces in buffer%d\n\r",(num-storage));


            if(buffer_1 != 0)
                    {
                        printf_tiny("\n\rHeap status of buffer_1\n\r");
                        printf_tiny("\n\rStart Address of buffer_1 x%x\n\r",buffer_1_add);
                        printf_tiny("\n\rEnding Address of buffer_1x%x\n\r",buffer_1_add+num);
                        printf_tiny("\n\rBuffer Size%d\n\r",num);
                        printf_tiny("\n\rStorage characters in buffer>>>0\n\r");
                        printf_tiny("\n\rFree Spaces in buffer>>>>>>>>>>%d\n\r",(num));

                    }

            for(int m=2;m<=(j+2);m++)
                    {
                        if(buffer_n[m-2]!=0)
                        {
                            printf_tiny("\n\rBUFFER %d\n\r",m);
                            printf_tiny("\n\rStart Address0x%x\n\r",(unsigned int)buffer_n[m-2]);
                            printf_tiny("\n\rEnding Address0x%x\n\r",(uint16_t)(buffer_n[m-2])+(uint16_t)(buff_size[m]));
                            printf_tiny("\n\rBuffer Size%d\n\r",buff_size[m]);
                            printf_tiny("\n\rStorage characters in buffer0\n\r");
                            printf_tiny("\n\rFree Spaces in buffer%d\n\r",(buff_size[m]));
                        }
                    }

                    printf_tiny("\n\rNumber of storage characters = %d\n\r",storage);
                    printf_tiny("\n\rTotal number of characters received = %d\n\r",total_char);
                    printf_tiny("\n\rTotal number of buffers that were allocated since the start of the program = %d\n\r",(i+2));

         }
         else if(input_char == '=')
                {
                    printf_tiny("\n\rContents in Buffer 0\n\r");

                    for((buff_0_count)=0;(buff_0_count)<storage;(buff_0_count)++)
                    {
                        if(buff_0_count==0)
                        {
                            printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
                        }
                        else if((buff_0_count%16)!=0)
                        {
                            printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
                        }
                        else if(buff_0_count%16==0)
                        {
                            printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
                        }
                    }
                }
                else if(input_char == '&')
                {
                    printf_tiny("\n\rContents in heap\n\r");
                    for((buff_0_count)=0;(buff_0_count)<=256;(buff_0_count)++)
                    {
                        if(buff_0_count==0)
                        {
                            printf_tiny("0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
                        }
                        else if((buff_0_count%16)!=0)
                        {
                            printf_tiny(" %x",*((buffer_0)+(buff_0_count)));
                        }
                        else if(buff_0_count%16==0)
                        {
                            printf_tiny("\n\r0x%x>> %x",(uint16_t)(buffer_0+buff_0_count),*((buffer_0)+(buff_0_count)));
                        }
                    }
                }

          else if (input_char == '@')
                {
                    printf_tiny("\n\rFree Buffer 0\n\r");
                    free(buffer_0);
                    printf_tiny("\n\rBuffer 1 will now become empty\n\r");

                    printf_tiny("\n\rFreeing Buffer 1\n\r");
                    free(buffer_1);
                    printf_tiny("\n\rBuffer 1 is empty\n\r");

                    for(total_buffer_count=2;(total_buffer_count)<(j+2);(total_buffer_count)++)
                    {
                        printf_tiny("\n\rFreeing buffer_%d\n\r",total_buffer_count);
                        free(buffer_n[total_buffer_count]);
                        printf_tiny("\n\rBuffer %d freed \n\r",total_buffer_count);
                    }





    }
    //main();




    }

}

