#include<pic.h>

void main()
{
	TRISC=0X80;
	TRISB=0;
PORTB=0X00;
    RCSTA=0X90;
	
	TXSTA=0X24;
	SPBRG=129;
	int mes;
mes=RCREG;
switch (mes)
{
	case 1:
	RB1=1;
	break;
	
	case 2:
	RB2=1;
	break;
	
	case 3:
	RB3=1;
	break;
default:
	RB1=0;RB2=0;RB3=0;
	break;
}		
while(RCIF==0);
RCIF=0;
}