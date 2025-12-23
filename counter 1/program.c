#include <pic.h> 
void main()
{
	
 
unsigned int temp;

TRISD=0;
TRISC=0X01;
PORTD = 0X00;
T1CON=0X0F;
TMR1H=0X00;
TMR1L=0X00;
while (1)
{

temp = TMR1H << 8;
temp = temp + TMR1L;
PORTD = temp;
}
}