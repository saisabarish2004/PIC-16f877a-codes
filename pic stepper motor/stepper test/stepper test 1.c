#include <pic.h>
void delay();
void main()
{
	TRISD=0;
	TRISB=1;
	PORTD=0X00;
PORTB=0X00;
	char a[10]={0X08,0X0C,0X04,0X06,0X02,0X03,0X01,0X09};
if(RB0==1)
{
	
	for(int i=0;i<=8;i++)
	{
		PORTD= a[i];

	delay();
}
}
else
{
	PORTD= 0X00;
}
	
/*----------------------------------------------------------------------------------------------*/
if(RB1==1)
{
	int j=1;
	for(int i=0+j;i<=8;i++)
	{
		PORTD= a[i];
j++;
	delay();
}
}
else
{
	PORTD= 0X00;
}
	


/*----------------------------------------------------------------------------------------------*/
  


if(RB2==1)
{
	int j=0;
	for(int i=0+j;i<=8;i++)
	{
		PORTD= a[i];
j++;
	delay();
}
}
else
{
	PORTD= 0X00;
}
	}

void delay()
{
for(int j=0;j<=20000;j++);
}