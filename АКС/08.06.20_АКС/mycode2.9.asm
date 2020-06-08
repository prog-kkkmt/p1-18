org 100h

a equ 7
;x db ?

; a)
mov al, x
mov bl, 3
mul bl
mov x, bl
x db ?
