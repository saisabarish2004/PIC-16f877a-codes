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
	FNROOT	_main
	global	main@F513
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
	line	9

;initializer for main@F513
	retlw	08h
	retlw	0Ch
	retlw	04h
	retlw	06h
	retlw	02h
	retlw	03h
	retlw	01h
	retlw	09h
	retlw	0
	retlw	0
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"pic stepper test 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
main@F513:
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
	movlw low(__pdataBANK0+10)
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@j
delay@j:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 10 bytes @ 0x0
	ds	10
	global	main@j
main@j:	; 2 bytes @ 0xA
	ds	2
	global	main@j_307
main@j_307:	; 2 bytes @ 0xC
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0xE
	ds	2
	global	main@i_306
main@i_306:	; 2 bytes @ 0x10
	ds	2
	global	main@i_308
main@i_308:	; 2 bytes @ 0x12
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     20      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                24    24      0     368
;;                                              2 COMMON     4     4      0
;;                                              0 BANK0     20    20      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
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
;;DATA                 0      0      25      12        0.0%
;;ABS                  0      0      24       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     14      1E       5       37.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   18[BANK0 ] int 
;;  i               2   16[BANK0 ] int 
;;  i               2   14[BANK0 ] int 
;;  j               2   12[BANK0 ] int 
;;  j               2   10[BANK0 ] int 
;;  a              10    0[BANK0 ] unsigned char [10]
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
;;      Locals:         0      20       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      20       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	5
	
l1827:	
;stepper test 1.c: 5: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	6
	
l1829:	
;stepper test 1.c: 6: TRISB=1;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	7
	
l1831:	
;stepper test 1.c: 7: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	8
	
l1833:	
;stepper test 1.c: 8: PORTB=0X00;
	clrf	(6)	;volatile
	line	9
	
l1835:	
;stepper test 1.c: 9: char a[10]={0X08,0X0C,0X04,0X06,0X02,0X03,0X01,0X09};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F513)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2280:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2280
	line	10
	
l1837:	
;stepper test 1.c: 10: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1853
u2290:
	line	13
	
