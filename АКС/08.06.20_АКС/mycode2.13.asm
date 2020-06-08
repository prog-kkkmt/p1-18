org 100h

a dw ?
b dw ?

_start:
    mov al, a
    mov bl, 1000
    div al       ; (a div 1000)
    
    mov cl, al   ; cl = (a div 1000) al = (a div 1000)
    mul al       ; al = al * cl
    
    mov b, al    ; b = al    
    
    ret