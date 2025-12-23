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
	FNCALL	_main,_adc
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcddata
	FNCALL	_lcddata,_delay
	FNCALL	_lcddata,_lcdcmd
	FNCALL	_lcdint,_lcdcmd
	FNCALL	_lcdcmd,_delay
	FNCALL	_adc,_delay
	FNROOT	_main
	global	_ADCON0
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_GODONE
_GODONE	set	250
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x2
	global	?_adc
?_adc:	; 2 bytes @ 0x2
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcdint
??_lcdint:	; 0 bytes @ 0x3
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x3
	global	lcddata@h
lcddata@h:	; 1 bytes @ 0x3
	ds	1
	global	??_adc
??_adc:	; 0 bytes @ 0x4
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
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@c
main@c:	; 2 bytes @ 0x0
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x2
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x4
	ds	2
	global	main@g
main@g:	; 2 bytes @ 0x6
	ds	2
	global	main@h
main@h:	; 1 bytes @ 0x8
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x9
	ds	1
	global	main@j
main@j:	; 1 bytes @ 0xA
	ds	1
	global	main@k
main@k:	; 1 bytes @ 0xB
	ds	1
	global	main@b
main@b:	; 2 bytes @ 0xC
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0xE
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x10
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     18      18
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_adc	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcddata->_lcdcmd
;;   _lcdint->_lcdcmd
;;   _lcdcmd->_delay
;;   _adc->_delay
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
;; (0) _main                                                19    19      0    1187
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0     18    18      0
;;                             _lcdint
;;                                _adc
;;                            ___awdiv
;;                            ___awmod
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              1     1      0     136
;;                                              3 COMMON     1     1      0
;;                              _delay
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _lcdint                                               0     0      0      68
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (2) _lcdcmd                                               1     1      0      68
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  4     2      2      46
;;                                              2 COMMON     4     2      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcdint
;;     _lcdcmd
;;       _delay
;;   _adc
;;     _delay
;;   ___awdiv
;;   ___awmod
;;   _lcddata
;;     _delay
;;     _lcdcmd
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     12      12       5       22.5%
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
;;		line 9 in file "E:\sai em pic\adclcd\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2   16[BANK0 ] int 
;;  d               2   14[BANK0 ] int 
;;  b               2   12[BANK0 ] int 
;;  g               2    6[BANK0 ] int 
;;  f               2    4[BANK0 ] int 
;;  e               2    2[BANK0 ] int 
;;  c               2    0[BANK0 ] int 
;;  k               1   11[BANK0 ] unsigned char 
;;  j               1   10[BANK0 ] unsigned char 
;;  i               1    9[BANK0 ] unsigned char 
;;  h               1    8[BANK0 ] unsigned char 
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
;;      Locals:         0      18       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      18       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdint
;;		_adc
;;		___awdiv
;;		___awmod
;;		_lcddata
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\sai em pic\adclcd\program.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l2048:	
;program.c: 10: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	11
;program.c: 11: TRISB=0;
	clrf	(134)^080h	;volatile
	line	12
	
l2050:	
;program.c: 12: TRISA=1;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	13
	
l2052:	
;program.c: 13: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	14
	
l2054:	
;program.c: 14: PORTB=0X00;
	clrf	(6)	;volatile
	line	15
	
l2056:	
;program.c: 15: ADCON0=0X81;
	movlw	(081h)
	movwf	(31)	;volatile
	line	16
	
l2058:	
;program.c: 16: ADCON1=0XCE;
	movlw	(0CEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	19
	
l2060:	
;program.c: 17: int b,c,d,e,f,g;
;program.c: 18: char h,i,j,k;
;program.c: 19: lcdint();
	fcall	_lcdint
	line	21
	
l2062:	
;program.c: 20: int a;
;program.c: 21: a=adc();
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?_adc)),w
	clrf	(main@a)
	addwf	(main@a)

	line	22
	
l2064:	
;program.c: 22: PORTD=a;
	movf	(main@a),w
	movwf	(8)	;volatile
	line	23
	
l2066:	
;program.c: 23: b=a/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@a+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@a),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@b)
	addwf	(main@b)

	line	24
	
l2068:	
;program.c: 24: c=a%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@a+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@a),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awmod)),w
	clrf	(main@c)
	addwf	(main@c)

	line	25
	
