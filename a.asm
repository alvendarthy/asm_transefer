;This code is de'assemblered by HOLYCHIP shanghai Ltd.. 
;Soft version 1.02
;Thanks for using, find any bug, please report it to HC!

          #include "HC18P013.inc"
          list p = 18P013
;********************************************
;               RAM  START                  
;********************************************
          DATA					  ;RAM define here!!
ARG_00    EQU       0X10          ;          
ARG_01    EQU       0X11          ;          
ARG_02    EQU       0X12          ;          
ARG_03    EQU       0X13          ;          
ARG_04    EQU       0X14          ;          
ARG_05    EQU       0X15          ;          
ARG_06    EQU       0X16          ;          
ARG_07    EQU       0X17          ;          
ARG_08    EQU       0X18          ;          
ARG_09    EQU       0X19          ;          
ARG_0A    EQU       0X1a          ;          
ARG_0B    EQU       0X1b          ;          
ARG_0C    EQU       0X1c          ;NOT USE   
ARG_0D    EQU       0X1d          ;NOT USE   
ARG_0E    EQU       0X1e          ;NOT USE   
ARG_0F    EQU       0X1f          ;NOT USE   
ARG_10    EQU       0X20          ;          
ARG_11    EQU       0X21          ;          
ARG_12    EQU       0X22          ;          
ARG_13    EQU       0X23          ;          
ARG_14    EQU       0X24          ;          
ARG_15    EQU       0X25          ;          
ARG_16    EQU       0X26          ;          
ARG_17    EQU       0X27          ;          
ARG_18    EQU       0X28          ;          
ARG_19    EQU       0X29          ;          
ARG_1A    EQU       0X2a          ;          
ARG_1B    EQU       0X2b          ;          
ARG_1C    EQU       0X2c          ;          
ARG_1D    EQU       0X2d          ;          
ARG_1E    EQU       0X2e          ;          
ARG_1F    EQU       0X2f          ;          
ARG_20    EQU       0X30          ;NOT USE   
ARG_21    EQU       0X31          ;NOT USE   
ARG_22    EQU       0X32          ;NOT USE   
ARG_23    EQU       0X33          ;NOT USE   
ARG_24    EQU       0X34          ;NOT USE   
ARG_25    EQU       0X35          ;NOT USE   
ARG_26    EQU       0X36          ;NOT USE   
ARG_27    EQU       0X37          ;NOT USE   
ARG_28    EQU       0X38          ;NOT USE   
ARG_29    EQU       0X39          ;NOT USE   
ARG_2A    EQU       0X3a          ;NOT USE   
ARG_2B    EQU       0X3b          ;NOT USE   
ARG_2C    EQU       0X3c          ;NOT USE   
ARG_2D    EQU       0X3d          ;NOT USE   
ARG_2E    EQU       0X3e          ;NOT USE   
ARG_2F    EQU       0X3f          ;NOT USE   



;********************************************
;               CODE START                  
;********************************************

		        ORG	0	
          GOTO      LABEL_0             ; Line 0--------------CALL or GOTO

LABEL_0:                                ;*A New LABEL created here!*
          MOVLW     0x80                ; Line 0X1
          MOVWF     PCON                ; Line 0X2
          MOVLW     0x43                ; Line 0X3
          MOVWF     OPTION              ; Line 0X4---------change OPTION
          MOVLW     0x1                 ; Line 0X5
          MOVWF     INTECON             ; Line 0X6---------change INTECON
          MOVLW     0xe                 ; Line 0X7
                                        ;*ISR    here!*
ISR:
          MOVWF     TRISA               ; Line 0X8
          MOVLW     0xdf                ; Line 0X9
          MOVWF     TRISB               ; Line 0XA
          MOVLW     0xbf                ; Line 0XB
          MOVWF     PHCON               ; Line 0XC
          CLRF      PORTA               ; Line 0XD
          CLRF      PORTB               ; Line 0XE
          CLRF      ARG_18              ; Line 0XF
          MOVLW     0xfa                ; Line 0X10
          MOVWF     ARG_16              ; Line 0X11
          MOVLW     0x2                 ; Line 0X12
          MOVWF     ARG_17              ; Line 0X13
          MOVLW     0x11                ; Line 0X14
          MOVWF     ARG_1D              ; Line 0X15
          BSF       ARG_18    ,5        ; Line 0X16
          BCF       ARG_19    ,2        ; Line 0X17
          MOVLW     0x3                 ; Line 0X18
          MOVWF     ARG_14              ; Line 0X19
          CLRF      ARG_0B              ; Line 0X1A
          CLRF      ARG_0A              ; Line 0X1B

LABEL_1:                                ;*A New LABEL created here!*
          CLRWDT                        ; Line 0X1C
          CALL      LABEL_2             ; Line 0X1D--------------CALL or GOTO
          CALL      LABEL_27            ; Line 0X1E--------------CALL or GOTO
          GOTO      LABEL_1             ; Line 0X1F--------------CALL or GOTO

LABEL_2:                                ;*A New LABEL created here!*
          BTFSS     PORTB     ,6        ; Line 0X20
          GOTO      LABEL_3             ; Line 0X21--------------CALL or GOTO
          MOVF      ARG_14    ,W        ; Line 0X22
          SUBLW     0x1                 ; Line 0X23
          BTFSS     STATUS    ,Z        ; Line 0X24
          GOTO      LABEL_3             ; Line 0X25--------------CALL or GOTO
          CALL      LABEL_54            ; Line 0X26--------------CALL or GOTO
          DECFSZ    ARG_1E    ,F        ; Line 0X27
          GOTO      LABEL_3             ; Line 0X28--------------CALL or GOTO
          MOVLW     0x3                 ; Line 0X29
          MOVWF     ARG_14              ; Line 0X2A
          RETURN                        ; Line 0X2B

LABEL_3:                                ;*A New LABEL created here!*
          BTFSS     PORTA     ,3        ; Line 0X2C
          GOTO      LABEL_17            ; Line 0X2D--------------CALL or GOTO
          MOVF      ARG_1A    ,F        ; Line 0X2E
          BTFSC     STATUS    ,Z        ; Line 0X2F
          GOTO      LABEL_4             ; Line 0X30--------------CALL or GOTO
          CALL      LABEL_56            ; Line 0X31--------------CALL or GOTO
          DECF      ARG_1A    ,F        ; Line 0X32
          RETURN                        ; Line 0X33

LABEL_4:                                ;*A New LABEL created here!*
          BTFSS     PORTB     ,6        ; Line 0X34
          GOTO      LABEL_7             ; Line 0X35--------------CALL or GOTO
          BCF       ARG_18    ,1        ; Line 0X36
          MOVF      ARG_14    ,F        ; Line 0X37
          BTFSC     STATUS    ,Z        ; Line 0X38
          GOTO      LABEL_8             ; Line 0X39--------------CALL or GOTO
          MOVF      ARG_14    ,W        ; Line 0X3A
          SUBLW     0x3                 ; Line 0X3B
          BTFSC     STATUS    ,Z        ; Line 0X3C
          CLRF      ARG_14              ; Line 0X3D
          MOVF      ARG_14    ,W        ; Line 0X3E
          SUBLW     0x1                 ; Line 0X3F
          BTFSS     STATUS    ,Z        ; Line 0X40
          GOTO      LABEL_5             ; Line 0X41--------------CALL or GOTO
          MOVLW     0x2                 ; Line 0X42
          MOVWF     ARG_14              ; Line 0X43
          MOVLW     0xf                 ; Line 0X44
          MOVWF     ARG_1F              ; Line 0X45
          GOTO      LABEL_8             ; Line 0X46--------------CALL or GOTO

LABEL_5:                                ;*A New LABEL created here!*
          MOVF      ARG_14    ,W        ; Line 0X47
          SUBLW     0x2                 ; Line 0X48
          BTFSC     STATUS    ,Z        ; Line 0X49
          GOTO      LABEL_6             ; Line 0X4A--------------CALL or GOTO
          MOVF      ARG_14    ,W        ; Line 0X4B
          SUBLW     0x4                 ; Line 0X4C
          BTFSS     STATUS    ,Z        ; Line 0X4D
          GOTO      LABEL_8             ; Line 0X4E--------------CALL or GOTO

