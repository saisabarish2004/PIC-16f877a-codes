#include <pic.h>
void delay();
void redgreen();
void yellow();
void main()
{
	TRISB=0;
	TRISD=0;
	TRISC=0;
   PORTC=0X00;
PORTD=0X03;
while(1)
{

PORTD=0X20;
PORTC=0X49; 
delay();
redgreen();
PORTC=0XDB;
PORTD=0X20;
delay();
yellow();
PORTC=0X49;
PORTD=0X0C;
delay();
redgreen();
PORTC=0XDB;
PORTD=0X1C;
delay();
yellow();
PORTC=0X45;
PORTD=0X08;
delay();
redgreen();
PORTC=0X07;
PORTD=0X18;
delay();
yellow();
PORTC=0X29;
PORTD=0X08;
delay();
redgreen();
PORTC=0X2B;
PORTD=0X18;
delay();
yellow();


}
}





void redgreen()
{
int i,j;
	char segcmd[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
		for (j=0;j<=10;j++)
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
void yellow()
{
int i,j;
	char segcmd[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
		for (j=0;j<=5;j++)
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



void delay()
{
int k;
		for (k=0;k<=4000;k++);
		
		}