l2070:	
;program.c: 25: d=b/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@d)
	addwf	(main@d)

	line	26
	
l2072:	
;program.c: 26: e=b%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awmod)),w
	clrf	(main@e)
	addwf	(main@e)

	line	27
	
l2074:	
;program.c: 27: f=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@f)
	addwf	(main@f)

	line	28
	
l2076:	
;program.c: 28: g=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@g+1)
	addwf	(main@g+1)
	movf	(0+(?___awmod)),w
	clrf	(main@g)
	addwf	(main@g)

	line	29
	
l2078:	
;program.c: 29: h=f+(0X30);
	movf	(main@f),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@h)
	line	30
	
l2080:	
;program.c: 30: lcddata(h);
	movf	(main@h),w
	fcall	_lcddata
	line	31
	
l2082:	
;program.c: 31: i=g+(0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@g),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	32
	
l2084:	
;program.c: 32: lcddata(i);
	movf	(main@i),w
	fcall	_lcddata
	line	33
	
l2086:	
;program.c: 33: j=e+(0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@j)
	line	34
	
l2088:	
;program.c: 34: lcddata(j);
	movf	(main@j),w
	fcall	_lcddata
	line	35
	
l2090:	
;program.c: 35: k=c+(0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@k)
	line	36
	
l2092:	
;program.c: 36: lcddata(k);
	movf	(main@k),w
	fcall	_lcddata
	line	37
	
l569:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcddata
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 63 in file "E:\sai em pic\adclcd\program.c"
;; Parameters:    Size  Location     Type
;;  h               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  h               1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text179
	file	"E:\sai em pic\adclcd\program.c"
	line	63
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 5
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcddata@h stored from wreg
	movwf	(lcddata@h)
	line	64
	
l2034:	
;program.c: 64: PORTD=h;
	movf	(lcddata@h),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	65
	
l2036:	
;program.c: 65: RB0=1;
	bsf	(48/8),(48)&7
	line	66
	
l2038:	
;program.c: 66: RB1=0;
	bcf	(49/8),(49)&7
	line	67
	
l2040:	
;program.c: 67: RB2=1;
	bsf	(50/8),(50)&7
	line	68
	
l2042:	
;program.c: 68: delay();
	fcall	_delay
	line	69
	
l2044:	
;program.c: 69: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	70
	
l2046:	
;program.c: 70: lcdcmd(0X1C);
	movlw	(01Ch)
	fcall	_lcdcmd
	line	73
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdint
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function _lcdint *****************
;; Defined at:
;;		line 41 in file "E:\sai em pic\adclcd\program.c"
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
psect	text180
	file	"E:\sai em pic\adclcd\program.c"
	line	41
	global	__size_of_lcdint
	__size_of_lcdint	equ	__end_of_lcdint-_lcdint
	
_lcdint:	
	opt	stack 5
; Regs used in _lcdint: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l2032:	
;program.c: 42: lcdcmd(0X02);
	movlw	(02h)
	fcall	_lcdcmd
	line	44
;program.c: 44: lcdcmd(0X0C);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	45
;program.c: 45: lcdcmd(0X06);
	movlw	(06h)
	fcall	_lcdcmd
	line	46
;program.c: 46: lcdcmd(0X01);
	movlw	(01h)
	fcall	_lcdcmd
	line	47
;program.c: 47: lcdcmd(0X81);
	movlw	(081h)
	fcall	_lcdcmd
	line	48
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcdint
	__end_of_lcdint:
;; =============== function _lcdint ends ============

	signat	_lcdint,88
	global	_lcdcmd
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 52 in file "E:\sai em pic\adclcd\program.c"
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
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text181
	file	"E:\sai em pic\adclcd\program.c"
	line	52
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 5
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcdcmd@a stored from wreg
	movwf	(lcdcmd@a)
	line	53
	
