
'''
Класс namedtuple() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-namedtuple-modulja-collections/
'''

from collections import namedtuple

Range = namedtuple('Range', ['first', 'second'])
                                # создаем с позиционным или именованным параметром
d = Range(int(input()), int(input()))
                                # можно обращаться по индексу
                                # как к обычному кортежу
print(d[1] - d[0])

F, S = d

print(F - S)                    # Распаковка .

F, S = d._replace(first = 0)    # Не запоминает в кортеже .

print(F - S)                    # -10
print(d.first - d.second)       # -5

print(d)                        # Range(first=5, second=10)

d = {'from': int(input()), 'to': int(input())}

print(d)
