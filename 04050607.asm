 MOV AX, 25         ;MUL OF 25 INTO 10
 MOV BX, AX
 SHL AX,3
 SHL BX,1
 ADD AX, BX

     MOV AX, 500         ;MUL OF 500 INTO 10
 MOV BX, AX
 SHL AX,3
 SHL BX,1
 ADD AX, BX




 ferhrenheit to Celsius EX05
MOV AX,59D
SUB AX,32D
MOV CX,5D
MUL CX
MOV BX,9D
DIV BX
 

EXPRESSSION EX05

  MOV AL,10D
  MOV BL,5D
  MUL BL
  MOV CX,AX
  MOV AX,0D
  MOV BH,8
  MOV BL,6
  MUL BL
  MOV AL,BH
  DIV BH
  ADD CX,AX
  

EXP06
 .DATA 
 NAMEA DW 'MD FOZLUL HAQUE $'
 ROLL DW '190521 $'
    .CODE 
      MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 

        MOV AH,9
        MOV DX,OFFSET NAMEA 
        INT 21H
        
        
        MOV AH,2
        MOV DL, 13
        INT 21H
         
         
        MOV AH,2 
        MOV DL,10
        INT 21H
        
        
        MOV AH,9
        MOV DX,OFFSET ROLL
        INT 21H
        PROC END 
            END MAIN

EXP07


MOV AH,01
INT 21H 

MOV BL , AL  

CMP BL, 97 
JGE STB

 BTS:
 ADD BL,32       ;lower case to uper case 
 MOV AH,02
 MOV DL,BL
 INT 21H

 JMP EX

 STB:   
 SUB BL, 32
 MOV AH ,02
 MOV DL , BL 
 INT 21H
 
 EX:
 MOV AH,4CH
 INT 21H