        ORG 10H
        MOV P2, #01H
MULAI:
        MOV A,P3
        CJNE A, #0FEH, TERUS
        MOV P2, #01H
        SJMP MULAI

TERUS:
        CJNE A, #0FDH, TERUS2
        MOV p2, #02H
        SJMP MULAI

TERUS2:
        CJNE A, #0FBH, MULAI
        MOV p2, #04H
        SJMP MULAI
END