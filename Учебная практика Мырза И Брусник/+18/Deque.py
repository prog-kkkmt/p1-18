'''
Класс deque() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-deque-modulja-collections/
'''

from collections import deque
dq = deque('ghi')

'''
Класс deque() модуля collections возвращает новый объект deque(),
инициализированный слева направо данными из итерируемой последовательности iterable.

При создании объекта очереди класс использует метод dq.append() для добавления элементов
из итерации iterable. Если итерация не указана, новая очередь deque() будет пуста.
'''

print(dq)   #   deque(['g', 'h', 'i'])
print(*dq)  #   g h i

dq.append('. Hello!')

print(dq)   #   deque(['g', 'h', 'i', '. Hello!'])
print(*dq)  #   g h i . Hello!

dq.popleft()
dq.popleft()
dq.popleft()

print(dq)   #   deque(['. Hello!'])

print(dq.count('. Hello!'))
            #   1

dq.remove('. Hello!')

print(dq)

for i in range(3):
    dq.append(input())

print(dq)

dq.clear()

print(dq)   #   deque([])

