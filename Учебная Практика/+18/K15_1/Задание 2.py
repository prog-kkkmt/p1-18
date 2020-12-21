'''
Задание 2. Контейнерные типы данных модуля collections.
Класс Counter() модуля collections в Python.
https://docs-python.ru/standart-library/modul-collections-python/klass-counter-modulja-collections/
'''
import collections
import re
cnt = collections.Counter(a=4, b=2, c=0, d=-2)
print(cnt)
sorted(cnt.elements())
print(*cnt.elements())
ct = collections.Counter("abbbaaaccacccascd")
s = set(ct)
print(ct.most_common(len(s)))
cnt1 = collections.Counter(a=3, b=6, c=6, d=5)
cnt1.subtract(cnt)
print(cnt1)
cnt1.update(cnt)
print(cnt1)
print()
print("#print(cnt + cnt1)")
print(cnt + cnt1)
print("#print(cnt - cnt1)")
print(cnt - cnt1)
print("#print(cnt & cnt1)")
print(cnt & cnt1)
print("#print(cnt | cnt1)")
print(cnt | cnt1)
print()
print(cnt.items())
print(cnt.values())
cnt.clear()
str1 = ""
c = collections.Counter()
with open("text.txt", "r") as file:
    for i in file:
        str1 += i
c = collections.Counter(str1).most_common(len(str1))
print(c)
cn = collections.Counter()
with open("text.txt", "r") as file:
    for i in file:
        Words = re.findall(r'\w+', file.read())
cn = collections.Counter(Words).most_common(len(Words))
print(cn)
