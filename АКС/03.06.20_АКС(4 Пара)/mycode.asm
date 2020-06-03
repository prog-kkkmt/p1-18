org 100h

;a)
_start:
    mov al, 100
    add al, 100
    loop _start
    mov ah, al
    int 21h;

mov ah, 0

;B)
top:
    mov al, 100
    add al, 156
    loop _start
    mov ah, al
    int 21h;

mov ah, 0


;C)
_loop:
    mov al, 100
    sub al, 90
    loop _loop
    mov ah, al
    int 21h
    
mov ah, 0

;D)
labell:
    mov al, 100
    sub al, 190
    loop labell
    mov ah, al
    int 21h
    
mov ah, 0
     
      
ret