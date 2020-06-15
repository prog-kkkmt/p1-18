org 100h  

mov ah, 02
mov dl, 1
mov cx, 255
print:  int 21h
        inc dl
loop print

mov ah, 0
int 16h
ret
