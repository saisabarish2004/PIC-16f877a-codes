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
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
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
	file	"program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@ir1
main@ir1:	; 2 bytes @ 0x0
	ds	2
	global	main@ir2
main@ir2:	; 2 bytes @ 0x2
	ds	2
	global	main@led1
main@led1:	; 2 bytes @ 0x4
	ds	2
	global	main@led2
main@led2:	; 2 bytes @ 0x6
	ds	2
	global	main@prl
main@prl:	; 2 bytes @ 0x8
	ds	2
	global	main@mrl
main@mrl:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     12      12
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                14    14      0     165
;;                                              2 COMMON     2     2      0
;;                                              0 BANK0     12    12      0
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
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      C       C       5       15.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "E:\sai em pic\trafficwithirsenor\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mrl             2   10[BANK0 ] int 
;;  prl             2    8[BANK0 ] int 
;;  led2            2    6[BANK0 ] int 
;;  led1            2    4[BANK0 ] int 
;;  ir2             2    2[BANK0 ] int 
;;  ir1             2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      12       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\trafficwithirsenor\program.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	5
	
l1778:	
;program.c: 5: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	6
	
l1780:	
;program.c: 6: TRISB=1;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	7
	
l1782:	
;program.c: 7: TRISC=0;
	clrf	(135)^080h	;volatile
	line	8
	
l1784:	
;program.c: 8: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	9
	
l1786:	
;program.c: 9: PORTC=0X00;
	clrf	(7)	;volatile
	line	11
;program.c: 11: int ir1=0,ir2=0,led1=0,led2=0,prl,mrl;
	movlw	low(0)
	movwf	(main@ir1)
	movlw	high(0)
	movwf	((main@ir1))+1
	movlw	low(0)
	movwf	(main@ir2)
	movlw	high(0)
	movwf	((main@ir2))+1
	movlw	low(0)
	movwf	(main@led1)
	movlw	high(0)
	movwf	((main@led1))+1
	movlw	low(0)
	movwf	(main@led2)
	movlw	high(0)
	movwf	((main@led2))+1
	goto	l1788
	line	12
;program.c: 13: {
;program.c: 15: if(RB4<5)
	
l561:	
	line	17
	
l1788:	
;program.c: 16: {
;program.c: 17: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	18
	
l1790:	
;program.c: 18: mrl=RB2;
	clrc
	btfsc	(50/8),(50)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@mrl)
	movf	1+(??_main+0)+0,w
	movwf	(main@mrl+1)
	line	19
	
l1792:	
;program.c: 19: mrl++;
	movlw	low(01h)
	addwf	(main@mrl),f
	skipnc
	incf	(main@mrl+1),f
	movlw	high(01h)
	addwf	(main@mrl+1),f
	line	20
	
l1794:	
;program.c: 20: RB4=mrl;
	btfsc	(main@mrl),0
	goto	u2221
	goto	u2220
	
u2221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u2234
u2220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u2234:
	line	21
	
l1796:	
;program.c: 21: delay();
	fcall	_delay
	line	22
;program.c: 22: }
	goto	l1788
	line	24
;program.c: 24: else if(RB3<5)
	
l562:	
	line	26
	
l1798:	
;program.c: 25: {
;program.c: 26: mrl=prl;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@prl+1),w
	clrf	(main@mrl+1)
	addwf	(main@mrl+1)
	movf	(main@prl),w
	clrf	(main@mrl)
	addwf	(main@mrl)

	line	27
;program.c: 27: prl=prl-mrl;
	comf	(main@mrl),w
	movwf	(??_main+0)+0
	comf	(main@mrl+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(main@prl),w
	addwf	0+(??_main+0)+0,w
	movwf	(main@prl)
	movf	(main@prl+1),w
	skipnc
	incf	(main@prl+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(main@prl)
	line	28
	
l1800:	
;program.c: 28: mrl++;
	movlw	low(01h)
	addwf	(main@mrl),f
	skipnc
	incf	(main@mrl+1),f
	movlw	high(01h)
	addwf	(main@mrl+1),f
	line	29
	
l1802:	
;program.c: 29: RB2=mrl;
	btfsc	(main@mrl),0
	goto	u2241
	goto	u2240
	
u2241:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u2254
u2240:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u2254:
	line	31
;program.c: 31: }
	goto	l1788
	line	32
	
l564:	
;program.c: 32: else if(RB2==5)
	goto	l1788
	line	34
	
l1804:	
;program.c: 33: {
;program.c: 34: RD1=1;
	bsf	(65/8),(65)&7
	line	35
;program.c: 35: }
	goto	l1788
	line	36
	
l566:	
	goto	l1788
	line	38
;program.c: 36: else
;program.c: 37: {
	
l567:	
	goto	l1788
	
l565:	
	goto	l1788
	
l563:	
	goto	l1788
	line	39
	
l568:	
	line	12
	goto	l1788
	
l569:	
	line	40
	
l570:	
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
;;		line 42 in file "E:\sai em pic\trafficwithirsenor\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
	file	"E:\sai em pic\trafficwithirsenor\program.c"
	line	42
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+btemp+1]
	line	43
	
l1768:	
;program.c: 43: for(int i=0;i<3000;i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	
l1770:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(0BB8h)
	subwf	(delay@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1774
u2200:
	goto	l575
	
l1772:	
	goto	l575
	
l573:	
	
l1774:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l1776:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(0BB8h)
	subwf	(delay@i),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1774
u2210:
	goto	l575
	
l574:	
	line	44
	
l575:	
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
