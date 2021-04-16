'''
Контейнерные типы данных модуля collections.
https://docs-python.ru/standart-library/modul-collections-python/
Класс deque() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-deque-modulja-collections/
'''

from collections import ChainMap

#   d = collections.ChainMap(*maps) #   maps - один/несколько словарь/ей .

#   Класс ChainMap() модуля collections группирует несколько словарей или других сопоставлений для создания
#   единого обновляемого представления. Если словари maps не указаны, то будет создан один пустой словарь.

d   = {
    'two': 22, 'three': 3
}

d2  = {
    'one': 1, 'two': 2
}

dict = ChainMap(d, d2)

print(dict) # ChainMap({'two': 22, 'three': 3}, {'one': 1, 'two': 2})

dict = ChainMap({'Year': int(input())}, {'Month': input()})

print(dict)
