#include<pic.h>
int adc();
void delay();
void main()
{
	TRISD=0;
	TRISA=1;
	PORTD=0X00;
	ADCON0=0X81;
	ADCON1=0XCE;
while(1)
{
	PORTD=adc();
	}
}
int adc()
{
ADCON0=0X81;
	ADCON1=0XCE;
	GODONE=1;
while(GODONE);
	return(ADRESH<<8)+ADRESL;
delay();
GODONE=0;

//while(1);


}		
void delay()
{
for(int i=0;i<5000;i++);
}
