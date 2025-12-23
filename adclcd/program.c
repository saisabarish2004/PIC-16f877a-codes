#include<pic.h>
int adc();
void delay();
void lcddata(char  );
void lcdcmd(char);
void lcdint();

void main()
{
	TRISD=0;
	TRISB=0;
	TRISA=1;
	PORTD=0X00;
	PORTB=0X00;
	ADCON0=0X81;
	ADCON1=0XCE;
int b,c,d,e,f,g;
char h,i,j,k;
lcdint();
 int a;
a=adc();	
PORTD=a;
b=a/10;
c=a%10;
d=b/10;
e=b%10;
f=d/10;
g=d%10;
h=f+(0X30);
lcddata(h);
i=g+(0X30);
lcddata(i);
j=e+(0X30);
lcddata(j);
k=c+(0X30);
lcddata(k);
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
lcdcmd(0X1C);


}


int adc()
{
;
GODONE=1;
while(GODONE);
return(ADRESH<<8)+ADRESL;
delay();
}

void delay()
{
for(int i=0;i<=3000;i++);

}