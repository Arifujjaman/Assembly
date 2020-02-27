INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
X DB 80 DUP ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV SI,0
    PRINT 'ENTER THE REF STRING : '
    MOV AH,1
    LOOP1:
    INT 21H
    CMP AL,13
    JE EXIT
    MOV X[SI],AL
    INC SI
    JMP LOOP1
    
    EXIT:DEC SI
    
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    PRINT 'REVERSE STRING : '
    
    LOOP2:
    MOV AH,2
    MOV DL,X[SI]
    INT 21H
    CMP SI,0
    JE EXIT2
    DEC SI
    JMP LOOP2
    
    EXIT2:
      
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN