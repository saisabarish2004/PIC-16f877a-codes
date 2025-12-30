#include <pic.h>
void lcdcmd(char a);
void lcddata( char b);
void lcdint();
void delay();
void main ()
{
	TRISC=0;
	TRISD=0;
char a[76]={"sai sabarish","sadafaf","jfzshthdzjgd"};
lcdint();	
   
for( int j=0;j<=11;j++)
{
lcddata(a[j]);;
}	
lcdcmd (0XC0);
for( int j=0;j<=11;j++)
{
lcdcmd(0X18);
lcddata(a[j]);
}
	
}
void lcdint ()
{
	
}
void lcdcmd(char a)
{
PORTD=(PORTD & 0X0F)|(a&0XF0);
	RC0=0;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
	PORTD=((PORTD & 0X0F)|(a&0X0F)<<4);
	RC0=0;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
}
void lcddata( char b)
{
PORTD=(PORTD & 0X0F)|(b&0XF0);
	RC0=1;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
	PORTD=((PORTD & 0X0F)|(b&0X0F)<<4);
	RC0=1;
	RC1=0;
	RC2=1;
	delay();
	RC2=0;
}
void delay()
{
int k;
	for( int k =0;k<=1000;k++);
}