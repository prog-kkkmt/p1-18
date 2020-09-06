name "print_Z"

org 100h

mov ah, 2   
mov dl, 'Z'
int 21h    

mov ah, 0
int 16h

ret