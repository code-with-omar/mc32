
org 100h
MOV AL,12H
MOV BL,21H
MOV DI,200
MOV SI,100H
MOV CX,8
LOOP:MOV [DI],AL
MOV [DI],BL
INC SI
INC DI
ADD AL,11H
ADD BL,11H
DEC CX
JNZ LOOP
MOV AX,[SI]
ADD AX,[DI]
MOV [DI],AX
MOV AX,[SI+2]
ADD AX,[DI+2]
MOV [DI+2],AX
CLC
MOV AX,[SI+4]

ADD AX,[DI+4]

MOV [DI+4],AX
MOV AX,[SI+6]

ADD AX,[DI+6]

MOV [DI+6],AX
ret

INS AAA DAA

  ORG 100H
 MOV AL,38H
 MOV BL,39H
 ADD AL,BL
 AAA
 MOV AL,25H
 MOV BL,56H
 ADD AL,BL
 DAA
 RET
   




