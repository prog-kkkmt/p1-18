'''
Задача №1. Контейнерные типы данных модуля collections. Замена значений.
'''
from collections import defaultdict
a = defaultdict(set, **{"day":{"night"}, "night": {"month"}})
a["month"].add("day")
a["year"].add("day")
print(a)
