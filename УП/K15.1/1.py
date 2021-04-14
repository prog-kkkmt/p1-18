'''
Задача №1. Контейнерные типы данных модуля collections. Добавление и удаление очереди.
'''
from collections import deque
a = deque([1,2,3])
a.appendleft(0)
print(a)
a.popleft()
print(a)
print(a[0])
a.popleft()
print(a)
a.append(10)
print(a)
