'''
Таблица
Программа должна считывать одну строку со стандартного ввода и выводить для каждого уникального слова в этой строке число его
повторений (без учёта регистра) в формате "слово количество" (см. пример вывода).
Порядок вывода слов может быть произвольным, каждое уникальное слово﻿ должно выводиться только один раз.

Sample Input 1:
    a aa abC aa ac abc bcd a

Sample Output 1:
    a 2
    aa 2
    abc 2
    ac 1
    bcd 1

'''
lst = [i.lower() for i in input().split()]
d = {}
while len(lst) > 0:
    if lst[0] not in d:
        d[lst[0]] = 1
        lst.remove(lst[0])
    else:
        d[lst[0]] += 1
        lst.remove(lst[0])
for key, value in d.items():
    print (key, value)
