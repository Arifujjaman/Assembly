.MODEL SMALL
.STACK 100H
.CODE

  
  
  MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
   
   
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
   
    MOV AL,BL
    CMP AL,95
    JL SCASE
    SUB AL,64
    SCASE:
    ADD AL,32
    MOV DL,AL
    MOV AH,2
    INT 21H
   
    MAIN ENDP
   END MAIN 