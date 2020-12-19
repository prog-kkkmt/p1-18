# Выполнил Курбанмухаммедов Стив
# Группа П1-18
'''
УП.01 Учебная практика по модулю ПМ.01
Консультация 15. Техника работы с модулями
15-1.
Составитель: Гусятинер Л.Б., 3.12.2020, МГОТУ ККМТ, П1-18, П2-18

Задание 1. Контейнерные типы данных модуля collections.
https://docs-python.ru/standart-library/modul-collections-python/
Класс deque() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-deque-modulja-collections/

Задание 2. Контейнерные типы данных модуля collections.
Класс Counter() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-counter-modulja-collections/
'''
import collections
collect = collections.Counter()
for word in ['medpack', 'wood', 'wood', 'wood', 'food']:
    collect[word] += 1
print('Общий инвентарь:', collect)
print('Дерева всего:', collect['wood'])