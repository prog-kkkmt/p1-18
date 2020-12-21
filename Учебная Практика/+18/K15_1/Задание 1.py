'''
Задание 1. Контейнерные типы данных модуля collections.
https://docs-python.ru/standart-library/modul-collections-python/
Класс deque() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-deque-modulja-collections/
'''

import collections

str1 = input()
str2 = "234523"
Dq = collections.deque(str1)
Dq.append(str2)
print(Dq)
Dq.extend('ehwr')
print(Dq)
Dq.extendleft('ab')
print(Dq)
print()
print("Dq.index('a', 1) =>", Dq.index('a', 1))
print("Dq.pop() =>", Dq.pop())
print(Dq)
print("Dq.popleft() =>", Dq.popleft())
print(Dq)
print()
Dq.reverse()
print(Dq)
Dq.rotate(1)
print(Dq)
Dq.rotate(2)
print(Dq)
Dq.rotate(-2)
print(Dq)
Dq.rotate(-1)
print(Dq)
