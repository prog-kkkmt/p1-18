org 100h

jmp start

str_hello db 'hello!$'
start: 
    lea dx, str_hello
    mov ah, 09h
    int 21h

mov ah, 0
int 16h