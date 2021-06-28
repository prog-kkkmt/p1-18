# Задание 2. https://pythontutor.ru/lessons/dicts/problems/permissions/
# Задача «Права доступа»
# Условие. В файловую систему одного суперкомпьютера проник вирус, который сломал контроль 
# за правами доступа к файлам. Для каждого файла известно, с какими действиями можно к 
# нему обращаться:
# запись W,
# чтение R,
# запуск X.
# В первой строке содержится число N — количество файлов содержащихся в данной файловой 
# системе. В следующих N строчках содержатся имена файлов и допустимых с ними операций, 
# разделенные пробелами. Далее указано чиcло M — количество запросов к файлам. В последних 
# M строках указан запрос вида Операция Файл. К одному и тому же файлу может быть применено 
# любое колличество запросов.
# Вам требуется восстановить контроль над правами доступа к файлам (ваша программа для 
# каждого запроса должна будет возвращать OK если над файлом выполняется допустимая 
# операция, или же Access denied, если операция недопустима. 

N = int(input('File count: '))

operations = ('r', 'w', 'x')

files = dict()
for _ in range(N):
    x = input().strip().split()
    files[x[0]] = map(str.lower, x[1:])
    # if files[x[0]] not in operations:

M = int(input('Operation count: '))

for _ in range(M):
    x = input().split()

    if x[1] not in files:
        print('File not exist')
        continue
    if x[0].lower() not in operations:
        print('Invalid operation')
        continue

    if x[0].lower() in files[x[1]]:
        print('OK')
    else:
        print('Access denied')