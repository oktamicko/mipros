
        ORG 0H
MULAI:
        MOV     A,P3
        CJNE    A,#0FCH,TERUS
        MOV     P1,#81H
        ACALL   DELAY
        MOV     P1,#42H
        ACALL   DELAY
        MOV     P1,#24H
        ACALL   DELAY
        MOV     P1,#18H
        ACALL   DELAY
        SJMP    MULAI
TERUS:
        CJNE    A,#0FDH,TERUS2
        MOV     P1,#80H
        ACALL   DELAY
        MOV     P1,#40H
        ACALL   DELAY
        MOV     P1,#20H
        ACALL   DELAY
        MOV     P1,#10H
        ACALL   DELAY
        MOV     P1,#8H
        ACALL   DELAY
        MOV     P1,#4H
        ACALL   DELAY
        MOV     P1,#2H
        ACALL   DELAY
        MOV     P1,#1H
        ACALL   DELAY
        SJMP    MULAI
        
TERUS2:
        CJNE    A,#0FEH,TERUS3
        MOV     P1,#1H
        ACALL   DELAY
        MOV     P1,#2H
        ACALL   DELAY
        MOV     P1,#4H
        ACALL   DELAY
        MOV     P1,#8H
        ACALL   DELAY
        MOV     P1,#10H
        ACALL   DELAY
        MOV     P1,#20H
        ACALL   DELAY
        MOV     P1,#40H
        ACALL   DELAY
        MOV     P1,#80H
        ACALL   DELAY
        SJMP MULAI

TERUS3:
        CJNE    A,#0FFH,MULAI
        MOV     P1,#18H
        ACALL   DELAY
        MOV     P1,#24H
        ACALL   DELAY
        MOV     P1,#42H
        ACALL   DELAY
        MOV     P1,#81H
        ACALL   DELAY
        SJMP    MULAI

DELAY:
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