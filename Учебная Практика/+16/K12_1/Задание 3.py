'''
Задание 3. https://pythontutor.ru/lessons/sets/problems/sets_intersection/
Задача «Пересечение множеств»
Условие. Даны два списка чисел. Найдите все числа, которые входят как в первый,
так и во второй список и выведите их в порядке возрастания.
'''
str1 = set(map(int, input().split()))
str2 = set(map(int, input().split()))
lst = []
fin = set()
for i in str2:
    for j in str3:
        if (i == j):
            lst.append(i)
print(*sorted(lst))
