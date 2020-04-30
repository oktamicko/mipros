        ORG 0H
MULAI:
        MOV     A,P3
        CJNE    A,#0FEH,TERUS
        MOV     P1,#00000000B
        SJMP    MULAI
TERUS:
        CJNE    A,#0FDH,MULAI
        MOV     P1,#11111111B
        SJMP    MULAI
        END