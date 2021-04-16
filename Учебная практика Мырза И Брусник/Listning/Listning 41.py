'''
Класс defaultdict() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-defaultdict-modulja-collections/
'''

from collections import defaultdict

'''
Класс defaultdict() модуля collections возвращает новый словарь-подобный объект.
Defaultdict является подклассом встроенного класса dict(). Он переопределяет один метод и
добавляет одну доступную для записи переменную экземпляра. Остальная функциональность такая же,
как и для класса dict(), и здесь она не описана.

Первый аргумент предоставляет начальное значение для атрибута default_factory.
По умолчанию None. Все остальные аргументы обрабатываются так же,
как если бы онибыли переданы конструктору dict(), включая ключевые аргументы.
'''

s = [('yellow', 1), ('blue', 2), ('yellow', 3), ('blue', 4), ('red', 1)]
d = defaultdict(list)
for k, v in s:
    d[k].append(v)

print(sorted(d.items()))    #   [('blue', [2, 4]), ('red', [1]), ('yellow', [1, 3])]

s = [('yellow', 1), ('blue', 2), ('yellow', 3), ('blue', 4), ('red', 1)]
d = {}
for k, v in s:
    d.setdefault(k, []).append(v)

print(d)                    #   {'yellow': [1, 3], 'blue': [2, 4], 'red': [1]}

s = 'mississippi'
d = defaultdict(int)
for k in s:
    d[k] += 1

print(sorted(d.items()))    #   [('i', 4), ('m', 1), ('p', 2), ('s', 4)]
