name "print_0_1"

org 100h

mov ah, 2   
mov dl, 'H'
int 21h
mov ah, 2   
mov dl, 'I'
int 21h 

MOV AH, 02h  
MOV DL, 9h  
INT 21h 
    
mov ah, 2   
mov dl, 'W'
int 21h

mov cx, 10          
print: mov ah, 2    
       mov dl, 'O'  
       int 21h     
      
loop print

mov ah, 2   
mov dl, 'R'
int 21h
mov ah, 2   
mov dl, 'L'
int 21h
mov ah, 2   
mov dl, 'D'
int 21h

mov ah, 0
int 16h

ret
