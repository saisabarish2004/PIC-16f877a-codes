opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_delay
	FNCALL	_main,_redgreen
	FNCALL	_main,_yellow
	FNCALL	_yellow,___awmod
	FNCALL	_yellow,_delay
	FNCALL	_yellow,___awdiv
	FNCALL	_redgreen,___awmod
	FNCALL	_redgreen,_delay
	FNCALL	_redgreen,___awdiv
	FNROOT	_main
	global	redgreen@F517
	global	yellow@F521
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	59

;initializer for redgreen@F517
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	line	79

;initializer for yellow@F521
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"pic traffic light test21.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	59
redgreen@F517:
       ds      10

psect	dataBANK0
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	79
yellow@F521:
       ds      10

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_redgreen
?_redgreen:	; 0 bytes @ 0x0
	global	?_yellow
?_yellow:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@k
delay@k:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_redgreen
??_redgreen:	; 0 bytes @ 0x9
	global	??_yellow
??_yellow:	; 0 bytes @ 0x9
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	redgreen@segcmd
redgreen@segcmd:	; 10 bytes @ 0x0
	global	yellow@segcmd
yellow@segcmd:	; 10 bytes @ 0x0
	ds	10
	global	redgreen@i
redgreen@i:	; 2 bytes @ 0xA
	global	yellow@i
yellow@i:	; 2 bytes @ 0xA
	ds	2
	global	redgreen@j
redgreen@j:	; 2 bytes @ 0xC
	global	yellow@j
yellow@j:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     14      34
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_redgreen
;;   _main->_yellow
;;   _yellow->___awdiv
;;   _redgreen->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_redgreen
;;   _main->_yellow
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    1696
;;                              _delay
;;                           _redgreen
;;                             _yellow
;; ---------------------------------------------------------------------------------
;; (1) _yellow                                              18    18      0     825
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     14    14      0
;;                            ___awmod
;;                              _delay
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _redgreen                                            18    18      0     825
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     14    14      0
;;                            ___awmod
;;                              _delay
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;   _redgreen
;;     ___awmod
;;     _delay
;;     ___awdiv
;;   _yellow
;;     ___awmod
;;     _delay
;;     ___awdiv
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      31      12        0.0%
;;ABS                  0      0      2F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      E      22       5       42.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_redgreen
;;		_yellow
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2084:	
;pic traffic light test31.c: 7: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
;pic traffic light test31.c: 8: TRISD=0;
	clrf	(136)^080h	;volatile
	line	9
;pic traffic light test31.c: 9: TRISC=0;
	clrf	(135)^080h	;volatile
	line	10
;pic traffic light test31.c: 10: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	11
	
l2086:	
;pic traffic light test31.c: 11: PORTD=0X03;
	movlw	(03h)
	movwf	(8)	;volatile
	goto	l2088
	line	12
;pic traffic light test31.c: 12: while(1)
	
l565:	
	line	15
	
