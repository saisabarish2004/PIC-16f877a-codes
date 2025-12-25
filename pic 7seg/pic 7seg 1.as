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
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_lcddata
	FNCALL	_main,_delay
	FNCALL	_lcddata,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	global	main@F517
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\sai em pic\pic 7seg\picled1.c"
	line	16

;initializer for main@F517
	retlw	073h
	retlw	061h
	retlw	069h
	retlw	0
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"pic 7seg 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\sai em pic\pic 7seg\picled1.c"
main@F517:
       ds      4

; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
	fcall	__pidataCOMMON+3		;fetch initializer
	movwf	__pdataCOMMON+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x0
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x0
	global	lcddata@a
lcddata@a:	; 1 bytes @ 0x0
	global	delay@k_321
delay@k_321:	; 2 bytes @ 0x0
	ds	2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x2
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	global	main@a
main@a:	; 4 bytes @ 0x2
	ds	4
	global	main@j
main@j:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 4, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      12
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
;;   _lcddata->_delay
;;   _lcdcmd->_delay
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
;; (0) _main                                                 6     6      0     150
;;                                              2 COMMON     6     6      0
;;                             _lcdcmd
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              1     1      0      30
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               1     1      0      30
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                4     4      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcdcmd
;;     _delay
;;   _lcddata
;;     _delay
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
;;DATA                 0      0       E      12        0.0%
;;ABS                  0      0       C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "E:\sai em pic\pic 7seg\picled1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    6[COMMON] int 
;;  a               4    2[COMMON] unsigned char [4]
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
;;      Locals:         6       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcdcmd
;;		_lcddata
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\pic 7seg\picled1.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l1757:	
;picled1.c: 7: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
;picled1.c: 8: TRISD=0;
	clrf	(136)^080h	;volatile
	line	9
	
l1759:	
;picled1.c: 9: lcdcmd(0X38);
	movlw	(038h)
	fcall	_lcdcmd
	line	10
	
l1761:	
;picled1.c: 10: lcdcmd(0X0C);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	11
	
l1763:	
;picled1.c: 11: lcdcmd(0X10);
	movlw	(010h)
	fcall	_lcdcmd
	line	12
	
l1765:	
;picled1.c: 12: lcdcmd(0X06);
	movlw	(06h)
	fcall	_lcdcmd
	line	13
	
l1767:	
;picled1.c: 13: lcdcmd(0X01);
	movlw	(01h)
	fcall	_lcdcmd
	line	14
	
l1769:	
;picled1.c: 14: lcdcmd(0X80);
	movlw	(080h)
	fcall	_lcdcmd
	line	16
	
l1771:	
;picled1.c: 16: char a[]={"sai"};
	movf	(main@F517+3),w
	movwf	(main@a+3)
	movf	(main@F517+2),w
	movwf	(main@a+2)
	movf	(main@F517+1),w
	movwf	(main@a+1)
	movf	(main@F517),w
	movwf	(main@a)

	line	17
	
l1773:	
;picled1.c: 17: for( int j=0;j<=4;j++)
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l1775:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(05h)
	subwf	(main@j),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1779
u2160:
	goto	l569
	
l1777:	
	goto	l569
	line	18
	
l567:	
	line	20
	
l1779:	
;picled1.c: 18: {
;picled1.c: 20: lcddata(a[j]);
	movf	(main@j),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_lcddata
	line	21
	
l1781:	
;picled1.c: 21: delay();
	fcall	_delay
	line	17
	
l1783:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1785:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(05h)
	subwf	(main@j),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1779
u2170:
	goto	l569
	
l568:	
	line	24
	
l569:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcddata
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 34 in file "E:\sai em pic\pic 7seg\picled1.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
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
psect	text79
	file	"E:\sai em pic\pic 7seg\picled1.c"
	line	34
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 6
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l1751:	
;picled1.c: 35: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	36
;picled1.c: 36: RD1=0;
	bcf	(65/8),(65)&7
	line	37
;picled1.c: 37: RD2=1;
	bsf	(66/8),(66)&7
	line	38
	
l1753:	
;picled1.c: 38: delay();
	fcall	_delay
	line	39
	
l1755:	
;picled1.c: 39: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	40
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 26 in file "E:\sai em pic\pic 7seg\picled1.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
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
psect	text80
	file	"E:\sai em pic\pic 7seg\picled1.c"
	line	26
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 6
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l1745:	
;picled1.c: 27: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	28
;picled1.c: 28: RD1=0;
	bcf	(65/8),(65)&7
	line	29
;picled1.c: 29: RD2=1;
	bsf	(66/8),(66)&7
	line	30
	
l1747:	
;picled1.c: 30: delay();
	fcall	_delay
	line	31
	
l1749:	
;picled1.c: 31: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	32
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_delay
psect	text81,local,class=CODE,delta=2
global __ptext81
__ptext81:

;; *************** function _delay *****************
;; Defined at:
;;		line 42 in file "E:\sai em pic\pic 7seg\picled1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0[COMMON] int 
;;  k               2    0        int 
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
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text81
	file	"E:\sai em pic\pic 7seg\picled1.c"
	line	42
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+btemp+1]
	line	44
	
l949:	
;picled1.c: 43: int k;
;picled1.c: 44: for( int k =0;k<=4000;k++);
	movlw	low(0)
	movwf	(delay@k_321)
	movlw	high(0)
	movwf	((delay@k_321))+1
	
l951:	
	movf	(delay@k_321+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0FA1h)
	subwf	(delay@k_321),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l955
u10:
	goto	l580
	
l953:	
	goto	l580
	
l578:	
	
l955:	
	movlw	low(01h)
	addwf	(delay@k_321),f
	skipnc
	incf	(delay@k_321+1),f
	movlw	high(01h)
	addwf	(delay@k_321+1),f
	
l957:	
	movf	(delay@k_321+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FA1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0FA1h)
	subwf	(delay@k_321),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l955
u20:
	goto	l580
	
l579:	
	line	45
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
