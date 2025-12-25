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
	FNCALL	_main,_intrupt
	FNCALL	_intrupt,_delay
	FNROOT	_main
	global	main@F514
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\sai em pic\intuput control register\intprogram.c"
	line	10

;initializer for main@F514
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
	global	_INTCON
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_INTF
_INTF	set	89
	global	_RB0
_RB0	set	48
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"intprogram.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\sai em pic\intuput control register\intprogram.c"
main@F514:
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
	global	?_intrupt
?_intrupt:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@j
delay@j:	; 2 bytes @ 0x0
	ds	2
	global	??_intrupt
??_intrupt:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 10 bytes @ 0x0
	ds	10
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     12      22
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;   _intrupt->_delay
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
;; (0) _main                                                16    16      0     184
;;                                              2 COMMON     4     4      0
;;                                              0 BANK0     12    12      0
;;                              _delay
;;                            _intrupt
;; ---------------------------------------------------------------------------------
;; (1) _intrupt                                              0     0      0      46
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;   _intrupt
;;     _delay
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
;;DATA                 0      0      1E      12        0.0%
;;ABS                  0      0      1C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      C      16       5       27.5%
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
;;		line 5 in file "E:\sai em pic\intuput control register\intprogram.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] int 
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
;;      Locals:         0      12       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      12       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_intrupt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\intuput control register\intprogram.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l1792:	
;intprogram.c: 6: TRISB=1;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	7
	
l1794:	
;intprogram.c: 7: TRISD=0;
	clrf	(136)^080h	;volatile
	line	8
	
l1796:	
;intprogram.c: 8: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	10
	
l1798:	
;intprogram.c: 10: char a[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F514)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2220:
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
	goto	u2220
	goto	l1800
	line	12
;intprogram.c: 12: while(1)
	
l565:	
	line	14
	
l1800:	
;intprogram.c: 13: {
;intprogram.c: 14: for(int i=0;i<=20;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1802:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(015h)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1806
u2230:
	goto	l1800
	
l1804:	
	goto	l1800
	line	15
	
l566:	
	line	16
	
l1806:	
;intprogram.c: 15: {
;intprogram.c: 16: PORTD=a[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	17
	
l1808:	
;intprogram.c: 17: delay();
	fcall	_delay
	line	18
	
l1810:	
;intprogram.c: 18: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1814
u2240:
	line	20
	
l1812:	
;intprogram.c: 19: {
;intprogram.c: 20: intrupt();
	fcall	_intrupt
	line	21
;intprogram.c: 21: delay();
	fcall	_delay
	goto	l1814
	line	22
	
l568:	
	line	14
	
l1814:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1816:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(015h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(015h)
	subwf	(main@i),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1806
u2250:
	goto	l1800
	
l567:	
	goto	l1800
	line	24
	
l569:	
	line	12
	goto	l1800
	
l570:	
	line	25
	
l571:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_intrupt
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _intrupt *****************
;; Defined at:
;;		line 27 in file "E:\sai em pic\intuput control register\intprogram.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"E:\sai em pic\intuput control register\intprogram.c"
	line	27
	global	__size_of_intrupt
	__size_of_intrupt	equ	__end_of_intrupt-_intrupt
	
_intrupt:	
	opt	stack 6
; Regs used in _intrupt: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l1786:	
;intprogram.c: 28: INTCON=0X90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	29
;intprogram.c: 29: PORTD=0X039;
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l1788:	
;intprogram.c: 30: delay();
	fcall	_delay
	line	31
	
l1790:	
;intprogram.c: 31: INTF=0;
	bcf	(89/8),(89)&7
	line	32
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_intrupt
	__end_of_intrupt:
;; =============== function _intrupt ends ============

	signat	_intrupt,88
	global	_delay
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _delay *****************
;; Defined at:
;;		line 34 in file "E:\sai em pic\intuput control register\intprogram.c"
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
;;		_intrupt
;; This function uses a non-reentrant model
;;
psect	text98
	file	"E:\sai em pic\intuput control register\intprogram.c"
	line	34
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+btemp+1]
	line	35
	
l1776:	
;intprogram.c: 35: for(int j=0;j<=5000;j++);
	movlw	low(0)
	movwf	(delay@j)
	movlw	high(0)
	movwf	((delay@j))+1
	
l1778:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01389h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(01389h)
	subwf	(delay@j),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1782
u2200:
	goto	l579
	
l1780:	
	goto	l579
	
l577:	
	
l1782:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l1784:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01389h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(01389h)
	subwf	(delay@j),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1782
u2210:
	goto	l579
	
l578:	
	line	36
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
