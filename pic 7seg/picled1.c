#include <pic.h>
void lcdcmd(char a);
void lcddata( char b);
void lcdint();
void delay();
void main ()
{
	TRISC=0;
	TRISD=0;
char a[76]={"sai sabarish"};
lcdint();	
   
for( int j=0;j<=11;j++)
{
lcddata(a[j]);
delay();
}	
	
}
void lcdint ()
{
lcdcmd(0X38);
lcdcmd(0X0C);	
lcdcmd(0X06);
lcdcmd(0X10);
lcdcmd(0X01);
lcdcmd(0X80);
}
void lcdcmd(char a)
{
PORTD=a;
	RC0=0;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
}
void lcddata( char b)
{
PORTD=b;
    RC0=1;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
}
void delay()
{
int k;
	for( int k =0;k<=10000;k++);
}