LABEL_6:                                ;*A New LABEL created here!*
          CALL      LABEL_54            ; Line 0X4F--------------CALL or GOTO
          DECFSZ    ARG_1F    ,F        ; Line 0X50
          GOTO      LABEL_8             ; Line 0X51--------------CALL or GOTO
          CLRF      ARG_14              ; Line 0X52
          BCF       ARG_18    ,5        ; Line 0X53
          BCF       ARG_18    ,6        ; Line 0X54
          BCF       ARG_18    ,1        ; Line 0X55
          BCF       ARG_18    ,7        ; Line 0X56
          GOTO      LABEL_8             ; Line 0X57--------------CALL or GOTO

LABEL_7:                                ;*A New LABEL created here!*
          BCF       ARG_18    ,5        ; Line 0X58
          BCF       ARG_18    ,6        ; Line 0X59
          BCF       ARG_18    ,1        ; Line 0X5A
          BCF       ARG_18    ,7        ; Line 0X5B

LABEL_8:                                ;*A New LABEL created here!*
          BTFSS     PORTA     ,2        ; Line 0X5C
          GOTO      LABEL_9             ; Line 0X5D--------------CALL or GOTO
          BTFSS     INTFLAG   ,T0IF     ; Line 0X5E
          GOTO      LABEL_15            ; Line 0X5F--------------CALL or GOTO
          CALL      LABEL_50            ; Line 0X60--------------CALL or GOTO
          BCF       INTFLAG   ,T0IF     ; Line 0X61
          CALL      LABEL_59            ; Line 0X62--------------CALL or GOTO
          DECF      ARG_1C    ,F        ; Line 0X63
          GOTO      LABEL_15            ; Line 0X64--------------CALL or GOTO

LABEL_9:                                ;*A New LABEL created here!*
          CALL      LABEL_56            ; Line 0X65--------------CALL or GOTO
          MOVLW     0xa                 ; Line 0X66
          MOVWF     ARG_1C              ; Line 0X67
          BTFSC     ARG_19    ,2        ; Line 0X68
          GOTO      LABEL_13            ; Line 0X69--------------CALL or GOTO
          BTFSC     PORTA     ,1        ; Line 0X6A
          GOTO      LABEL_11            ; Line 0X6B--------------CALL or GOTO
          BTFSS     ARG_19    ,1        ; Line 0X6C
          GOTO      LABEL_11            ; Line 0X6D--------------CALL or GOTO

LABEL_10:                               ;*A New LABEL created here!*
          BSF       ARG_19    ,2        ; Line 0X6E
          BSF       PORTB     ,5        ; Line 0X6F
          BTFSS     INTFLAG   ,T0IF     ; Line 0X70
          RETURN                        ; Line 0X71
          CALL      LABEL_50            ; Line 0X72--------------CALL or GOTO
          BCF       INTFLAG   ,T0IF     ; Line 0X73
          MOVLW     0x42                ; Line 0X74
          MOVWF     OPTION              ; Line 0X75---------change OPTION
          MOVLW     0x8c                ; Line 0X76
          MOVWF     T0                  ; Line 0X77
          MOVLW     0x1                 ; Line 0X78
          MOVWF     INTECON             ; Line 0X79---------change INTECON
          RETURN                        ; Line 0X7A

LABEL_11:                               ;*A New LABEL created here!*
          BCF       PORTA     ,0        ; Line 0X7B

LABEL_12:                               ;*A New LABEL created here!*
          BCF       PORTB     ,5        ; Line 0X7C
          RETURN                        ; Line 0X7D

LABEL_13:                               ;*A New LABEL created here!*
          BTFSC     ARG_19    ,1        ; Line 0X7E
          GOTO      LABEL_10            ; Line 0X7F--------------CALL or GOTO
          BCF       ARG_19    ,2        ; Line 0X80
          GOTO      LABEL_11            ; Line 0X81--------------CALL or GOTO

LABEL_14:                               ;*A New LABEL created here!*
          BTFSC     ARG_19    ,1        ; Line 0X82
          GOTO      LABEL_16            ; Line 0X83--------------CALL or GOTO
          BCF       ARG_19    ,2        ; Line 0X84
          GOTO      LABEL_12            ; Line 0X85--------------CALL or GOTO

LABEL_15:                               ;*A New LABEL created here!*
          BTFSC     ARG_19    ,2        ; Line 0X86
          GOTO      LABEL_14            ; Line 0X87--------------CALL or GOTO
          BTFSC     PORTA     ,1        ; Line 0X88
          GOTO      LABEL_12            ; Line 0X89--------------CALL or GOTO
          BTFSS     ARG_19    ,1        ; Line 0X8A
          GOTO      LABEL_12            ; Line 0X8B--------------CALL or GOTO

LABEL_16:                               ;*A New LABEL created here!*
          BSF       ARG_19    ,2        ; Line 0X8C
          BSF       PORTB     ,5        ; Line 0X8D
          RETURN                        ; Line 0X8E

LABEL_17:                               ;*A New LABEL created here!*
          BCF       PORTB     ,5        ; Line 0X8F
          BTFSS     PORTB     ,6        ; Line 0X90
          GOTO      LABEL_19            ; Line 0X91--------------CALL or GOTO
          BTFSC     ARG_18    ,7        ; Line 0X92
          GOTO      LABEL_22            ; Line 0X93--------------CALL or GOTO
          MOVF      ARG_14    ,F        ; Line 0X94
          BTFSS     STATUS    ,Z        ; Line 0X95
          GOTO      LABEL_18            ; Line 0X96--------------CALL or GOTO
          MOVLW     0x1                 ; Line 0X97
          MOVWF     ARG_14              ; Line 0X98
          CALL      LABEL_46            ; Line 0X99--------------CALL or GOTO
          MOVLW     0x28                ; Line 0X9A
          MOVWF     ARG_1E              ; Line 0X9B
          RETURN                        ; Line 0X9C

LABEL_18:                               ;*A New LABEL created here!*
          MOVF      ARG_14    ,W        ; Line 0X9D
          SUBLW     0x2                 ; Line 0X9E
          BTFSS     STATUS    ,Z        ; Line 0X9F
          RETURN                        ; Line 0XA0
          MOVLW     0x4                 ; Line 0XA1
          MOVWF     ARG_14              ; Line 0XA2
          MOVLW     0x5                 ; Line 0XA3
          MOVWF     ARG_1F              ; Line 0XA4
          BSF       ARG_18    ,7        ; Line 0XA5
          CALL      LABEL_48            ; Line 0XA6--------------CALL or GOTO
          BTFSS     PORTB     ,1        ; Line 0XA7
          BCF       ARG_19    ,0        ; Line 0XA8
          BTFSC     PORTB     ,1        ; Line 0XA9
          BSF       ARG_19    ,0        ; Line 0XAA
          RETURN                        ; Line 0XAB

LABEL_19:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,5        ; Line 0XAC
          GOTO      LABEL_20            ; Line 0XAD--------------CALL or GOTO
          BSF       ARG_18    ,5        ; Line 0XAE
          CALL      LABEL_46            ; Line 0XAF--------------CALL or GOTO

LABEL_20:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,6        ; Line 0XB0
          GOTO      LABEL_21            ; Line 0XB1--------------CALL or GOTO
          BTFSS     PORTA     ,2        ; Line 0XB2
          RETURN                        ; Line 0XB3
          DECFSZ    ARG_1B    ,F        ; Line 0XB4
          RETURN                        ; Line 0XB5
          BSF       ARG_18    ,6        ; Line 0XB6
          RETURN                        ; Line 0XB7

LABEL_21:                               ;*A New LABEL created here!*
          BTFSC     PORTA     ,2        ; Line 0XB8
          RETURN                        ; Line 0XB9
          MOVLW     0x3                 ; Line 0XBA
          MOVWF     ARG_1B              ; Line 0XBB
          BTFSC     ARG_18    ,7        ; Line 0XBC
          GOTO      LABEL_22            ; Line 0XBD--------------CALL or GOTO
          BSF       ARG_18    ,7        ; Line 0XBE
          CALL      LABEL_48            ; Line 0XBF--------------CALL or GOTO
          BTFSS     PORTB     ,1        ; Line 0XC0
          BCF       ARG_19    ,0        ; Line 0XC1
          BTFSC     PORTB     ,1        ; Line 0XC2
          BSF       ARG_19    ,0        ; Line 0XC3
          RETURN                        ; Line 0XC4

