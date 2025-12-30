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
	FNCALL	_main,_lcdcmd
	FNCALL	_lcdint,_lcdcmd
	FNCALL	_lcdcmd,_delay
	FNCALL	_lcddata,_delay
	FNROOT	_main
	global	main@F518
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	10

;initializer for main@F518
	retlw	073h
	retlw	061h
	retlw	069h
	retlw	020h
	retlw	073h
	retlw	061h
	retlw	062h
	retlw	061h
	retlw	072h
	retlw	069h
	retlw	073h
	retlw	068h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"lcd 4bit test 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
main@F518:
       ds      76

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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+76)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
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
	global	delay@k_327
delay@k_327:	; 2 bytes @ 0x0
	ds	2
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x2
	ds	1
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x3
	global	lcddata@b
lcddata@b:	; 1 bytes @ 0x3
	ds	1
	global	??_lcdint
??_lcdint:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 76 bytes @ 0x0
	ds	76
	global	main@j
main@j:	; 2 bytes @ 0x4C
	ds	2
	global	main@j_319
main@j_319:	; 2 bytes @ 0x4E
	ds	2
;;Data sizes: Strings 0, constant 0, data 76, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     80      80
;; BANK1           80      0      76
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcddata
;;   _main->_lcdcmd
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                84    84      0     453
;;                                              4 COMMON     4     4      0
;;                                              0 BANK0     80    80      0
;;                             _lcdint
;;                            _lcddata
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _lcdint                                               0     0      0      90
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               2     2      0      90
;;                                              2 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              2     2      0      90
;;                                              2 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                4     4      0      46
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
;;   _lcdcmd
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
;;BANK1               50      0      4C       7       95.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      A7      12        0.0%
;;ABS                  0      0      A4       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   78[BANK0 ] int 
;;  j               2   76[BANK0 ] int 
;;  a              76    0[BANK0 ] unsigned char [76]
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
;;      Locals:         0      80       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      80       0       0       0
;;Total ram usage:       84 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdint
;;		_lcddata
;;		_lcdcmd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	8
	
l1888:	
;pic lcd 4bit test2.c: 8: TRISC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	9
;pic lcd 4bit test2.c: 9: TRISD=0;
	clrf	(136)^080h	;volatile
	line	10
	
l1890:	
;pic lcd 4bit test2.c: 10: char a[76]={"sai sabarish"};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F518)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	76
	movwf	((??_main+0)+0+2)
u2270:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2270
	line	11
	
l1892:	
;pic lcd 4bit test2.c: 11: lcdint();
	fcall	_lcdint
	line	13
	
