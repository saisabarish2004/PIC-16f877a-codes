#include<pic.h>
void delay();
void main()
{

 int i;
	TRISC=0;
	PORTC=0X00;
	CCP1CON=0X0F;
PR2=100;

for(i=0;i<=PR2;i++)
{
	CCPR1L=i;
	delay();
}

}
void delay()
{
int j;
	for( j=0;j<=1000;j++);
}		