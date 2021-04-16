'''
http://ptaskbook.com/ru/tasks/text.php
Text12. Дана строка S и текстовый файл. Заменить в файле все пустые строки на строку S.
'''

lst = []
string = input()

with open('file.txt', 'r') as file:
    for line in file:
        s = string+'\n' if line == '\n' else line
        lst.append(s)
    file.close()

with open('file2.txt', 'w') as file:
    for i in range(len(lst)):
        file.write(str(lst[i]))
    file.close()

with open('file2.txt', 'r') as file:
    for line in file:
        print(line,end='')
    file.close()