LABEL_22:                               ;*A New LABEL created here!*
          DECFSZ    ARG_0B    ,F        ; Line 0XC5
          GOTO      LABEL_23            ; Line 0XC6--------------CALL or GOTO
          CLRF      ARG_0B              ; Line 0XC7
          CLRF      ARG_0A              ; Line 0XC8

LABEL_23:                               ;*A New LABEL created here!*
          BTFSC     ARG_19    ,0        ; Line 0XC9
          GOTO      LABEL_24            ; Line 0XCA--------------CALL or GOTO
          BTFSC     PORTB     ,1        ; Line 0XCB
          GOTO      LABEL_25            ; Line 0XCC--------------CALL or GOTO
          RETURN                        ; Line 0XCD

LABEL_24:                               ;*A New LABEL created here!*
          BTFSS     PORTB     ,1        ; Line 0XCE
          GOTO      LABEL_25            ; Line 0XCF--------------CALL or GOTO
          RETURN                        ; Line 0XD0

LABEL_25:                               ;*A New LABEL created here!*
          BTFSS     PORTB     ,1        ; Line 0XD1
          BCF       ARG_19    ,0        ; Line 0XD2
          BTFSC     PORTB     ,1        ; Line 0XD3
          BSF       ARG_19    ,0        ; Line 0XD4
          MOVF      ARG_0A    ,F        ; Line 0XD5
          BTFSS     STATUS    ,Z        ; Line 0XD6
          GOTO      LABEL_26            ; Line 0XD7--------------CALL or GOTO
          MOVLW     0x64                ; Line 0XD8
          MOVWF     ARG_0B              ; Line 0XD9
          INCF      ARG_0A    ,F        ; Line 0XDA
          RETURN                        ; Line 0XDB

LABEL_26:                               ;*A New LABEL created here!*
          INCF      ARG_0A    ,F        ; Line 0XDC
          MOVF      ARG_0A    ,W        ; Line 0XDD
          SUBLW     0xa                 ; Line 0XDE
          BTFSC     STATUS    ,C        ; Line 0XDF
          RETURN                        ; Line 0XE0
          BSF       ARG_18    ,1        ; Line 0XE1
          RETURN                        ; Line 0XE2

LABEL_27:                               ;*A New LABEL created here!*
          BTFSS     ARG_18    ,1        ; Line 0XE3
          GOTO      LABEL_45            ; Line 0XE4--------------CALL or GOTO
          BTFSS     ARG_18    ,0        ; Line 0XE5
          GOTO      LABEL_29            ; Line 0XE6--------------CALL or GOTO
          BTFSC     ARG_18    ,2        ; Line 0XE7
          GOTO      LABEL_28            ; Line 0XE8--------------CALL or GOTO
          MOVLW     0x42                ; Line 0XE9
          MOVWF     OPTION              ; Line 0XEA---------change OPTION
          MOVLW     0xfb                ; Line 0XEB
          MOVWF     T0                  ; Line 0XEC
          MOVLW     0x1                 ; Line 0XED
          MOVWF     INTECON             ; Line 0XEE---------change INTECON
          BSF       ARG_18    ,2        ; Line 0XEF

LABEL_28:                               ;*A New LABEL created here!*
          BSF       PORTA     ,0        ; Line 0XF0
          BTFSS     INTFLAG   ,T0IF     ; Line 0XF1
          RETURN                        ; Line 0XF2
          BCF       INTFLAG   ,T0IF     ; Line 0XF3
          BCF       ARG_18    ,2        ; Line 0XF4
          BCF       ARG_18    ,0        ; Line 0XF5
          BCF       PORTA     ,0        ; Line 0XF6
          RETURN                        ; Line 0XF7

LABEL_29:                               ;*A New LABEL created here!*
          MOVF      ARG_13    ,W        ; Line 0XF8
          ADDWF     PCL       ,F        ; Line 0XF9
          NOP                           ; Line 0XFA
          GOTO      LABEL_30            ; Line 0XFB--------------CALL or GOTO
          GOTO      LABEL_32            ; Line 0XFC--------------CALL or GOTO
          GOTO      LABEL_35            ; Line 0XFD--------------CALL or GOTO
          GOTO      LABEL_38            ; Line 0XFE--------------CALL or GOTO
          GOTO      LABEL_41            ; Line 0XFF--------------CALL or GOTO

LABEL_30:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,2        ; Line 0X100
          GOTO      LABEL_31            ; Line 0X101--------------CALL or GOTO
          MOVF      ARG_00    ,W        ; Line 0X102
          MOVWF     T0                  ; Line 0X103
          BSF       ARG_18    ,2        ; Line 0X104

LABEL_31:                               ;*A New LABEL created here!*
          BTFSS     INTFLAG   ,T0IF     ; Line 0X105
          RETURN                        ; Line 0X106
          BCF       INTFLAG   ,T0IF     ; Line 0X107
          BCF       ARG_18    ,2        ; Line 0X108
          BSF       ARG_18    ,0        ; Line 0X109
          DECFSZ    ARG_11    ,F        ; Line 0X10A
          RETURN                        ; Line 0X10B
          MOVLW     0x6                 ; Line 0X10C
          MOVWF     ARG_11              ; Line 0X10D
          DECF      ARG_00    ,F        ; Line 0X10E
          DECF      ARG_00    ,F        ; Line 0X10F
          DECF      ARG_00    ,F        ; Line 0X110
          DECFSZ    ARG_12    ,F        ; Line 0X111
          RETURN                        ; Line 0X112
          MOVLW     0x14                ; Line 0X113
          MOVWF     ARG_12              ; Line 0X114
          MOVLW     0x4c                ; Line 0X115
          MOVWF     ARG_00              ; Line 0X116
          DECFSZ    ARG_10    ,F        ; Line 0X117
          RETURN                        ; Line 0X118
          CALL      LABEL_54            ; Line 0X119--------------CALL or GOTO
          INCF      ARG_13    ,F        ; Line 0X11A
          MOVLW     0xdf                ; Line 0X11B
          MOVWF     ARG_00              ; Line 0X11C
          MOVLW     0xa0                ; Line 0X11D
          MOVWF     ARG_01              ; Line 0X11E
          BSF       ARG_18    ,3        ; Line 0X11F
          MOVLW     0x5                 ; Line 0X120
          MOVWF     ARG_10              ; Line 0X121
          RETURN                        ; Line 0X122

LABEL_32:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,2        ; Line 0X123
          GOTO      LABEL_33            ; Line 0X124--------------CALL or GOTO
          MOVF      ARG_00    ,W        ; Line 0X125
          MOVWF     T0                  ; Line 0X126
          BSF       ARG_18    ,2        ; Line 0X127

LABEL_33:                               ;*A New LABEL created here!*
          BTFSS     INTFLAG   ,T0IF     ; Line 0X128
          RETURN                        ; Line 0X129
          BCF       INTFLAG   ,T0IF     ; Line 0X12A
          BCF       ARG_18    ,2        ; Line 0X12B
          BSF       ARG_18    ,0        ; Line 0X12C
          BTFSS     ARG_18    ,3        ; Line 0X12D
          GOTO      LABEL_34            ; Line 0X12E--------------CALL or GOTO
          DECF      ARG_00    ,F        ; Line 0X12F
          DECFSZ    ARG_01    ,F        ; Line 0X130
          RETURN                        ; Line 0X131
          BCF       ARG_18    ,3        ; Line 0X132
          MOVLW     0xa0                ; Line 0X133
          MOVWF     ARG_01              ; Line 0X134
          RETURN                        ; Line 0X135

