     ORG 0H
MULAI:
        MOV     P1,#00001111B
        ACALL   tunda
        MOV     P1,#11110000B
        ACALL   tunda
        SJMP    MULAI

tunda:
        MOV     R0,#5H
DELAY1:
        MOV     R1,#0FFH
DELAY2:
        MOV     R2,#0FFH
        DJNZ    R2,$
        DJNZ    R1,DELAY2
        DJNZ    R0,DELAY1
        RET
        END