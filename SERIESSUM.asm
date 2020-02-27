INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
N DB 0
.CODE
MOV AX,@DATA
MOV DS,AX
MAIN PROC 
    PRINT "ENTER THE NUMBER :"
    MOV AH,1
    INT 21H
    MOV N,AL
    SUB N,30H
    
    MOV AL,0
    MOV BH,0
    
    FOR:
    CMP AL,N
    JG EXIT
    ADD BH,AL
    INC AL
    JMP FOR
    
    
    EXIT:
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
           
    PRINT "SERIES SUMMATION RESULT: "
    ADD BH,30H
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

    