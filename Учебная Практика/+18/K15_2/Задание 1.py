'''
Задание 1. Контейнерные типы данных модуля collections.
https://docs-python.ru/standart-library/modul-collections-python/
Класс defaultdict() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-defaultdict-modulja-collections/
'''
from collections import Counter
from collections import defaultdict

print("<Counter>")
count = Counter([1, 2, 3, 2])
dict(count)
print(count)  
print(sorted(count.elements()))
count.update('100')
print(count)
print()

print("<defaultdict>")
s = [('yellow', 1), ('blue', 2), ('yellow', 3), ('blue', 4), ('red', 1)]
d = defaultdict(list)
for k, val in s:
    d[k].append(val)
print(sorted(d.items()))   
s = [('yellow', 1), ('blue', 2), ('yellow', 3), ('blue', 4), ('red', 1)]
d = {}
for k, val in s:
    d.setdefault(k, []).append(val)
print(d)                    
s = 'mississippi'
d = defaultdict(int)
for k in s:
    d[k] += 1
print(sorted(d.items()))   