l1894:	
;pic lcd 4bit test2.c: 13: for( int j=0;j<=11;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l1896:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(0Ch)
	subwf	(main@j),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1900
u2280:
	goto	l1906
	
l1898:	
	goto	l1906
	line	14
	
l569:	
	line	15
	
l1900:	
;pic lcd 4bit test2.c: 14: {
;pic lcd 4bit test2.c: 15: lcddata(a[j]);;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcddata
	line	13
	
l1902:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1904:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ch)
	subwf	(main@j),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1900
u2290:
	goto	l1906
	
l570:	
	line	17
	
l1906:	
;pic lcd 4bit test2.c: 16: }
;pic lcd 4bit test2.c: 17: lcdcmd (0XC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	18
	
l1908:	
;pic lcd 4bit test2.c: 18: for( int j=0;j<=11;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@j_319)
	movlw	high(0)
	movwf	((main@j_319))+1
	
l1910:	
	movf	(main@j_319+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(0Ch)
	subwf	(main@j_319),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1914
u2300:
	goto	l573
	
l1912:	
	goto	l573
	line	19
	
l571:	
	line	20
	
l1914:	
;pic lcd 4bit test2.c: 19: {
;pic lcd 4bit test2.c: 20: lcdcmd(0X18);
	movlw	(018h)
	fcall	_lcdcmd
	line	21
	
l1916:	
;pic lcd 4bit test2.c: 21: lcddata(a[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j_319),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcddata
	line	18
	
l1918:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j_319),f
	skipnc
	incf	(main@j_319+1),f
	movlw	high(01h)
	addwf	(main@j_319+1),f
	
l1920:	
	movf	(main@j_319+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(0Ch)
	subwf	(main@j_319),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1914
u2310:
	goto	l573
	
l572:	
	line	24
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcdint
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _lcdint *****************
;; Defined at:
;;		line 26 in file "E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
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
psect	text133
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	26
	global	__size_of_lcdint
	__size_of_lcdint	equ	__end_of_lcdint-_lcdint
	
_lcdint:	
	opt	stack 5
; Regs used in _lcdint: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l1886:	
;pic lcd 4bit test2.c: 27: lcdcmd(0X02);
	movlw	(02h)
	fcall	_lcdcmd
	line	28
;pic lcd 4bit test2.c: 28: lcdcmd(0X28);
	movlw	(028h)
	fcall	_lcdcmd
	line	30
;pic lcd 4bit test2.c: 30: lcdcmd(0X0C);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	31
;pic lcd 4bit test2.c: 31: lcdcmd(0X06);
	movlw	(06h)
	fcall	_lcdcmd
	line	32
;pic lcd 4bit test2.c: 32: lcdcmd(0X10);
	movlw	(010h)
	fcall	_lcdcmd
	line	33
;pic lcd 4bit test2.c: 33: lcdcmd(0X01);
	movlw	(01h)
	fcall	_lcdcmd
	line	34
;pic lcd 4bit test2.c: 34: lcdcmd(0X80);
	movlw	(080h)
	fcall	_lcdcmd
	line	35
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_lcdint
	__end_of_lcdint:
;; =============== function _lcdint ends ============

	signat	_lcdint,88
	global	_lcdcmd
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 37 in file "E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcdint
;; This function uses a non-reentrant model
;;
psect	text134
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	37
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 6
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcdcmd@a stored from wreg
	movwf	(lcdcmd@a)
	line	38
	
l1864:	
;pic lcd 4bit test2.c: 38: PORTD=(PORTD & 0X0F)|(a&0XF0);
	movlw	(0F0h)
	andwf	(lcdcmd@a),w
	movwf	(??_lcdcmd+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcdcmd+0)+0,w
	movwf	(8)	;volatile
	line	39
	
l1866:	
;pic lcd 4bit test2.c: 39: RC0=0;
	bcf	(56/8),(56)&7
	line	40
	
l1868:	
;pic lcd 4bit test2.c: 40: RC1=0;
	bcf	(57/8),(57)&7
	line	41
	
l1870:	
;pic lcd 4bit test2.c: 41: RC2=1;
	bsf	(58/8),(58)&7
	line	42
	
l1872:	
;pic lcd 4bit test2.c: 42: delay();
	fcall	_delay
	line	43
	
l1874:	
;pic lcd 4bit test2.c: 43: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	44
	
l1876:	
;pic lcd 4bit test2.c: 44: PORTD=((PORTD & 0X0F)|(a&0X0F)<<4);
	movf	(lcdcmd@a),w
	andlw	0Fh
	movwf	(??_lcdcmd+0)+0
	movlw	04h
u2265:
	clrc
	rlf	(??_lcdcmd+0)+0,f
	addlw	-1
	skipz
	goto	u2265
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcdcmd+0)+0,w
	movwf	(8)	;volatile
	line	45
	
l1878:	
;pic lcd 4bit test2.c: 45: RC0=0;
	bcf	(56/8),(56)&7
	line	46
	
l1880:	
;pic lcd 4bit test2.c: 46: RC1=0;
	bcf	(57/8),(57)&7
	line	47
	
l1882:	
;pic lcd 4bit test2.c: 47: RC2=1;
	bsf	(58/8),(58)&7
	line	48
;pic lcd 4bit test2.c: 48: delay();
	fcall	_delay
	line	49
	
l1884:	
;pic lcd 4bit test2.c: 49: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	50
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_lcddata
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 52 in file "E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    3[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text135
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	52
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 6
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcddata@b stored from wreg
	movwf	(lcddata@b)
	line	53
	
l1842:	
;pic lcd 4bit test2.c: 53: PORTD=(PORTD & 0X0F)|(b&0XF0);
	movlw	(0F0h)
	andwf	(lcddata@b),w
	movwf	(??_lcddata+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcddata+0)+0,w
	movwf	(8)	;volatile
	line	54
	
l1844:	
;pic lcd 4bit test2.c: 54: RC0=1;
	bsf	(56/8),(56)&7
	line	55
	
l1846:	
;pic lcd 4bit test2.c: 55: RC1=0;
	bcf	(57/8),(57)&7
	line	56
	
l1848:	
;pic lcd 4bit test2.c: 56: RC2=1;
	bsf	(58/8),(58)&7
	line	57
	
l1850:	
;pic lcd 4bit test2.c: 57: delay();
	fcall	_delay
	line	58
	
l1852:	
;pic lcd 4bit test2.c: 58: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	59
	
l1854:	
;pic lcd 4bit test2.c: 59: PORTD=((PORTD & 0X0F)|(b&0X0F)<<4);
	movf	(lcddata@b),w
	andlw	0Fh
	movwf	(??_lcddata+0)+0
	movlw	04h
u2255:
	clrc
	rlf	(??_lcddata+0)+0,f
	addlw	-1
	skipz
	goto	u2255
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcddata+0)+0,w
	movwf	(8)	;volatile
	line	60
	
l1856:	
;pic lcd 4bit test2.c: 60: RC0=1;
	bsf	(56/8),(56)&7
	line	61
	
l1858:	
;pic lcd 4bit test2.c: 61: RC1=0;
	bcf	(57/8),(57)&7
	line	62
	
l1860:	
;pic lcd 4bit test2.c: 62: RC2=1;
	bsf	(58/8),(58)&7
	line	63
;pic lcd 4bit test2.c: 63: delay();
	fcall	_delay
	line	64
	
l1862:	
;pic lcd 4bit test2.c: 64: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	65
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_delay
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _delay *****************
;; Defined at:
;;		line 67 in file "E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
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
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text136
	file	"E:\sai em pic\pic lcd 4bit\pic lcd 4bit test2.c"
	line	67
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+btemp+1]
	line	69
	
l1832:	
;pic lcd 4bit test2.c: 68: int k;
;pic lcd 4bit test2.c: 69: for( int k =0;k<=1000;k++);
	movlw	low(0)
	movwf	(delay@k_327)
	movlw	high(0)
	movwf	((delay@k_327))+1
	
l1834:	
	movf	(delay@k_327+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(03E9h)
	subwf	(delay@k_327),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1838
u2230:
	goto	l587
	
l1836:	
	goto	l587
	
l585:	
	
l1838:	
	movlw	low(01h)
	addwf	(delay@k_327),f
	skipnc
	incf	(delay@k_327+1),f
	movlw	high(01h)
	addwf	(delay@k_327+1),f
	
l1840:	
	movf	(delay@k_327+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(03E9h)
	subwf	(delay@k_327),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1838
u2240:
	goto	l587
	
l586:	
	line	70
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