LABEL_34:                               ;*A New LABEL created here!*
          INCF      ARG_00    ,F        ; Line 0X136
          DECFSZ    ARG_01    ,F        ; Line 0X137
          RETURN                        ; Line 0X138
          BSF       ARG_18    ,3        ; Line 0X139
          MOVLW     0xa0                ; Line 0X13A
          MOVWF     ARG_01              ; Line 0X13B
          DECFSZ    ARG_10    ,F        ; Line 0X13C
          RETURN                        ; Line 0X13D
          CALL      LABEL_54            ; Line 0X13E--------------CALL or GOTO
          INCF      ARG_13    ,F        ; Line 0X13F
          MOVLW     0xb1                ; Line 0X140
          MOVWF     ARG_00              ; Line 0X141
          MOVLW     0xf4                ; Line 0X142
          MOVWF     ARG_01              ; Line 0X143
          MOVLW     0x3                 ; Line 0X144
          MOVWF     ARG_02              ; Line 0X145
          MOVLW     0x2                 ; Line 0X146
          MOVWF     ARG_10              ; Line 0X147
          BSF       ARG_18    ,4        ; Line 0X148
          RETURN                        ; Line 0X149

LABEL_35:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,2        ; Line 0X14A
          GOTO      LABEL_36            ; Line 0X14B--------------CALL or GOTO
          MOVF      ARG_00    ,W        ; Line 0X14C
          MOVWF     T0                  ; Line 0X14D
          BSF       ARG_18    ,2        ; Line 0X14E

LABEL_36:                               ;*A New LABEL created here!*
          BTFSS     INTFLAG   ,T0IF     ; Line 0X14F
          RETURN                        ; Line 0X150
          BCF       INTFLAG   ,T0IF     ; Line 0X151
          BCF       ARG_18    ,2        ; Line 0X152
          BSF       ARG_18    ,0        ; Line 0X153
          BTFSS     ARG_18    ,4        ; Line 0X154
          GOTO      LABEL_37            ; Line 0X155--------------CALL or GOTO
          DECFSZ    ARG_01    ,F        ; Line 0X156
          RETURN                        ; Line 0X157
          DECFSZ    ARG_02    ,F        ; Line 0X158
          RETURN                        ; Line 0X159
          BCF       ARG_18    ,4        ; Line 0X15A
          MOVLW     0x72                ; Line 0X15B
          MOVWF     ARG_00              ; Line 0X15C
          MOVLW     0xec                ; Line 0X15D
          MOVWF     ARG_01              ; Line 0X15E
          MOVLW     0x2                 ; Line 0X15F
          MOVWF     ARG_02              ; Line 0X160

LABEL_37:                               ;*A New LABEL created here!*
          DECFSZ    ARG_01    ,F        ; Line 0X161
          RETURN                        ; Line 0X162
          DECFSZ    ARG_02    ,F        ; Line 0X163
          RETURN                        ; Line 0X164
          MOVLW     0xb1                ; Line 0X165
          MOVWF     ARG_00              ; Line 0X166
          MOVLW     0xf4                ; Line 0X167
          MOVWF     ARG_01              ; Line 0X168
          MOVLW     0x3                 ; Line 0X169
          MOVWF     ARG_02              ; Line 0X16A
          BSF       ARG_18    ,4        ; Line 0X16B
          DECFSZ    ARG_10    ,F        ; Line 0X16C
          RETURN                        ; Line 0X16D
          CALL      LABEL_54            ; Line 0X16E--------------CALL or GOTO
          INCF      ARG_13    ,F        ; Line 0X16F
          MOVLW     0xb2                ; Line 0X170
          MOVWF     ARG_00              ; Line 0X171
          MOVLW     0x3c                ; Line 0X172
          MOVWF     ARG_01              ; Line 0X173
          MOVLW     0x5                 ; Line 0X174
          MOVWF     ARG_02              ; Line 0X175
          MOVLW     0x3                 ; Line 0X176
          MOVWF     ARG_10              ; Line 0X177
          BSF       ARG_18    ,4        ; Line 0X178
          RETURN                        ; Line 0X179

LABEL_38:                               ;*A New LABEL created here!*
          BTFSC     ARG_18    ,2        ; Line 0X17A
          GOTO      LABEL_39            ; Line 0X17B--------------CALL or GOTO
          MOVF      ARG_00    ,W        ; Line 0X17C
          MOVWF     T0                  ; Line 0X17D
          BSF       ARG_18    ,2        ; Line 0X17E

LABEL_39:                               ;*A New LABEL created here!*
          BTFSS     INTFLAG   ,T0IF     ; Line 0X17F
          RETURN                        ; Line 0X180
          BCF       INTFLAG   ,T0IF     ; Line 0X181
          BCF       ARG_18    ,2        ; Line 0X182
          BSF       ARG_18    ,0        ; Line 0X183
          BTFSS     ARG_18    ,4        ; Line 0X184
          GOTO      LABEL_40            ; Line 0X185--------------CALL or GOTO
          DECFSZ    ARG_02    ,F        ; Line 0X186
          RETURN                        ; Line 0X187
          MOVLW     0x5                 ; Line 0X188
          MOVWF     ARG_02              ; Line 0X189
          MOVLW     0xae                ; Line 0X18A
          MOVWF     ARG_00              ; Line 0X18B
          BCF       ARG_18    ,4        ; Line 0X18C
          RETURN                        ; Line 0X18D

LABEL_40:                               ;*A New LABEL created here!*
          DECFSZ    ARG_02    ,F        ; Line 0X18E
          RETURN                        ; Line 0X18F
          MOVLW     0x5                 ; Line 0X190
          MOVWF     ARG_02              ; Line 0X191
          MOVLW     0xb2                ; Line 0X192
          MOVWF     ARG_00              ; Line 0X193
          BSF       ARG_18    ,4        ; Line 0X194
          DECFSZ    ARG_01    ,F        ; Line 0X195
          RETURN                        ; Line 0X196
          MOVLW     0x47                ; Line 0X197
          MOVWF     OPTION              ; Line 0X198---------change OPTION
          BSF       ARG_18    ,2        ; Line 0X199
          BCF       ARG_18    ,0        ; Line 0X19A
          CLRF      ARG_00              ; Line 0X19B
          MOVLW     0x3c                ; Line 0X19C
          MOVWF     ARG_01              ; Line 0X19D
          DECFSZ    ARG_10    ,F        ; Line 0X19E
          RETURN                        ; Line 0X19F
          CALL      LABEL_54            ; Line 0X1A0--------------CALL or GOTO
          INCF      ARG_13    ,F        ; Line 0X1A1
          MOVLW     0x70                ; Line 0X1A2
          MOVWF     ARG_00              ; Line 0X1A3
          MOVLW     0x4                 ; Line 0X1A4
          MOVWF     ARG_01              ; Line 0X1A5
          MOVLW     0x1                 ; Line 0X1A6
          MOVWF     ARG_02              ; Line 0X1A7
          MOVLW     0x4                 ; Line 0X1A8
          MOVWF     ARG_03              ; Line 0X1A9
          MOVLW     0x2                 ; Line 0X1AA
          MOVWF     ARG_10              ; Line 0X1AB
          BCF       ARG_18    ,2        ; Line 0X1AC
          RETURN                        ; Line 0X1AD

LABEL_41:                               ;*A New LABEL created here!*
          BSF       ARG_18    ,0        ; Line 0X1AE
          MOVF      ARG_00    ,W        ; Line 0X1AF
          MOVWF     ARG_04              ; Line 0X1B0
          MOVF      ARG_01    ,W        ; Line 0X1B1
          MOVWF     ARG_05              ; Line 0X1B2

LABEL_42:                               ;*A New LABEL created here!*
          DECFSZ    ARG_04    ,F        ; Line 0X1B3
          GOTO      LABEL_42            ; Line 0X1B4--------------CALL or GOTO
          CLRWDT                        ; Line 0X1B5
          DECFSZ    ARG_05    ,F        ; Line 0X1B6
          GOTO      LABEL_42            ; Line 0X1B7--------------CALL or GOTO
          CLRWDT                        ; Line 0X1B8
          DECFSZ    ARG_00    ,F        ; Line 0X1B9
          GOTO      LABEL_43            ; Line 0X1BA--------------CALL or GOTO
          DECFSZ    ARG_01    ,F        ; Line 0X1BB
          GOTO      LABEL_43            ; Line 0X1BC--------------CALL or GOTO

LABEL_43:                               ;*A New LABEL created here!*
          BCF       INTFLAG   ,T0IF     ; Line 0X1BD
          DECFSZ    ARG_02    ,F        ; Line 0X1BE
          RETURN                        ; Line 0X1BF
          DECFSZ    ARG_03    ,F        ; Line 0X1C0
          RETURN                        ; Line 0X1C1
          MOVLW     0x4e                ; Line 0X1C2
          MOVWF     ARG_00              ; Line 0X1C3
          MOVLW     0xff                ; Line 0X1C4
          MOVWF     ARG_01              ; Line 0X1C5

