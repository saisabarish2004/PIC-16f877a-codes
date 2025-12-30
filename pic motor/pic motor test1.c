#include <pic.h>
#define fm1 RB0
#define rm1 RB1
#define fm2 RB2
#define rm2 RB3
void delay();
void main()
{
	TRISB=1;
	TRISD=0;
PORTD=0X00;
PORTB=0X00;	

/* ------------------------------------------- */

if(fm1==1)
{
	RD0=1;RD1=0;
delay();
}
 else
{
    RD0=0;RD1=0;
delay();
}

/* ------------------------------------------- */
	
	if(fm2==1)
{
	RD2=1;RD3=0;
delay();
}
 else
{
    RD2=0;RD3=0;
delay();
}


/* ------------------------------------------- */


	
	if(rm1==1)
{
	RD0=0;RD1=1;
delay();
}
 else
{
    RD0=0;RD1=0;
delay();
}


/* ------------------------------------------- */


	if(rm2==1)
{
	RD2=0;RD3=1;
delay();
}
 else
{
    RD2=0;RD3=0;
delay();
}


/* ------------------------------------------- */


}
void delay()
{
	for( int i=0;i<=4000;i++);
}	
	
	