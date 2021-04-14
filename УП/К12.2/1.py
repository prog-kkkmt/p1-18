'''
Задача №1. 
Простейшая система проверки орфографии может быть основана на использовании списка известных слов. 
Если введённое слово не найдено в этом списке, оно помечается как "ошибка". 
Попробуем написать подобную систему.
'''

a = int(input())
b = []
for i in range(a):
    b.append(input().lower())
c = set(b)
d = int(input())
e = []
for j in range(d):
    e.append(input().split())
m = set()
for row in e:
    s = set(row)
    for v in s:
        m.add(v)
f = []
for k in m:
    if k in c:
        continue
    else: 
        f.append(k)
for o in f:
    print(o)