LABEL_44:                               ;*A New LABEL created here!*
          DECFSZ    ARG_01    ,F        ; Line 0X1C6
          GOTO      LABEL_44            ; Line 0X1C7--------------CALL or GOTO
          CLRWDT                        ; Line 0X1C8
          DECFSZ    ARG_00    ,F        ; Line 0X1C9
          GOTO      LABEL_44            ; Line 0X1CA--------------CALL or GOTO
          CLRWDT                        ; Line 0X1CB
          MOVLW     0x70                ; Line 0X1CC
          MOVWF     ARG_00              ; Line 0X1CD
          MOVLW     0x4                 ; Line 0X1CE
          MOVWF     ARG_01              ; Line 0X1CF
          MOVLW     0x1                 ; Line 0X1D0
          MOVWF     ARG_02              ; Line 0X1D1
          MOVLW     0x4                 ; Line 0X1D2
          MOVWF     ARG_03              ; Line 0X1D3
          DECFSZ    ARG_10    ,F        ; Line 0X1D4
          RETURN                        ; Line 0X1D5
          BCF       ARG_18    ,1        ; Line 0X1D6
          BCF       PORTA     ,0        ; Line 0X1D7

LABEL_45:                               ;*A New LABEL created here!*
          MOVLW     0x1                 ; Line 0X1D8
          MOVWF     ARG_13              ; Line 0X1D9
          MOVLW     0x7                 ; Line 0X1DA
          MOVWF     ARG_10              ; Line 0X1DB
          MOVLW     0x6                 ; Line 0X1DC
          MOVWF     ARG_11              ; Line 0X1DD
          MOVLW     0x14                ; Line 0X1DE
          MOVWF     ARG_12              ; Line 0X1DF
          MOVLW     0x4c                ; Line 0X1E0
          MOVWF     ARG_00              ; Line 0X1E1
          BCF       ARG_18    ,2        ; Line 0X1E2
          BSF       ARG_18    ,0        ; Line 0X1E3
          BCF       ARG_18    ,1        ; Line 0X1E4
          BCF       PORTA     ,0        ; Line 0X1E5
          BTFSS     PORTB     ,1        ; Line 0X1E6
          BCF       ARG_19    ,0        ; Line 0X1E7
          BTFSC     PORTB     ,1        ; Line 0X1E8
          BSF       ARG_19    ,0        ; Line 0X1E9
          RETURN                        ; Line 0X1EA

LABEL_46:                               ;*A New LABEL created here!*
          MOVLW     0x50                ; Line 0X1EB
          MOVWF     ARG_06              ; Line 0X1EC

LABEL_47:                               ;*A New LABEL created here!*
          CALL      LABEL_50            ; Line 0X1ED--------------CALL or GOTO
          CALL      LABEL_52            ; Line 0X1EE--------------CALL or GOTO
          DECFSZ    ARG_06    ,F        ; Line 0X1EF
          GOTO      LABEL_47            ; Line 0X1F0--------------CALL or GOTO
          RETURN                        ; Line 0X1F1

LABEL_48:                               ;*A New LABEL created here!*
          MOVLW     0x3                 ; Line 0X1F2
          MOVWF     ARG_09              ; Line 0X1F3

LABEL_49:                               ;*A New LABEL created here!*
          CALL      LABEL_46            ; Line 0X1F4--------------CALL or GOTO
          CALL      LABEL_54            ; Line 0X1F5--------------CALL or GOTO
          DECFSZ    ARG_09    ,F        ; Line 0X1F6
          GOTO      LABEL_49            ; Line 0X1F7--------------CALL or GOTO
          RETURN                        ; Line 0X1F8

LABEL_50:                               ;*A New LABEL created here!*
          BSF       PORTA     ,0        ; Line 0X1F9
          MOVLW     0x19                ; Line 0X1FA
          MOVWF     ARG_07              ; Line 0X1FB

LABEL_51:                               ;*A New LABEL created here!*
          DECFSZ    ARG_07    ,F        ; Line 0X1FC
          GOTO      LABEL_51            ; Line 0X1FD--------------CALL or GOTO
          BCF       PORTA     ,0        ; Line 0X1FE
          CLRWDT                        ; Line 0X1FF
          RETURN                        ; Line 0X200

LABEL_52:                               ;*A New LABEL created here!*
          MOVLW     0xa6                ; Line 0X201
          MOVWF     ARG_07              ; Line 0X202

LABEL_53:                               ;*A New LABEL created here!*
          DECFSZ    ARG_07    ,F        ; Line 0X203
          GOTO      LABEL_53            ; Line 0X204--------------CALL or GOTO
          CLRWDT                        ; Line 0X205
          RETURN                        ; Line 0X206

LABEL_54:                               ;*A New LABEL created here!*
          MOVLW     0xfa                ; Line 0X207
          MOVWF     ARG_08              ; Line 0X208

LABEL_55:                               ;*A New LABEL created here!*
          CALL      LABEL_52            ; Line 0X209--------------CALL or GOTO
          DECFSZ    ARG_08    ,F        ; Line 0X20A
          GOTO      LABEL_55            ; Line 0X20B--------------CALL or GOTO
          RETURN                        ; Line 0X20C

LABEL_56:                               ;*A New LABEL created here!*
          MOVLW     0x4e                ; Line 0X20D
          MOVWF     ARG_15              ; Line 0X20E

LABEL_57:                               ;*A New LABEL created here!*
          CLRWDT                        ; Line 0X20F
          DECFSZ    ARG_15    ,F        ; Line 0X210
          GOTO      LABEL_57            ; Line 0X211--------------CALL or GOTO
          DECFSZ    ARG_16    ,F        ; Line 0X212
          RETURN                        ; Line 0X213
          MOVLW     0xc8                ; Line 0X214
          MOVWF     ARG_16              ; Line 0X215
          DECFSZ    ARG_17    ,F        ; Line 0X216
          RETURN                        ; Line 0X217
          MOVF      ARG_19    ,W        ; Line 0X218
          XORLW     0x2                 ; Line 0X219
          MOVWF     ARG_19              ; Line 0X21A
          BTFSS     ARG_19    ,1        ; Line 0X21B
          GOTO      LABEL_58            ; Line 0X21C--------------CALL or GOTO
          MOVLW     0x3                 ; Line 0X21D
          MOVWF     ARG_17              ; Line 0X21E
          RETURN                        ; Line 0X21F

LABEL_58:                               ;*A New LABEL created here!*
          MOVLW     0x7                 ; Line 0X220
          MOVWF     ARG_17              ; Line 0X221
          RETURN                        ; Line 0X222

LABEL_59:                               ;*A New LABEL created here!*
          MOVF      ARG_1C    ,W        ; Line 0X223
          SUBLW     0xa                 ; Line 0X224
          BTFSC     STATUS    ,Z        ; Line 0X225
          GOTO      LABEL_60            ; Line 0X226--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X227
          SUBLW     0x9                 ; Line 0X228
          BTFSC     STATUS    ,Z        ; Line 0X229
          GOTO      LABEL_61            ; Line 0X22A--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X22B
          SUBLW     0x8                 ; Line 0X22C
          BTFSC     STATUS    ,Z        ; Line 0X22D
          GOTO      LABEL_62            ; Line 0X22E--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X22F
          SUBLW     0x7                 ; Line 0X230
          BTFSC     STATUS    ,Z        ; Line 0X231
          GOTO      LABEL_63            ; Line 0X232--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X233
          SUBLW     0x6                 ; Line 0X234
          BTFSC     STATUS    ,Z        ; Line 0X235
          GOTO      LABEL_64            ; Line 0X236--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X237
          SUBLW     0x5                 ; Line 0X238
          BTFSC     STATUS    ,Z        ; Line 0X239
          GOTO      LABEL_65            ; Line 0X23A--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X23B
          SUBLW     0x4                 ; Line 0X23C
          BTFSC     STATUS    ,Z        ; Line 0X23D
          GOTO      LABEL_66            ; Line 0X23E--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X23F
          SUBLW     0x3                 ; Line 0X240
          BTFSC     STATUS    ,Z        ; Line 0X241
          GOTO      LABEL_67            ; Line 0X242--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X243
          SUBLW     0x2                 ; Line 0X244
          BTFSC     STATUS    ,Z        ; Line 0X245
          GOTO      LABEL_68            ; Line 0X246--------------CALL or GOTO
          MOVF      ARG_1C    ,W        ; Line 0X247
          SUBLW     0x1                 ; Line 0X248
          BTFSC     STATUS    ,Z        ; Line 0X249
          GOTO      LABEL_69            ; Line 0X24A--------------CALL or GOTO
          MOVLW     0xb                 ; Line 0X24B
          MOVWF     ARG_1C              ; Line 0X24C
          MOVLW     0x43                ; Line 0X24D
          MOVWF     OPTION              ; Line 0X24E---------change OPTION
          MOVLW     0x7c                ; Line 0X24F
          MOVWF     T0                  ; Line 0X250
          MOVLW     0x1                 ; Line 0X251
          MOVWF     INTECON             ; Line 0X252---------change INTECON
          RETURN                        ; Line 0X253

