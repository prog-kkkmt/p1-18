# Задание 1. http://ptaskbook.com/ru/tasks/text.php
# Text5. Дана строка S и текстовый файл. Добавить строку S в конец файла. 

S = input('S: ')
filename = input('File name: ')

f = open(filename, 'a')
f.write(S)