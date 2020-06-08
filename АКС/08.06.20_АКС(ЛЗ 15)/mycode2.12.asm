org 100h

n db ?
k dw ?

_start:
    mov al, n  
    inc n
    
    mov bl, n
    mul al
    
    mov bx, 2
    div bx
    
    mov k, bx
end:
    ret        