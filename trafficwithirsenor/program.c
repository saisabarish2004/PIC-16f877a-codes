#include<pic.h>
void delay();
void main()
{
	TRISD=0;
	TRISB=1;
	TRISC=0;
	PORTD=0X00;
	PORTC=0X00;
	
int ir1=0,ir2=0,led1=0,led2=0,prl,mrl;
while(1)
{

	if(RB4<5)
{
	RD0=1;
mrl=RB2;
	mrl++;
	RB4=mrl;
	delay();
}	
//RB3=mr1;
else if(RB3<5)
{
mrl=prl;
	prl=prl-mrl;
	mrl++;
    RB2=mrl;
	
}
else if(RB2==5)
{
	RD1=1;
}
else
{
	}
}
}
void delay()
{
	for(int i=0;i<3000;i++);
}			
	
		
		
	
	