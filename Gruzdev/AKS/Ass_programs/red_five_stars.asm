org 100h

mov ah, 09
mov al, '*'
mov bh, 00
mov bl, 040h
mov cx, 05
int 10h

ret