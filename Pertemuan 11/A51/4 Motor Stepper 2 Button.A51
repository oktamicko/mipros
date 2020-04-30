        ORG 10H
MULAI:
        MOV     A, P3
        CJNE    A, #0FEH, TERUS

        MOV     P2, #00000111B
        ACALL   DELAY
        MOV     P2, #00000011B
        ACALL   DELAY
        MOV     P2, #00001011B
        ACALL   DELAY
        MOV     P2, #00001001B
        ACALL   DELAY
        MOV     P2, #00001101B
        ACALL   DELAY
        MOV     P2, #00001100B
        ACALL   DELAY
        MOV     P2, #00001110B
        ACALL   DELAY
        MOV     P2, #00000110B
        ACALL   DELAY
        SJMP    MULAI

TERUS:
        CJNE    A, #0FDH, MULAI

        MOV     P2, #00000110B
        ACALL   DELAY
        MOV     P2, #00001110B
        ACALL   DELAY
        MOV     P2, #00001100B
        ACALL   DELAY
        MOV     P2, #00001101B
        ACALL   DELAY
        MOV     P2, #00001001B
        ACALL   DELAY        
        MOV     P2, #00001011B
        ACALL   DELAY
        MOV     P2, #00000011B
        ACALL   DELAY
        MOV     P2, #00000111B
        ACALL   DELAY

        SJMP    MULAI
DELAY:  MOV R0, #1H
DELAY1: MOV R1, #050H
DELAY2: MOV R2, #0H
        DJNZ R2, $
        DJNZ R1, DELAY2
        DJNZ R0, DELAY1
        RET
END     