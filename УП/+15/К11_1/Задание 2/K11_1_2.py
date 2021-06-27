#Выполнили: Герасимов Дмитрий, Груздев Роман
#Группа: П1-18
'''
К11_1. Техника работы со словарями

Задание 2. https://pythontutor.ru/lessons/dicts/problems/permissions/
Задача «Права доступа»
Условие. В файловую систему одного суперкомпьютера проник вирус, который сломал контроль 
за правами доступа к файлам. Для каждого файла известно, с какими действиями можно к 
нему обращаться:
запись W,
чтение R,
запуск X.
В первой строке содержится число N — количество файлов содержащихся в данной файловой 
системе. В следующих N строчках содержатся имена файлов и допустимых с ними операций, 
разделенные пробелами. Далее указано чиcло M — количество запросов к файлам. В последних 
M строках указан запрос вида Операция Файл. К одному и тому же файлу может быть применено 
любое колличество запросов.
Вам требуется восстановить контроль над правами доступа к файлам (ваша программа для 
каждого запроса должна будет возвращать OK если над файлом выполняется допустимая 
операция, или же Access denied, если операция недопустима.
'''

d = dict()
for i in range(int(input())):
    list_ = input().split()
    d[list_[0]] = list_[1:]

for i in range(int(input())):
    command, name = input().split()

    if command == 'read':
        command = 'R'
    elif command == 'write':
        command = 'W'
    elif command == 'execute':
        command = 'X'
    
    if command in d[name]:
        print('OK')
    else:
        print('Access denied')

