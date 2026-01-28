#include<pic.h>
void delay();
void main()
{
	TRISB=0;
	TRISD=1;
	TRISC=0X01;
	SSPCON=0X20;
	SSPSTAT=0X00;
	
PORTD=0XFF;
if(RD0==0);
{
        RB0=0;
		SSPBUF='A';
		while(SSPIF==0);
		SSPIF=0;
        RB0=1;
       delay(); 
        
}

}	
void delay()
{
 for (int i=0;i<=8000;i++);
}
			
	