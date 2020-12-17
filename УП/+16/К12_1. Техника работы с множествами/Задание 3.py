"""
Задача «Пересечение множеств»
Условие. Даны два списка чисел. Найдите все числа, которые входят как в первый, 
так и во второй список и выведите их в порядке возрастания.
"""
n = set(map(int, input().split()))
m = set(map(int, input().split()))
lst = []
fin = set()
for i in n:
    for j in m:
        if (i == j):
            lst.append(i)
print(*sorted(lst))
