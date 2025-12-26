#include <pic.h>
void delay();
void main()
{
	TRISB=0;
	TRISD=0;
	char segcmd[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int i,j,a,b;
while (1)
{ 

		for (j=0;j<=99;j++)
{
i=j%10;
RD0=1;
RD1=0;
PORTB=segcmd[i];
delay();
i=j/10;
RD0=0;
RD1=1;
PORTB =segcmd[i];
delay();
}
}
}
void delay()
{
int k;
		for (k=0;k<=15000;k++);
		
		}

