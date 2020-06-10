name print_ab

org 100h 

MOV AH, 02h  
MOV DL, 48h ; ASCII - code symbol 'H'  
INT 21h      
MOV DL, 0Dh  
INT 21h       
MOV DL, 0Ah  
INT 21h      
MOV DL, 'I' 
INT 21h      

ret
