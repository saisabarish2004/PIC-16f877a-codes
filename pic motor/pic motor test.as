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
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"pic motor test.as"
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      30
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      30
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
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 8 in file "E:\sai em pic\pic motor\pic motor test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\pic motor\pic motor test1.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l1739:	
;pic motor test1.c: 9: TRISB=1;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	10
	
l1741:	
;pic motor test1.c: 10: TRISD=0;
	clrf	(136)^080h	;volatile
	line	11
	
l1743:	
;pic motor test1.c: 11: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	12
	
l1745:	
;pic motor test1.c: 12: PORTB=0X00;
	clrf	(6)	;volatile
	line	16
	
l1747:	
;pic motor test1.c: 16: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l561
u2160:
	line	18
	
l1749:	
;pic motor test1.c: 17: {
;pic motor test1.c: 18: RD0=1;RD1=0;
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	line	19
	
l1751:	
;pic motor test1.c: 19: delay();
	fcall	_delay
	line	20
;pic motor test1.c: 20: }
	goto	l1755
	line	21
	
l561:	
	line	23
;pic motor test1.c: 21: else
;pic motor test1.c: 22: {
;pic motor test1.c: 23: RD0=0;RD1=0;
	bcf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	line	24
	
l1753:	
;pic motor test1.c: 24: delay();
	fcall	_delay
	goto	l1755
	line	25
	
l562:	
	line	29
	
l1755:	
;pic motor test1.c: 25: }
;pic motor test1.c: 29: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l563
u2170:
	line	31
	
l1757:	
;pic motor test1.c: 30: {
;pic motor test1.c: 31: RD2=1;RD3=0;
	bsf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	32
	
l1759:	
;pic motor test1.c: 32: delay();
	fcall	_delay
	line	33
;pic motor test1.c: 33: }
	goto	l1763
	line	34
	
l563:	
	line	36
;pic motor test1.c: 34: else
;pic motor test1.c: 35: {
;pic motor test1.c: 36: RD2=0;RD3=0;
	bcf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	37
	
l1761:	
;pic motor test1.c: 37: delay();
	fcall	_delay
	goto	l1763
	line	38
	
l564:	
	line	45
	
l1763:	
;pic motor test1.c: 38: }
;pic motor test1.c: 45: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l565
u2180:
	line	47
	
l1765:	
;pic motor test1.c: 46: {
;pic motor test1.c: 47: RD0=0;RD1=1;
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	line	48
	
l1767:	
;pic motor test1.c: 48: delay();
	fcall	_delay
	line	49
;pic motor test1.c: 49: }
	goto	l1771
	line	50
	
l565:	
	line	52
;pic motor test1.c: 50: else
;pic motor test1.c: 51: {
;pic motor test1.c: 52: RD0=0;RD1=0;
	bcf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	line	53
	
l1769:	
;pic motor test1.c: 53: delay();
	fcall	_delay
	goto	l1771
	line	54
	
l566:	
	line	60
	
l1771:	
;pic motor test1.c: 54: }
;pic motor test1.c: 60: if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l567
u2190:
	line	62
	
l1773:	
;pic motor test1.c: 61: {
;pic motor test1.c: 62: RD2=0;RD3=1;
	bcf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	63
	
l1775:	
;pic motor test1.c: 63: delay();
	fcall	_delay
	line	64
;pic motor test1.c: 64: }
	goto	l569
	line	65
	
l567:	
	line	67
;pic motor test1.c: 65: else
;pic motor test1.c: 66: {
;pic motor test1.c: 67: RD2=0;RD3=0;
	bcf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	68
	
l1777:	
;pic motor test1.c: 68: delay();
	fcall	_delay
	goto	l569
	line	69
	
l568:	
	line	75
	
l569:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _delay *****************
;; Defined at:
;;		line 77 in file "E:\sai em pic\pic motor\pic motor test1.c"
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
psect	text55
	file	"E:\sai em pic\pic motor\pic motor test1.c"
	line	77
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+btemp+1]
	line	78
	
l943:	
;pic motor test1.c: 78: for( int i=0;i<=4000;i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	
l945:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0FA1h)
	subwf	(delay@i),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l949
u10:
	goto	l574
	
l947:	
	goto	l574
	
l572:	
	
l949:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l951:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0FA1h)
	subwf	(delay@i),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l949
u20:
	goto	l574
	
l573:	
	line	79
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
