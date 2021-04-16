'''
Контейнерные типы данных модуля collections.
Класс Counter() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-counter-modulja-collections/
'''

from collections import Counter

#   класс collections.Counter() предназначен для удобныхи быстрых подсчетов
#   количества появлений неизменяемых элементов в последовательностях.

count = Counter([1, 2, 3, 4, 1, 3, 1, 2])

dict(count)
print(count)                    #   Counter({1: 3, 2: 2, 3: 2, 4: 1})

#   Класс Counter() модуля collections - это подкласс словаря dict для подсчета хеш-объектов
#   (неизменяемых, таких как строки, числа, кортежи и т.д.). Это коллекция, в которой элементы хранятся
#   в виде словарных ключей, а их счетчики хранятся в виде значений словаря.

print(sorted(count.elements())) #   [1, 1, 1, 2, 2, 3, 3, 4]

count.update('100')

print(count)
