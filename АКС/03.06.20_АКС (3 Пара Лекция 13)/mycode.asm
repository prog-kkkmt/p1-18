org 100h

n db 10
       
_start:
    mov ah, 34       
    ;mov al, 000000001b
    ;mov ax, 100000000b
    add ah, 12     ; ah = 34 + 12
    ;add ah, -300   ; ah = 46 + (-300)

    mov al, 2
    mul n    ; ax = 2 * 10 = 20 = 0014h: ah = 00h, al = 14h

    mov al, 26
    mul n    ; ax = 26 * 10 = 260 = 0104h: ah 01h, al = 04h

    mov ax, 8
    mov bx, -1
    imul bx  ; (dx, ax) = -8 = 0FFFFFFF8h: dx = 0FFFFh, ax = 0FFF8h

    mov bl, 5
    inc bl  ; bl = bl + 1
    dec ax  ; ax = ax - 1

    mul si, bx, 3
    ;imul dx, 5, -10
    mov ah, 0
    neg ah   ; ah = -1
    
    int 21h
    
    jmp labell    
    jmp exit

labell:
    mov al, 4
    imul al    ;ax = 4 * 4
    ;imul ax, 5 ;ax = 4 * 4 * 5
    
    mov bx, 5
    imul bx, 5, -7; bx = 5 * (-7)
    add ax, bx
    mov 5, ax 
    
exit:
    ret