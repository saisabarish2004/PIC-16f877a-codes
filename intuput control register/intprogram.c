#include<pic.h>
void delay();
void intrupt();
void main()
{
	TRISB=1;
	TRISD=0;
	PORTD=0X00;
	
	char a[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	
while(1)
{
	for(int i=0;i<=20;i++)
             {
	             PORTD=a[i];
	             delay();
if(RB0==1)
{
intrupt();
delay();
}
	         }
}
}
void intrupt()
{
	INTCON=0X90;
	PORTD=0X039;
	delay();
INTF=0;
}
void delay()
{
	for(int j=0;j<=5000;j++);
}			         	         
	             	