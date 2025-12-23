#include<pic.h>
void delay();
void main()
{
	TRISD=0;
	TRISA=1;
	PORTD=0X00;
	T0CS=1;
	TMR0=0X00;
while(1)
{
PORTD=TMR0;
delay();
}
}
void delay()
{
for(int j=0;j<=6000;j++);
}