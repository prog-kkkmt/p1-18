'''
Задание 2. Контейнерные типы данных модуля collections.
Класс OrderedDict() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-ordereddict-modulja-collections/
'''

from collections import OrderedDict
W = OrderedDict.fromkeys('Hello, world!')
W.move_to_end('H')
print(''.join(W.keys()))
W.move_to_end('H', last=False)
print(''.join(W.keys()))
W.popitem(last=True)
print(''.join(W.keys()))