l2018:	
;program.c: 53: PORTD=a;
	movf	(lcdcmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	54
	
l2020:	
;program.c: 54: RB0=0;
	bcf	(48/8),(48)&7
	line	55
	
l2022:	
;program.c: 55: RB1=0;
	bcf	(49/8),(49)&7
	line	56
	
l2024:	
;program.c: 56: RB2=1;
	bsf	(50/8),(50)&7
	line	57
	
l2026:	
;program.c: 57: delay();
	fcall	_delay
	line	58
	
l2028:	
;program.c: 58: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	59
	
l2030:	
;program.c: 59: delay();
	fcall	_delay
	line	60
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_adc
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _adc *****************
;; Defined at:
;;		line 77 in file "E:\sai em pic\adclcd\program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text182
	file	"E:\sai em pic\adclcd\program.c"
	line	77
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 6
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l2010:	
;program.c: 78: ;
;program.c: 79: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	80
;program.c: 80: while(GODONE);
	goto	l581
	
l582:	
	
l581:	
	btfsc	(250/8),(250)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l581
u2390:
	goto	l2012
	
l583:	
	line	81
	
l2012:	
;program.c: 81: return(ADRESH<<8)+ADRESL;
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movlw	08h
	movwf	btemp+1
u2405:
	clrc
	rlf	(??_adc+0)+0,f
	rlf	(??_adc+0)+1,f
	decfsz	btemp+1,f
	goto	u2405
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_adc+0)+0,w
	movwf	(?_adc)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_adc+0)+0,w
	movwf	1+(?_adc)
	goto	l584
	
l2014:	
	goto	l584
	line	82
	
l2016:	
;program.c: 82: delay();
	fcall	_delay
	line	83
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,90
	global	___awmod
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text183
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1974:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1976:	
	btfss	(___awmod@dividend+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l1980
u2300:
	line	10
	
l1978:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1980
	line	12
	
l806:	
	line	13
	
l1980:	
	btfss	(___awmod@divisor+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l1984
u2310:
	line	14
	
l1982:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1984
	
l807:	
	line	15
	
l1984:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l2002
u2320:
	line	16
	
l1986:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l1992
	
l810:	
	line	18
	
l1988:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	19
	
l1990:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1992
	line	20
	
l809:	
	line	17
	
l1992:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1988
u2340:
	goto	l1994
	
l811:	
	goto	l1994
	line	21
	
l812:	
	line	22
	
l1994:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2355
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1998
u2350:
	line	23
	
l1996:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1998
	
l813:	
	line	24
	
l1998:	
	movlw	01h
	
u2365:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2365
	line	25
	
l2000:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l1994
u2370:
	goto	l2002
	
l814:	
	goto	l2002
	line	26
	
l808:	
	line	27
	
l2002:	
	movf	(___awmod@sign),w
	skipz
	goto	u2380
	goto	l2006
u2380:
	line	28
	
l2004:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2006
	
l815:	
	line	29
	
l2006:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l816
	
l2008:	
	line	30
	
l816:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text184
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1936:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1938:	
	btfss	(___awdiv@divisor+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l1942
u2200:
	line	11
	
l1940:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1942
	line	13
	
l738:	
	line	14
	
l1942:	
	btfss	(___awdiv@dividend+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l739
u2210:
	line	15
	
l1944:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1946:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l739:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l1966
u2220:
	line	20
	
l1948:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1954
	
l742:	
	line	22
	
l1950:	
	movlw	01h
	
u2235:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2235
	line	23
	
l1952:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1954
	line	24
	
l741:	
	line	21
	
l1954:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1950
u2240:
	goto	l1956
	
l743:	
	goto	l1956
	line	25
	
l744:	
	line	26
	
l1956:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2255
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2265
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2265:
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1962
u2260:
	line	28
	
l1958:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1960:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1962
	line	30
	
l745:	
	line	31
	
l1962:	
	movlw	01h
	
u2275:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2275
	line	32
	
l1964:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l1956
u2280:
	goto	l1966
	
l746:	
	goto	l1966
	line	33
	
l740:	
	line	34
	
l1966:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2290
	goto	l1970
u2290:
	line	35
	
l1968:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1970
	
l747:	
	line	36
	
l1970:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l748
	
l1972:	
	line	37
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _delay *****************
;; Defined at:
;;		line 86 in file "E:\sai em pic\adclcd\program.c"
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
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text185
	file	"E:\sai em pic\adclcd\program.c"
	line	86
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg+btemp+1]
	line	87
	
l1926:	
;program.c: 87: for(int i=0;i<=3000;i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	
l1928:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(0BB9h)
	subwf	(delay@i),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1932
u2180:
	goto	l589
	
l1930:	
	goto	l589
	
l587:	
	
l1932:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l1934:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(0BB9h)
	subwf	(delay@i),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1932
u2190:
	goto	l589
	
l588:	
	line	89
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