LABEL_60:                               ;*A New LABEL created here!*
          MOVLW     0x43                ; Line 0X254
          MOVWF     OPTION              ; Line 0X255---------change OPTION
          MOVLW     0x82                ; Line 0X256
          MOVWF     T0                  ; Line 0X257
          MOVLW     0x1                 ; Line 0X258
          MOVWF     INTECON             ; Line 0X259---------change INTECON
          RETURN                        ; Line 0X25A

LABEL_61:                               ;*A New LABEL created here!*
          MOVLW     0x43                ; Line 0X25B
          MOVWF     OPTION              ; Line 0X25C---------change OPTION
          MOVLW     0x7d                ; Line 0X25D
          MOVWF     T0                  ; Line 0X25E
          MOVLW     0x1                 ; Line 0X25F
          MOVWF     INTECON             ; Line 0X260---------change INTECON
          RETURN                        ; Line 0X261

LABEL_62:                               ;*A New LABEL created here!*
          MOVLW     0x40                ; Line 0X262
          MOVWF     OPTION              ; Line 0X263---------change OPTION
          MOVLW     0x98                ; Line 0X264
          MOVWF     T0                  ; Line 0X265
          MOVLW     0x1                 ; Line 0X266
          MOVWF     INTECON             ; Line 0X267---------change INTECON
          RETURN                        ; Line 0X268

LABEL_63:                               ;*A New LABEL created here!*
          MOVLW     0x42                ; Line 0X269
          MOVWF     OPTION              ; Line 0X26A---------change OPTION
          MOVLW     0x34                ; Line 0X26B
          MOVWF     T0                  ; Line 0X26C
          MOVLW     0x1                 ; Line 0X26D
          MOVWF     INTECON             ; Line 0X26E---------change INTECON
          RETURN                        ; Line 0X26F

LABEL_64:                               ;*A New LABEL created here!*
          MOVLW     0x41                ; Line 0X270
          MOVWF     OPTION              ; Line 0X271---------change OPTION
          MOVLW     0x54                ; Line 0X272
          MOVWF     T0                  ; Line 0X273
          MOVLW     0x1                 ; Line 0X274
          MOVWF     INTECON             ; Line 0X275---------change INTECON
          RETURN                        ; Line 0X276

LABEL_65:                               ;*A New LABEL created here!*
          MOVLW     0x42                ; Line 0X277
          MOVWF     OPTION              ; Line 0X278---------change OPTION
          MOVLW     0x73                ; Line 0X279
          MOVWF     T0                  ; Line 0X27A
          MOVLW     0x1                 ; Line 0X27B
          MOVWF     INTECON             ; Line 0X27C---------change INTECON
          RETURN                        ; Line 0X27D

LABEL_66:                               ;*A New LABEL created here!*
          MOVLW     0x42                ; Line 0X27E
          MOVWF     OPTION              ; Line 0X27F---------change OPTION
          MOVLW     0x74                ; Line 0X280
          MOVWF     T0                  ; Line 0X281
          MOVLW     0x1                 ; Line 0X282
          MOVWF     INTECON             ; Line 0X283---------change INTECON
          RETURN                        ; Line 0X284

LABEL_67:                               ;*A New LABEL created here!*
          MOVLW     0x41                ; Line 0X285
          MOVWF     OPTION              ; Line 0X286---------change OPTION
          MOVLW     0x56                ; Line 0X287
          MOVWF     T0                  ; Line 0X288
          MOVLW     0x1                 ; Line 0X289
          MOVWF     INTECON             ; Line 0X28A---------change INTECON
          RETURN                        ; Line 0X28B

LABEL_68:                               ;*A New LABEL created here!*
          MOVLW     0x42                ; Line 0X28C
          MOVWF     OPTION              ; Line 0X28D---------change OPTION
          MOVLW     0x36                ; Line 0X28E
          MOVWF     T0                  ; Line 0X28F
          MOVLW     0x1                 ; Line 0X290
          MOVWF     INTECON             ; Line 0X291---------change INTECON
          RETURN                        ; Line 0X292

LABEL_69:                               ;*A New LABEL created here!*
          MOVLW     0xb                 ; Line 0X293
          MOVWF     ARG_1C              ; Line 0X294
          MOVLW     0x40                ; Line 0X295
          MOVWF     OPTION              ; Line 0X296---------change OPTION
          MOVLW     0x78                ; Line 0X297
          MOVWF     T0                  ; Line 0X298
          MOVLW     0x1                 ; Line 0X299
          MOVWF     INTECON             ; Line 0X29A---------change INTECON
          DECFSZ    ARG_1D    ,F        ; Line 0X29B
          RETURN                        ; Line 0X29C
          MOVF      ARG_19    ,W        ; Line 0X29D
          XORLW     0x2                 ; Line 0X29E
          MOVWF     ARG_19              ; Line 0X29F
          BTFSS     ARG_19    ,1        ; Line 0X2A0
          GOTO      LABEL_70            ; Line 0X2A1--------------CALL or GOTO
          MOVLW     0x11                ; Line 0X2A2
          MOVWF     ARG_1D              ; Line 0X2A3
          RETURN                        ; Line 0X2A4

