#include<pic.h>

void main()
{
	TRISC=0X00;
	TRISB=1;
PORTB=0XFF;
    RCSTA=0X90;
	//PORTC=0;
	TXSTA=0X24;
	SPBRG=129;
while(1)
{

   if(RB3==0)
   {
	TXREG=1;
   }
   
   if(RB1==0)
   {
	TXREG=2;
   }

   if(RB2==0)
   {
	TXREG=3;
   }
/*else
{
	TXREG=' ';
   }*/


while(TXIF==0);
TXIF=0;
}
while(1);
}  		