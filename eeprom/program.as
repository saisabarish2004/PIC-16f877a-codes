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
	FNCALL	_main,_lcdint
	FNCALL	_main,_lcddata
	FNCALL	_lcdint,_lcdcmd
	FNCALL	_lcdcmd,_delay
	FNCALL	_lcddata,_delay
	FNROOT	_main
	global	_PORTD
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTD	set	8
	global	_EEIF
_EEIF	set	108
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
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
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
	global	?_lcdint
?_lcdint:	; 0 bytes @ 0x0
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x0
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x2
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x2
	global	lcddata@h
lcddata@h:	; 1 bytes @ 0x2
	ds	1
	global	??_lcdint
??_lcdint:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	1
	global	main@h
main@h:	; 1 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcddata
;;   _lcdint->_lcdcmd
;;   _lcdcmd->_delay
;;   _lcddata->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     105
;;                                              3 COMMON     2     2      0
;;                             _lcdint
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcdint                                               0     0      0      45
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (2) _lcdcmd                                               1     1      0      45
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              1     1      0      45
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcdint
;;     _lcdcmd
;;       _delay
;;   _lcddata
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "E:\sai em pic\eeprom\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  h               1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdint
;;		_lcddata
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\eeprom\program.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l1782:	
;program.c: 9: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	10
;program.c: 10: TRISD=0;
	clrf	(136)^080h	;volatile
	line	11
;program.c: 11: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	13
;program.c: 13: EEADR=0X00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(269)^0100h	;volatile
	line	14
	
l1784:	
;program.c: 14: EEDATA='b';
	movlw	(062h)
	movwf	(268)^0100h	;volatile
	line	15
	
l1786:	
;program.c: 15: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	16
	
l1788:	
;program.c: 16: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	18
	
l1790:	
;program.c: 18: EECON2=0X55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	19
	
l1792:	
;program.c: 19: EECON2=0XAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	20
	
l1794:	
;program.c: 20: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	21
;program.c: 21: while(EEIF==0);
	goto	l567
	
l568:	
	
l567:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(108/8),(108)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l567
u2160:
	
l569:	
	line	22
;program.c: 22: EEIF==0;
	line	23
;program.c: 23: WREN=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	line	24
;program.c: 24: WR=0;
	bcf	(3169/8)^0180h,(3169)&7
	line	26
	
l1796:	
;program.c: 25: char h;
;program.c: 26: h=EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@h)
	line	28
	
l1798:	
;program.c: 28: lcdint();
	fcall	_lcdint
	goto	l1800
	line	29
;program.c: 29: while(1)
	
l570:	
	line	31
	
l1800:	
;program.c: 30: {
;program.c: 31: lcddata(h);
	movf	(main@h),w
	fcall	_lcddata
	goto	l1800
	line	33
	
l571:	
	line	29
	goto	l1800
	
l572:	
	line	34
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcdint
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _lcdint *****************
;; Defined at:
;;		line 39 in file "E:\sai em pic\eeprom\program.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"E:\sai em pic\eeprom\program.c"
	line	39
	global	__size_of_lcdint
	__size_of_lcdint	equ	__end_of_lcdint-_lcdint
	
_lcdint:	
	opt	stack 5
; Regs used in _lcdint: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l1780:	
;program.c: 40: lcdcmd(0X02);
	movlw	(02h)
	fcall	_lcdcmd
	line	42
;program.c: 42: lcdcmd(0X0C);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	43
;program.c: 43: lcdcmd(0X06);
	movlw	(06h)
	fcall	_lcdcmd
	line	44
;program.c: 44: lcdcmd(0X01);
	movlw	(01h)
	fcall	_lcdcmd
	line	45
;program.c: 45: lcdcmd(0X81);
	movlw	(081h)
	fcall	_lcdcmd
	line	46
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_lcdint
	__end_of_lcdint:
;; =============== function _lcdint ends ============

	signat	_lcdint,88
	global	_lcdcmd
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 50 in file "E:\sai em pic\eeprom\program.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcdint
;; This function uses a non-reentrant model
;;
psect	text86
	file	"E:\sai em pic\eeprom\program.c"
	line	50
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 5
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcdcmd@a stored from wreg
	movwf	(lcdcmd@a)
	line	51
	
l1766:	
;program.c: 51: PORTD=a;
	movf	(lcdcmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	52
	
l1768:	
;program.c: 52: RB0=0;
	bcf	(48/8),(48)&7
	line	53
	
l1770:	
;program.c: 53: RB1=0;
	bcf	(49/8),(49)&7
	line	54
	
l1772:	
;program.c: 54: RB2=1;
	bsf	(50/8),(50)&7
	line	55
	
l1774:	
;program.c: 55: delay();
	fcall	_delay
	line	56
	
l1776:	
;program.c: 56: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	57
	
l1778:	
;program.c: 57: delay();
	fcall	_delay
	line	58
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_lcddata
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 61 in file "E:\sai em pic\eeprom\program.c"
;; Parameters:    Size  Location     Type
;;  h               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  h               1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87
	file	"E:\sai em pic\eeprom\program.c"
	line	61
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 6
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcddata@h stored from wreg
	movwf	(lcddata@h)
	line	62
	
l1752:	
;program.c: 62: PORTD=h;
	movf	(lcddata@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	63
	
l1754:	
;program.c: 63: RB0=1;
	bsf	(48/8),(48)&7
	line	64
	
l1756:	
;program.c: 64: RB1=0;
	bcf	(49/8),(49)&7
	line	65
	
l1758:	
;program.c: 65: RB2=1;
	bsf	(50/8),(50)&7
	line	66
	
l1760:	
;program.c: 66: delay();
	fcall	_delay
	line	67
	
l1762:	
;program.c: 67: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	68
	
l1764:	
;program.c: 68: delay();
	fcall	_delay
	line	69
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_delay
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _delay *****************
;; Defined at:
;;		line 72 in file "E:\sai em pic\eeprom\program.c"
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
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text88
	file	"E:\sai em pic\eeprom\program.c"
	line	72
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+btemp+1]
	line	73
	
l956:	
;program.c: 73: for(int i=0;i<=3000;i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	
l958:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0BB9h)
	subwf	(delay@i),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l962
u10:
	goto	l587
	
l960:	
	goto	l587
	
l585:	
	
l962:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l964:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0BB9h)
	subwf	(delay@i),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l962
u20:
	goto	l587
	
l586:	
	line	74
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
