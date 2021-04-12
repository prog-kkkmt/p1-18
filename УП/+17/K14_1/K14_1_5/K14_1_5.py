#Выполнили: Груздев Роман, Герасимов Дмитрий
#Группа: П1-18
'''
К14_1. Техника работы с файлами
Задание 5. http://ptaskbook.com/ru/tasks/text.php
Text53. Дан текстовый файл. Создать символьный файл, содержащий все знаки препинания,
встретившиеся в текстовом файле (в том же порядке).
'''

from string import punctuation

with open("file.txt", "r") as fin:
    list = [line for line in fin]

punc = set()

for i in range(len(list)):
    for j in range(len(list[i])):
        if list[i][j] in punctuation:
            punc.add(list[i][j])

fout = open("file2.txt", "w")
fout.write("Знаки пунктуации:\n"+str(punc))
fout.close()