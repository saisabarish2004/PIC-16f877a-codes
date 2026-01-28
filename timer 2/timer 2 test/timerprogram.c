#include<pic.h>
void delay();
void main()
{
	TRISB=0;
	PORTB=0X00;
	
	while(1)
	{
		RB0=0;
		delay();
		RB0=1;
		delay();
	}
}
void delay()
{
	T2CON=7F;
	
	   while(TMR2IF==0);
	   TMR2IF=0;
}	   
	   