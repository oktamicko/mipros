;Program untuk menghidupkan tampilan 2x7-segment
;$mod51
      ORG 0H
MULAI:
        MOV     DPTR,#Kamar
        MOV     R6,#02H
        MOV     R1,#02H
ULANG:
        CLR     A
        MOVC    A,@A+DPTR
        INC     DPTR
        MOV     P1,A
        MOV     A,R1
        MOV     P3,A
        RR      A
        MOV     R1,A
        
        ACALL   DELAY
        MOV     P1,#00H
        ACALL   DELAY
        DJNZ    R6,ULANG
        JMP     MULAI

DELAY:
        MOV     R2,#02H
DELAY1:
        MOV     R3,#03H
DELAY2:
        MOV     R4,#0FFH
        DJNZ    R4,$
        DJNZ    R3,DELAY2
        DJNZ    R2,DELAY1
        RET

Kamar:  DB 086H, 0DBH
END