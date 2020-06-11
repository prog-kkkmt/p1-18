
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

name "hello bro"

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
mov dl, 'B'
int 21h
mov ah, 2   
mov dl, 'R'
int 21h

mov cx, 10          
print: mov ah, 2    
       mov dl, 'O'  
       int 21h     
      
loop print

mov ah, 0
int 16h

ret