l2088:	
;pic traffic light test31.c: 13: {
;pic traffic light test31.c: 15: PORTD=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	16
	
l2090:	
;pic traffic light test31.c: 16: PORTC=0X49;
	movlw	(049h)
	movwf	(7)	;volatile
	line	17
	
l2092:	
;pic traffic light test31.c: 17: delay();
	fcall	_delay
	line	18
	
l2094:	
;pic traffic light test31.c: 18: redgreen();
	fcall	_redgreen
	line	19
	
l2096:	
;pic traffic light test31.c: 19: PORTC=0XDB;
	movlw	(0DBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	20
	
l2098:	
;pic traffic light test31.c: 20: PORTD=0X20;
	movlw	(020h)
	movwf	(8)	;volatile
	line	21
	
l2100:	
;pic traffic light test31.c: 21: delay();
	fcall	_delay
	line	22
	
l2102:	
;pic traffic light test31.c: 22: yellow();
	fcall	_yellow
	line	23
	
l2104:	
;pic traffic light test31.c: 23: PORTC=0X49;
	movlw	(049h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	24
	
l2106:	
;pic traffic light test31.c: 24: PORTD=0X0C;
	movlw	(0Ch)
	movwf	(8)	;volatile
	line	25
	
l2108:	
;pic traffic light test31.c: 25: delay();
	fcall	_delay
	line	26
	
l2110:	
;pic traffic light test31.c: 26: redgreen();
	fcall	_redgreen
	line	27
	
l2112:	
;pic traffic light test31.c: 27: PORTC=0XDB;
	movlw	(0DBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
	
l2114:	
;pic traffic light test31.c: 28: PORTD=0X1C;
	movlw	(01Ch)
	movwf	(8)	;volatile
	line	29
	
l2116:	
;pic traffic light test31.c: 29: delay();
	fcall	_delay
	line	30
	
l2118:	
;pic traffic light test31.c: 30: yellow();
	fcall	_yellow
	line	31
	
l2120:	
;pic traffic light test31.c: 31: PORTC=0X45;
	movlw	(045h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
	
l2122:	
;pic traffic light test31.c: 32: PORTD=0X08;
	movlw	(08h)
	movwf	(8)	;volatile
	line	33
	
l2124:	
;pic traffic light test31.c: 33: delay();
	fcall	_delay
	line	34
	
l2126:	
;pic traffic light test31.c: 34: redgreen();
	fcall	_redgreen
	line	35
	
l2128:	
;pic traffic light test31.c: 35: PORTC=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
	
l2130:	
;pic traffic light test31.c: 36: PORTD=0X18;
	movlw	(018h)
	movwf	(8)	;volatile
	line	37
	
l2132:	
;pic traffic light test31.c: 37: delay();
	fcall	_delay
	line	38
	
l2134:	
;pic traffic light test31.c: 38: yellow();
	fcall	_yellow
	line	39
	
l2136:	
;pic traffic light test31.c: 39: PORTC=0X29;
	movlw	(029h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
	
l2138:	
;pic traffic light test31.c: 40: PORTD=0X08;
	movlw	(08h)
	movwf	(8)	;volatile
	line	41
	
l2140:	
;pic traffic light test31.c: 41: delay();
	fcall	_delay
	line	42
	
l2142:	
;pic traffic light test31.c: 42: redgreen();
	fcall	_redgreen
	line	43
	
l2144:	
;pic traffic light test31.c: 43: PORTC=0X2B;
	movlw	(02Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
	
l2146:	
;pic traffic light test31.c: 44: PORTD=0X18;
	movlw	(018h)
	movwf	(8)	;volatile
	line	45
	
l2148:	
;pic traffic light test31.c: 45: delay();
	fcall	_delay
	line	46
	
l2150:	
;pic traffic light test31.c: 46: yellow();
	fcall	_yellow
	goto	l2088
	line	49
	
l566:	
	line	12
	goto	l2088
	
l567:	
	line	50
	
l568:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_yellow
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _yellow *****************
;; Defined at:
;;		line 77 in file "E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  segcmd         10    0[BANK0 ] unsigned char [10]
;;  j               2   12[BANK0 ] int 
;;  i               2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      14       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		_delay
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	77
	global	__size_of_yellow
	__size_of_yellow	equ	__end_of_yellow-_yellow
	
_yellow:	
	opt	stack 6
; Regs used in _yellow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l2054:	
;pic traffic light test31.c: 78: int i,j;
;pic traffic light test31.c: 79: char segcmd[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(yellow@segcmd)&0ffh
	movwf	fsr0
	movlw	low(yellow@F521)
	movwf	(??_yellow+0)+0
	movf	fsr0,w
	movwf	((??_yellow+0)+0+1)
	movlw	10
	movwf	((??_yellow+0)+0+2)
u2460:
	movf	(??_yellow+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_yellow+0)+0+3)
	incf	(??_yellow+0)+0,f
	movf	((??_yellow+0)+0+1),w
	movwf	fsr0
	
	movf	((??_yellow+0)+0+3),w
	movwf	indf
	incf	((??_yellow+0)+0+1),f
	decfsz	((??_yellow+0)+0+2),f
	goto	u2460
	line	80
	
l2056:	
;pic traffic light test31.c: 80: for (j=0;j<=5;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(yellow@j)
	movlw	high(0)
	movwf	((yellow@j))+1
	
l2058:	
	movf	(yellow@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2475
	movlw	low(06h)
	subwf	(yellow@j),w
u2475:

	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l2062
u2470:
	goto	l582
	
l2060:	
	goto	l582
	line	81
	
l580:	
	line	82
	
l2062:	
;pic traffic light test31.c: 81: {
;pic traffic light test31.c: 82: i=j%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(yellow@j+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(yellow@j),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(yellow@i+1)
	addwf	(yellow@i+1)
	movf	(0+(?___awmod)),w
	clrf	(yellow@i)
	addwf	(yellow@i)

	line	83
	
l2064:	
;pic traffic light test31.c: 83: RD0=1;
	bsf	(64/8),(64)&7
	line	84
	
l2066:	
;pic traffic light test31.c: 84: RD1=0;
	bcf	(65/8),(65)&7
	line	85
	
l2068:	
;pic traffic light test31.c: 85: PORTB=segcmd[i];
	movf	(yellow@i),w
	addlw	yellow@segcmd&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	86
	
l2070:	
;pic traffic light test31.c: 86: delay();
	fcall	_delay
	line	87
	
l2072:	
;pic traffic light test31.c: 87: i=j/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(yellow@j+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(yellow@j),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(yellow@i+1)
	addwf	(yellow@i+1)
	movf	(0+(?___awdiv)),w
	clrf	(yellow@i)
	addwf	(yellow@i)

	line	88
	
l2074:	
;pic traffic light test31.c: 88: RD0=0;
	bcf	(64/8),(64)&7
	line	89
	
l2076:	
;pic traffic light test31.c: 89: RD1=1;
	bsf	(65/8),(65)&7
	line	90
	
l2078:	
;pic traffic light test31.c: 90: PORTB =segcmd[i];
	movf	(yellow@i),w
	addlw	yellow@segcmd&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	91
;pic traffic light test31.c: 91: delay();
	fcall	_delay
	line	80
	
l2080:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(yellow@j),f
	skipnc
	incf	(yellow@j+1),f
	movlw	high(01h)
	addwf	(yellow@j+1),f
	
l2082:	
	movf	(yellow@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2485
	movlw	low(06h)
	subwf	(yellow@j),w
u2485:

	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2062
u2480:
	goto	l582
	
l581:	
	line	93
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_yellow
	__end_of_yellow:
;; =============== function _yellow ends ============

	signat	_yellow,88
	global	_redgreen
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _redgreen *****************
;; Defined at:
;;		line 57 in file "E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  segcmd         10    0[BANK0 ] unsigned char [10]
;;  j               2   12[BANK0 ] int 
;;  i               2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      14       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		_delay
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	57
	global	__size_of_redgreen
	__size_of_redgreen	equ	__end_of_redgreen-_redgreen
	
_redgreen:	
	opt	stack 6
; Regs used in _redgreen: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	59
	
l2024:	
;pic traffic light test31.c: 58: int i,j;
;pic traffic light test31.c: 59: char segcmd[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(redgreen@segcmd)&0ffh
	movwf	fsr0
	movlw	low(redgreen@F517)
	movwf	(??_redgreen+0)+0
	movf	fsr0,w
	movwf	((??_redgreen+0)+0+1)
	movlw	10
	movwf	((??_redgreen+0)+0+2)
u2430:
	movf	(??_redgreen+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_redgreen+0)+0+3)
	incf	(??_redgreen+0)+0,f
	movf	((??_redgreen+0)+0+1),w
	movwf	fsr0
	
	movf	((??_redgreen+0)+0+3),w
	movwf	indf
	incf	((??_redgreen+0)+0+1),f
	decfsz	((??_redgreen+0)+0+2),f
	goto	u2430
	line	60
	
l2026:	
;pic traffic light test31.c: 60: for (j=0;j<=10;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(redgreen@j)
	movlw	high(0)
	movwf	((redgreen@j))+1
	
l2028:	
	movf	(redgreen@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2445
	movlw	low(0Bh)
	subwf	(redgreen@j),w
u2445:

	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l2032
u2440:
	goto	l575
	
l2030:	
	goto	l575
	line	61
	
l573:	
	line	62
	
l2032:	
;pic traffic light test31.c: 61: {
;pic traffic light test31.c: 62: i=j%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(redgreen@j+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(redgreen@j),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(redgreen@i+1)
	addwf	(redgreen@i+1)
	movf	(0+(?___awmod)),w
	clrf	(redgreen@i)
	addwf	(redgreen@i)

	line	63
	
l2034:	
;pic traffic light test31.c: 63: RD0=1;
	bsf	(64/8),(64)&7
	line	64
	
l2036:	
;pic traffic light test31.c: 64: RD1=0;
	bcf	(65/8),(65)&7
	line	65
	
l2038:	
;pic traffic light test31.c: 65: PORTB=segcmd[i];
	movf	(redgreen@i),w
	addlw	redgreen@segcmd&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	66
	
l2040:	
;pic traffic light test31.c: 66: delay();
	fcall	_delay
	line	67
	
l2042:	
;pic traffic light test31.c: 67: i=j/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(redgreen@j+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(redgreen@j),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(redgreen@i+1)
	addwf	(redgreen@i+1)
	movf	(0+(?___awdiv)),w
	clrf	(redgreen@i)
	addwf	(redgreen@i)

	line	68
	
l2044:	
;pic traffic light test31.c: 68: RD0=0;
	bcf	(64/8),(64)&7
	line	69
	
l2046:	
;pic traffic light test31.c: 69: RD1=1;
	bsf	(65/8),(65)&7
	line	70
	
l2048:	
;pic traffic light test31.c: 70: PORTB =segcmd[i];
	movf	(redgreen@i),w
	addlw	redgreen@segcmd&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	71
;pic traffic light test31.c: 71: delay();
	fcall	_delay
	line	60
	
l2050:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(redgreen@j),f
	skipnc
	incf	(redgreen@j+1),f
	movlw	high(01h)
	addwf	(redgreen@j+1),f
	
l2052:	
	movf	(redgreen@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2455
	movlw	low(0Bh)
	subwf	(redgreen@j),w
u2455:

	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2032
u2450:
	goto	l575
	
l574:	
	line	75
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_redgreen
	__end_of_redgreen:
;; =============== function _redgreen ends ============

	signat	_redgreen,88
	global	___awmod
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_redgreen
;;		_yellow
;; This function uses a non-reentrant model
;;
psect	text145
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1988:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1990:	
	btfss	(___awmod@dividend+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l1994
u2340:
	line	10
	
l1992:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1994
	line	12
	
l804:	
	line	13
	
l1994:	
	btfss	(___awmod@divisor+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l1998
u2350:
	line	14
	
l1996:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1998
	
l805:	
	line	15
	
l1998:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l2016
u2360:
	line	16
	
l2000:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2006
	
l808:	
	line	18
	
l2002:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	19
	
l2004:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2006
	line	20
	
l807:	
	line	17
	
l2006:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2002
u2380:
	goto	l2008
	
l809:	
	goto	l2008
	line	21
	
l810:	
	line	22
	
l2008:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2012
u2390:
	line	23
	
l2010:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2012
	
l811:	
	line	24
	
l2012:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	25
	
l2014:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2008
u2410:
	goto	l2016
	
l812:	
	goto	l2016
	line	26
	
l806:	
	line	27
	
l2016:	
	movf	(___awmod@sign),w
	skipz
	goto	u2420
	goto	l2020
u2420:
	line	28
	
l2018:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2020
	
l813:	
	line	29
	
l2020:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l814
	
l2022:	
	line	30
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_redgreen
;;		_yellow
;; This function uses a non-reentrant model
;;
psect	text146
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1950:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1952:	
	btfss	(___awdiv@divisor+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l1956
u2240:
	line	11
	
l1954:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1956
	line	13
	
l736:	
	line	14
	
l1956:	
	btfss	(___awdiv@dividend+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l737
u2250:
	line	15
	
l1958:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1960:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l737:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l1980
u2260:
	line	20
	
l1962:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1968
	
l740:	
	line	22
	
l1964:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	23
	
l1966:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1968
	line	24
	
l739:	
	line	21
	
l1968:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1964
u2280:
	goto	l1970
	
l741:	
	goto	l1970
	line	25
	
l742:	
	line	26
	
l1970:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2295
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1976
u2300:
	line	28
	
l1972:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1974:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1976
	line	30
	
l743:	
	line	31
	
l1976:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	32
	
l1978:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l1970
u2320:
	goto	l1980
	
l744:	
	goto	l1980
	line	33
	
l738:	
	line	34
	
l1980:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2330
	goto	l1984
u2330:
	line	35
	
l1982:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1984
	
l745:	
	line	36
	
l1984:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l746
	
l1986:	
	line	37
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _delay *****************
;; Defined at:
;;		line 98 in file "E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_redgreen
;;		_yellow
;; This function uses a non-reentrant model
;;
psect	text147
	file	"E:\sai em pic\pic traffic light 2\pic traffic light test31.c"
	line	98
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+btemp+1]
	line	100
	
l1940:	
;pic traffic light test31.c: 99: int k;
;pic traffic light test31.c: 100: for (k=0;k<=4000;k++);
	movlw	low(0)
	movwf	(delay@k)
	movlw	high(0)
	movwf	((delay@k))+1
	
l1942:	
	movf	(delay@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0FA1h)
	subwf	(delay@k),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l1946
u2220:
	goto	l587
	
l1944:	
	goto	l587
	
l585:	
	
l1946:	
	movlw	low(01h)
	addwf	(delay@k),f
	skipnc
	incf	(delay@k+1),f
	movlw	high(01h)
	addwf	(delay@k+1),f
	
l1948:	
	movf	(delay@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(0FA1h)
	subwf	(delay@k),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1946
u2230:
	goto	l587
	
l586:	
	line	102
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
