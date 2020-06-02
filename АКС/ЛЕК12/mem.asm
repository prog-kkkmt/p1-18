org 100h

counter dw 10000
filename db 'a:\myfile.txt'
setbit db 80h
rawdata dw 300 dup (1) ; Резервируются 300 слов, заполненных числом 1
string db 80 dup ('*') ; Резервируются 80 байтов, заполненных знаком '*'
pages db 'Страница 1'
numbers db 0, 1, 2, 3, 4
page_addr dw pages

ret