l1839:	
;stepper test 1.c: 11: {
;stepper test 1.c: 13: for(int i=0;i<=8;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1841:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(09h)
	subwf	(main@i),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1845
u2300:
	goto	l1855
	
l1843:	
	goto	l1855
	line	14
	
l564:	
	line	15
	
l1845:	
;stepper test 1.c: 14: {
;stepper test 1.c: 15: PORTD= a[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	17
	
l1847:	
;stepper test 1.c: 17: delay();
	fcall	_delay
	line	13
	
l1849:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1851:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(09h)
	subwf	(main@i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1845
u2310:
	goto	l1855
	
l565:	
	line	19
;stepper test 1.c: 18: }
;stepper test 1.c: 19: }
	goto	l1855
	line	20
	
l563:	
	line	22
	
l1853:	
;stepper test 1.c: 20: else
;stepper test 1.c: 21: {
;stepper test 1.c: 22: PORTD= 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l1855
	line	23
	
l566:	
	line	26
	
l1855:	
;stepper test 1.c: 23: }
;stepper test 1.c: 26: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1875
u2320:
	line	28
	
l1857:	
;stepper test 1.c: 27: {
;stepper test 1.c: 28: int j=1;
	movlw	low(01h)
	movwf	(main@j)
	movlw	high(01h)
	movwf	((main@j))+1
	line	29
	
l1859:	
;stepper test 1.c: 29: for(int i=0+j;i<=8;i++)
	movf	(main@j+1),w
	clrf	(main@i_306+1)
	addwf	(main@i_306+1)
	movf	(main@j),w
	clrf	(main@i_306)
	addwf	(main@i_306)

	
l1861:	
	movf	(main@i_306+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(09h)
	subwf	(main@i_306),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1865
u2330:
	goto	l1877
	
l1863:	
	goto	l1877
	line	30
	
l568:	
	line	31
	
l1865:	
;stepper test 1.c: 30: {
;stepper test 1.c: 31: PORTD= a[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_306),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	32
	
l1867:	
;stepper test 1.c: 32: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	33
	
l1869:	
;stepper test 1.c: 33: delay();
	fcall	_delay
	line	29
	
l1871:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_306),f
	skipnc
	incf	(main@i_306+1),f
	movlw	high(01h)
	addwf	(main@i_306+1),f
	
l1873:	
	movf	(main@i_306+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(09h)
	subwf	(main@i_306),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1865
u2340:
	goto	l1877
	
l569:	
	line	35
;stepper test 1.c: 34: }
;stepper test 1.c: 35: }
	goto	l1877
	line	36
	
l567:	
	line	38
	
l1875:	
;stepper test 1.c: 36: else
;stepper test 1.c: 37: {
;stepper test 1.c: 38: PORTD= 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l1877
	line	39
	
l570:	
	line	47
	
l1877:	
;stepper test 1.c: 39: }
;stepper test 1.c: 47: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1897
u2350:
	line	49
	
l1879:	
;stepper test 1.c: 48: {
;stepper test 1.c: 49: int j=0;
	movlw	low(0)
	movwf	(main@j_307)
	movlw	high(0)
	movwf	((main@j_307))+1
	line	50
	
l1881:	
;stepper test 1.c: 50: for(int i=0+j;i<=8;i++)
	movf	(main@j_307+1),w
	clrf	(main@i_308+1)
	addwf	(main@i_308+1)
	movf	(main@j_307),w
	clrf	(main@i_308)
	addwf	(main@i_308)

	
l1883:	
	movf	(main@i_308+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(09h)
	subwf	(main@i_308),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l1887
u2360:
	goto	l575
	
l1885:	
	goto	l575
	line	51
	
l572:	
	line	52
	
l1887:	
;stepper test 1.c: 51: {
;stepper test 1.c: 52: PORTD= a[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_308),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	53
	
l1889:	
;stepper test 1.c: 53: j++;
	movlw	low(01h)
	addwf	(main@j_307),f
	skipnc
	incf	(main@j_307+1),f
	movlw	high(01h)
	addwf	(main@j_307+1),f
	line	54
	
l1891:	
;stepper test 1.c: 54: delay();
	fcall	_delay
	line	50
	
l1893:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_308),f
	skipnc
	incf	(main@i_308+1),f
	movlw	high(01h)
	addwf	(main@i_308+1),f
	
l1895:	
	movf	(main@i_308+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(09h)
	subwf	(main@i_308),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l1887
u2370:
	goto	l575
	
l573:	
	line	56
;stepper test 1.c: 55: }
;stepper test 1.c: 56: }
	goto	l575
	line	57
	
l571:	
	line	59
	
l1897:	
;stepper test 1.c: 57: else
;stepper test 1.c: 58: {
;stepper test 1.c: 59: PORTD= 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l575
	line	60
	
l574:	
	line	61
	
l575:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _delay *****************
;; Defined at:
;;		line 64 in file "E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    0[COMMON] int 
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
;; This function uses a non-reentrant model
;;
psect	text73
	file	"E:\sai em pic\pic stepper motor\stepper test\stepper test 1.c"
	line	64
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+btemp+1]
	line	65
	
l1817:	
;stepper test 1.c: 65: for(int j=0;j<=20000;j++);
	movlw	low(0)
	movwf	(delay@j)
	movlw	high(0)
	movwf	((delay@j))+1
	
l1819:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(04E21h)
	subwf	(delay@j),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1823
u2260:
	goto	l580
	
l1821:	
	goto	l580
	
l578:	
	
l1823:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l1825:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(04E21h)
	subwf	(delay@j),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1823
u2270:
	goto	l580
	
l579:	
	line	66
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
