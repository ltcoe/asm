
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
arr db 02h,43h,22h,39h
count dw 4h

.code
mov ax,@data
mov ds,ax

mov cx,count
dec cx

nextscan: mov bx,cx
          lea si,arr

nextcmp: mov al,[si]
         mov dl,[si+1]
         cmp al,dl
         jnc noswap
         mov [si],dl
         mov [si+1],al
         
noswap: inc si
        dec bx
        jnz nextcmp
        loop nextscan 

ret




