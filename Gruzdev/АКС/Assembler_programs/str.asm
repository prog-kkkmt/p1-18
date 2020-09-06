org 100h

jmp start
priv_str db 'priv$'
start:  lea dx, priv_str
        mov ah, 09h
        int 21h
mov ah, 0
int 16h

ret