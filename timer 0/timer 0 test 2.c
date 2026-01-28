#include <pic.h>
void delay();
void main()
{

TRISD=0;
PORTD=0X00;
 while(1)
 {
	 
RD0=0;
delay();
delay();
RD0=1;
	}	
}
	
void delay()
{
	
	T0CS = 0;
	T0SE = 0;
	PSA = 0;
	PS2 = 1;
	PS1 = 1;
	PS0 = 1;
	
		    while(T0IF==0)
		    T0IF=0;

}
		    