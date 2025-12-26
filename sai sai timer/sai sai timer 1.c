#include <pic.h>
void delay();
void main()
{

TRISB=0;
PORTB=0X00;

 while(1)
 {
	 
RB0=0;

RB0=1;
	}	
}
	
void delay()
{
	
T1CON=0X39; 
	TMR1H=0XCF;
	TMR1L=0X2B;
		    while(TMR1IF==0);

		   TMR1IF=0;


}


		    