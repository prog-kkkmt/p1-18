org 100h

a db ?
b db ?
c db ?
x db ?
y dd ?

_start:
    mov al, x
    mov bl, x
    mul bl    ; x * x
    
    mov al, x
    mov cl, b
    mul cl     ; b * x
    
    mov dl, a
    mov dh, bl
    mul dh     ; a * x * x
    
    add cl, dh ; (b * x) + (a * x * x)
    add cl, c  ;
    
    int 21h
    
    ret     
    