LABEL_70:                               ;*A New LABEL created here!*
          MOVLW     0x23                ; Line 0X2A5
          MOVWF     ARG_1D              ; Line 0X2A6
          RETURN                        ; Line 0X2A7
          ADDLW     0xff                ; Line 0X2A8
          ADDLW     0xff                ; Line 0X2A9
          ADDLW     0xff                ; Line 0X2AA
          ADDLW     0xff                ; Line 0X2AB
          ADDLW     0xff                ; Line 0X2AC
          ADDLW     0xff                ; Line 0X2AD
          ADDLW     0xff                ; Line 0X2AE
          ADDLW     0xff                ; Line 0X2AF
          ADDLW     0xff                ; Line 0X2B0
          ADDLW     0xff                ; Line 0X2B1
          ADDLW     0xff                ; Line 0X2B2
          ADDLW     0xff                ; Line 0X2B3
          ADDLW     0xff                ; Line 0X2B4
          ADDLW     0xff                ; Line 0X2B5
          ADDLW     0xff                ; Line 0X2B6
          ADDLW     0xff                ; Line 0X2B7
          ADDLW     0xff                ; Line 0X2B8
          ADDLW     0xff                ; Line 0X2B9
          ADDLW     0xff                ; Line 0X2BA
          ADDLW     0xff                ; Line 0X2BB
          ADDLW     0xff                ; Line 0X2BC
          ADDLW     0xff                ; Line 0X2BD
          ADDLW     0xff                ; Line 0X2BE
          ADDLW     0xff                ; Line 0X2BF
          ADDLW     0xff                ; Line 0X2C0
          ADDLW     0xff                ; Line 0X2C1
          ADDLW     0xff                ; Line 0X2C2
          ADDLW     0xff                ; Line 0X2C3
          ADDLW     0xff                ; Line 0X2C4
          ADDLW     0xff                ; Line 0X2C5
          ADDLW     0xff                ; Line 0X2C6
          ADDLW     0xff                ; Line 0X2C7
          ADDLW     0xff                ; Line 0X2C8
          ADDLW     0xff                ; Line 0X2C9
          ADDLW     0xff                ; Line 0X2CA
          ADDLW     0xff                ; Line 0X2CB
          ADDLW     0xff                ; Line 0X2CC
          ADDLW     0xff                ; Line 0X2CD
          ADDLW     0xff                ; Line 0X2CE
          ADDLW     0xff                ; Line 0X2CF
          ADDLW     0xff                ; Line 0X2D0
          ADDLW     0xff                ; Line 0X2D1
          ADDLW     0xff                ; Line 0X2D2
          ADDLW     0xff                ; Line 0X2D3
          ADDLW     0xff                ; Line 0X2D4
          ADDLW     0xff                ; Line 0X2D5
          ADDLW     0xff                ; Line 0X2D6
          ADDLW     0xff                ; Line 0X2D7
          ADDLW     0xff                ; Line 0X2D8
          ADDLW     0xff                ; Line 0X2D9
          ADDLW     0xff                ; Line 0X2DA
          ADDLW     0xff                ; Line 0X2DB
          ADDLW     0xff                ; Line 0X2DC
          ADDLW     0xff                ; Line 0X2DD
          ADDLW     0xff                ; Line 0X2DE
          ADDLW     0xff                ; Line 0X2DF
          ADDLW     0xff                ; Line 0X2E0
          ADDLW     0xff                ; Line 0X2E1
          ADDLW     0xff                ; Line 0X2E2
          ADDLW     0xff                ; Line 0X2E3
          ADDLW     0xff                ; Line 0X2E4
          ADDLW     0xff                ; Line 0X2E5
          ADDLW     0xff                ; Line 0X2E6
          ADDLW     0xff                ; Line 0X2E7
          ADDLW     0xff                ; Line 0X2E8
          ADDLW     0xff                ; Line 0X2E9
          ADDLW     0xff                ; Line 0X2EA
          ADDLW     0xff                ; Line 0X2EB
          ADDLW     0xff                ; Line 0X2EC
          ADDLW     0xff                ; Line 0X2ED
          ADDLW     0xff                ; Line 0X2EE
          ADDLW     0xff                ; Line 0X2EF
          ADDLW     0xff                ; Line 0X2F0
          ADDLW     0xff                ; Line 0X2F1
          ADDLW     0xff                ; Line 0X2F2
          ADDLW     0xff                ; Line 0X2F3
          ADDLW     0xff                ; Line 0X2F4
          ADDLW     0xff                ; Line 0X2F5
          ADDLW     0xff                ; Line 0X2F6
          ADDLW     0xff                ; Line 0X2F7
          ADDLW     0xff                ; Line 0X2F8
          ADDLW     0xff                ; Line 0X2F9
          ADDLW     0xff                ; Line 0X2FA
          ADDLW     0xff                ; Line 0X2FB
          ADDLW     0xff                ; Line 0X2FC
          ADDLW     0xff                ; Line 0X2FD
          ADDLW     0xff                ; Line 0X2FE
          ADDLW     0xff                ; Line 0X2FF
          ADDLW     0xff                ; Line 0X300
          ADDLW     0xff                ; Line 0X301
          ADDLW     0xff                ; Line 0X302
          ADDLW     0xff                ; Line 0X303
          ADDLW     0xff                ; Line 0X304
          ADDLW     0xff                ; Line 0X305
          ADDLW     0xff                ; Line 0X306
          ADDLW     0xff                ; Line 0X307
          ADDLW     0xff                ; Line 0X308
          ADDLW     0xff                ; Line 0X309
          ADDLW     0xff                ; Line 0X30A
          ADDLW     0xff                ; Line 0X30B
          ADDLW     0xff                ; Line 0X30C
          ADDLW     0xff                ; Line 0X30D
          ADDLW     0xff                ; Line 0X30E
          ADDLW     0xff                ; Line 0X30F
          ADDLW     0xff                ; Line 0X310
          ADDLW     0xff                ; Line 0X311
          ADDLW     0xff                ; Line 0X312
          ADDLW     0xff                ; Line 0X313
          ADDLW     0xff                ; Line 0X314
          ADDLW     0xff                ; Line 0X315
          ADDLW     0xff                ; Line 0X316
          ADDLW     0xff                ; Line 0X317
          ADDLW     0xff                ; Line 0X318
          ADDLW     0xff                ; Line 0X319
          ADDLW     0xff                ; Line 0X31A
          ADDLW     0xff                ; Line 0X31B
          ADDLW     0xff                ; Line 0X31C
          ADDLW     0xff                ; Line 0X31D
          ADDLW     0xff                ; Line 0X31E
          ADDLW     0xff                ; Line 0X31F
          ADDLW     0xff                ; Line 0X320
          ADDLW     0xff                ; Line 0X321
          ADDLW     0xff                ; Line 0X322
          ADDLW     0xff                ; Line 0X323
          ADDLW     0xff                ; Line 0X324
          ADDLW     0xff                ; Line 0X325
          ADDLW     0xff                ; Line 0X326
          ADDLW     0xff                ; Line 0X327
          ADDLW     0xff                ; Line 0X328
          ADDLW     0xff                ; Line 0X329
          ADDLW     0xff                ; Line 0X32A
          ADDLW     0xff                ; Line 0X32B
          ADDLW     0xff                ; Line 0X32C
          ADDLW     0xff                ; Line 0X32D
          ADDLW     0xff                ; Line 0X32E
          ADDLW     0xff                ; Line 0X32F
          ADDLW     0xff                ; Line 0X330
          ADDLW     0xff                ; Line 0X331
          ADDLW     0xff                ; Line 0X332
          ADDLW     0xff                ; Line 0X333
          ADDLW     0xff                ; Line 0X334
          ADDLW     0xff                ; Line 0X335
          ADDLW     0xff                ; Line 0X336
          ADDLW     0xff                ; Line 0X337
          ADDLW     0xff                ; Line 0X338
          ADDLW     0xff                ; Line 0X339
          ADDLW     0xff                ; Line 0X33A
          ADDLW     0xff                ; Line 0X33B
          ADDLW     0xff                ; Line 0X33C
          ADDLW     0xff                ; Line 0X33D
          ADDLW     0xff                ; Line 0X33E
          ADDLW     0xff                ; Line 0X33F
          ADDLW     0xff                ; Line 0X340
          ADDLW     0xff                ; Line 0X341
          ADDLW     0xff                ; Line 0X342
          ADDLW     0xff                ; Line 0X343
          ADDLW     0xff                ; Line 0X344
          ADDLW     0xff                ; Line 0X345
          ADDLW     0xff                ; Line 0X346
          ADDLW     0xff                ; Line 0X347
          ADDLW     0xff                ; Line 0X348
          ADDLW     0xff                ; Line 0X349
          ADDLW     0xff                ; Line 0X34A
          ADDLW     0xff                ; Line 0X34B
          ADDLW     0xff                ; Line 0X34C
          ADDLW     0xff                ; Line 0X34D
          ADDLW     0xff                ; Line 0X34E
          ADDLW     0xff                ; Line 0X34F
          ADDLW     0xff                ; Line 0X350
          ADDLW     0xff                ; Line 0X351
          ADDLW     0xff                ; Line 0X352
          ADDLW     0xff                ; Line 0X353
          ADDLW     0xff                ; Line 0X354
          ADDLW     0xff                ; Line 0X355
          ADDLW     0xff                ; Line 0X356
          ADDLW     0xff                ; Line 0X357
          ADDLW     0xff                ; Line 0X358
          ADDLW     0xff                ; Line 0X359
          ADDLW     0xff                ; Line 0X35A
          ADDLW     0xff                ; Line 0X35B
          ADDLW     0xff                ; Line 0X35C
          ADDLW     0xff                ; Line 0X35D
          ADDLW     0xff                ; Line 0X35E
          ADDLW     0xff                ; Line 0X35F
          ADDLW     0xff                ; Line 0X360
          ADDLW     0xff                ; Line 0X361
          ADDLW     0xff                ; Line 0X362
          ADDLW     0xff                ; Line 0X363
          ADDLW     0xff                ; Line 0X364
          ADDLW     0xff                ; Line 0X365
          ADDLW     0xff                ; Line 0X366
          ADDLW     0xff                ; Line 0X367
          ADDLW     0xff                ; Line 0X368
          ADDLW     0xff                ; Line 0X369
          ADDLW     0xff                ; Line 0X36A
          ADDLW     0xff                ; Line 0X36B
          ADDLW     0xff                ; Line 0X36C
          ADDLW     0xff                ; Line 0X36D
          ADDLW     0xff                ; Line 0X36E
          ADDLW     0xff                ; Line 0X36F
          ADDLW     0xff                ; Line 0X370
          ADDLW     0xff                ; Line 0X371
          ADDLW     0xff                ; Line 0X372
          ADDLW     0xff                ; Line 0X373
          ADDLW     0xff                ; Line 0X374
          ADDLW     0xff                ; Line 0X375
          ADDLW     0xff                ; Line 0X376
          ADDLW     0xff                ; Line 0X377
          ADDLW     0xff                ; Line 0X378
          ADDLW     0xff                ; Line 0X379
          ADDLW     0xff                ; Line 0X37A
          ADDLW     0xff                ; Line 0X37B
          ADDLW     0xff                ; Line 0X37C
          ADDLW     0xff                ; Line 0X37D
          ADDLW     0xff                ; Line 0X37E
          ADDLW     0xff                ; Line 0X37F
          ADDLW     0xff                ; Line 0X380
          ADDLW     0xff                ; Line 0X381
          ADDLW     0xff                ; Line 0X382
          ADDLW     0xff                ; Line 0X383
          ADDLW     0xff                ; Line 0X384
          ADDLW     0xff                ; Line 0X385
          ADDLW     0xff                ; Line 0X386
          ADDLW     0xff                ; Line 0X387
          ADDLW     0xff                ; Line 0X388
          ADDLW     0xff                ; Line 0X389
          ADDLW     0xff                ; Line 0X38A
          ADDLW     0xff                ; Line 0X38B
          ADDLW     0xff                ; Line 0X38C
          ADDLW     0xff                ; Line 0X38D
          ADDLW     0xff                ; Line 0X38E
          ADDLW     0xff                ; Line 0X38F
          ADDLW     0xff                ; Line 0X390
          ADDLW     0xff                ; Line 0X391
          ADDLW     0xff                ; Line 0X392
          ADDLW     0xff                ; Line 0X393
          ADDLW     0xff                ; Line 0X394
          ADDLW     0xff                ; Line 0X395
          ADDLW     0xff                ; Line 0X396
          ADDLW     0xff                ; Line 0X397
          ADDLW     0xff                ; Line 0X398
          ADDLW     0xff                ; Line 0X399
          ADDLW     0xff                ; Line 0X39A
          ADDLW     0xff                ; Line 0X39B
          ADDLW     0xff                ; Line 0X39C
          ADDLW     0xff                ; Line 0X39D
          ADDLW     0xff                ; Line 0X39E
          ADDLW     0xff                ; Line 0X39F
          ADDLW     0xff                ; Line 0X3A0
          ADDLW     0xff                ; Line 0X3A1
          ADDLW     0xff                ; Line 0X3A2
          ADDLW     0xff                ; Line 0X3A3
          ADDLW     0xff                ; Line 0X3A4
          ADDLW     0xff                ; Line 0X3A5
          ADDLW     0xff                ; Line 0X3A6
          ADDLW     0xff                ; Line 0X3A7
          ADDLW     0xff                ; Line 0X3A8
          ADDLW     0xff                ; Line 0X3A9
          ADDLW     0xff                ; Line 0X3AA
          ADDLW     0xff                ; Line 0X3AB
          ADDLW     0xff                ; Line 0X3AC
          ADDLW     0xff                ; Line 0X3AD
          ADDLW     0xff                ; Line 0X3AE
          ADDLW     0xff                ; Line 0X3AF
          ADDLW     0xff                ; Line 0X3B0
          ADDLW     0xff                ; Line 0X3B1
          ADDLW     0xff                ; Line 0X3B2
          ADDLW     0xff                ; Line 0X3B3
          ADDLW     0xff                ; Line 0X3B4
          ADDLW     0xff                ; Line 0X3B5
          ADDLW     0xff                ; Line 0X3B6
          ADDLW     0xff                ; Line 0X3B7
          ADDLW     0xff                ; Line 0X3B8
          ADDLW     0xff                ; Line 0X3B9
          ADDLW     0xff                ; Line 0X3BA
          ADDLW     0xff                ; Line 0X3BB
          ADDLW     0xff                ; Line 0X3BC
          ADDLW     0xff                ; Line 0X3BD
          ADDLW     0xff                ; Line 0X3BE
          ADDLW     0xff                ; Line 0X3BF
          ADDLW     0xff                ; Line 0X3C0
          ADDLW     0xff                ; Line 0X3C1
          ADDLW     0xff                ; Line 0X3C2
          ADDLW     0xff                ; Line 0X3C3
          ADDLW     0xff                ; Line 0X3C4
          ADDLW     0xff                ; Line 0X3C5
          ADDLW     0xff                ; Line 0X3C6
          ADDLW     0xff                ; Line 0X3C7
          ADDLW     0xff                ; Line 0X3C8
          ADDLW     0xff                ; Line 0X3C9
          ADDLW     0xff                ; Line 0X3CA
          ADDLW     0xff                ; Line 0X3CB
          ADDLW     0xff                ; Line 0X3CC
          ADDLW     0xff                ; Line 0X3CD
          ADDLW     0xff                ; Line 0X3CE
          ADDLW     0xff                ; Line 0X3CF
          ADDLW     0xff                ; Line 0X3D0
          ADDLW     0xff                ; Line 0X3D1
          ADDLW     0xff                ; Line 0X3D2
          ADDLW     0xff                ; Line 0X3D3
          ADDLW     0xff                ; Line 0X3D4
          ADDLW     0xff                ; Line 0X3D5
          ADDLW     0xff                ; Line 0X3D6
          ADDLW     0xff                ; Line 0X3D7
          ADDLW     0xff                ; Line 0X3D8
          ADDLW     0xff                ; Line 0X3D9
          ADDLW     0xff                ; Line 0X3DA
          ADDLW     0xff                ; Line 0X3DB
          ADDLW     0xff                ; Line 0X3DC
          ADDLW     0xff                ; Line 0X3DD
          ADDLW     0xff                ; Line 0X3DE
          ADDLW     0xff                ; Line 0X3DF
          ADDLW     0xff                ; Line 0X3E0
          ADDLW     0xff                ; Line 0X3E1
          ADDLW     0xff                ; Line 0X3E2
          ADDLW     0xff                ; Line 0X3E3
          ADDLW     0xff                ; Line 0X3E4
          ADDLW     0xff                ; Line 0X3E5
          ADDLW     0xff                ; Line 0X3E6
          ADDLW     0xff                ; Line 0X3E7
          ADDLW     0xff                ; Line 0X3E8
          ADDLW     0xff                ; Line 0X3E9
          ADDLW     0xff                ; Line 0X3EA
          ADDLW     0xff                ; Line 0X3EB
          ADDLW     0xff                ; Line 0X3EC
          ADDLW     0xff                ; Line 0X3ED
          ADDLW     0xff                ; Line 0X3EE
          ADDLW     0xff                ; Line 0X3EF
          ADDLW     0xff                ; Line 0X3F0
          ADDLW     0xff                ; Line 0X3F1
          ADDLW     0xff                ; Line 0X3F2
          ADDLW     0xff                ; Line 0X3F3
          ADDLW     0xff                ; Line 0X3F4
          ADDLW     0xff                ; Line 0X3F5
          ADDLW     0xff                ; Line 0X3F6
          ADDLW     0xff                ; Line 0X3F7
          ADDLW     0xff                ; Line 0X3F8
          ADDLW     0xff                ; Line 0X3F9
          ADDLW     0xff                ; Line 0X3FA
          ADDLW     0xff                ; Line 0X3FB
          ADDLW     0xff                ; Line 0X3FC
          ADDLW     0xff                ; Line 0X3FD
          ADDLW     0xff                ; Line 0X3FE
;          ADDLW     0xff                ; Line 0X3FF
RESTET:
         ORG           03FFH
         GOTO          0000H


         END


;********************************************
;               CODE END                    
;********************************************
