                                                     .MODEL SMALL
.STACK 100H

.DATA
;MSG DB 'PLEASE ENTER A STRING: ', '$'  
X DB 80 DUP (?) 

.CODE
MAIN PROC
    
MOV AX, @DATA  
MOV DS, AX  

;LEA DX, MSG
;MOV AH, 09H 
;INT 21H

MOV SI, 0
LOOP1:
MOV AH, 1
INT 21H
CMP AL, 0DH
JZ EXIT
MOV X[SI], AL
INC SI
JMP LOOP1

EXIT:  
DEC SI
         
MOV AH, 2
MOV DL, 0DH
INT 21H
MOV AH, 2
MOV DL, 0AH
INT 21H
         
LOOP2:
MOV AH, 2   
MOV DL, X[SI]
INT 21H      
CMP SI, 0
JZ EXIT2
DEC SI
JMP LOOP2   

EXIT2: