        ORG 10H
MULAI:
        MOV A,P3
        CJNE A, #0FEH, TERUS
        MOV P2, #01H
        SJMP MULAI

TERUS:
        CJNE A, #0FDH, MULAI
        MOV p2, #0H
        SJMP MULAI
END