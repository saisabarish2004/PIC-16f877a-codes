#include<pic.h>
void lcdint();
void lcdcmd(char a);
void lcddata(char h);
void delay();
void eeprom();
void main()
{
TRISB=0;
TRISD=0;
PORTD=0X00;
  
 EEADR=0X00;
   EEDATA='b';
   EEPGD=0;
   WREN=1;
   
   EECON2=0X55;
   EECON2=0XAA;
   WR=1;
   while(EEIF==0);
   EEIF==0;
   WREN=0;
WR=0;
char h;
h=EEDATA;

lcdint();
while(1)
{
lcddata(h);

}
}



void lcdint()
{
lcdcmd(0X02);
//lcdcmd(0X28);
lcdcmd(0X0C);	
lcdcmd(0X06);
lcdcmd(0X01);
lcdcmd(0X81);
}


void lcdcmd(char a)
{
	PORTD=a;
	RB0=0;
	RB1=0;
	RB2=1;
delay();
	RB2=0;
delay();
}

void lcddata(char h)
{
PORTD=h;
	RB0=1;
	RB1=0;
	RB2=1;
delay();
	RB2=0;
delay();
}

void delay()
{
for(int i=0;i<=3000;i++);
}
