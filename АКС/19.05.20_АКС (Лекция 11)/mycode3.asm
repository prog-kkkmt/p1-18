.model tiny
.code
org 100h
start:
    mov ah, 2
    mov dl, 41h
    int 21h
    int 20h
    end start