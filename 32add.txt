
org 100h

.model small
.data
n1 dd 12123434h
n2 dd 12123434h

.code
MOV AX,@data
MOV DS,AX

MOV AX,word ptr n1
MOV BX,word ptr n2
ADD AX,BX
MOV BX,AX
MOV AX,word ptr n1+2
MOV CX,word ptr n2+2
ADC AX,CX ; AX has upper 16 bit result and BX has lower 16 bit

MOV ah,4ch
int 21h
ret




