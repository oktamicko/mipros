        ORG 0H
MULAI:
        MOV     A,P3
        CJNE    A,#0FEH,MULAI
        CJNE    R0,#0,TERUS
        MOV     R0,#1
        MOV     P1,#0
TUNGGU:
        MOV     A,P3
        CJNE    A,#0FFH,TUNGGU
        SJMP    MULAI
TERUS:
        MOV     R0,#0
        MOV     P1,#0FFH
        SJMP    TUNGGU
        END