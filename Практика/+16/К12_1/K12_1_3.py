'''
Задание 3. https://pythontutor.ru/lessons/sets/problems/sets_intersection/
Задача «Пересечение множеств»
Условие. Даны два списка чисел. Найдите все числа, которые входят как в первый,
так и во второй список и выведите их в порядке возрастания.
'''

print(*sorted(set(input().split()) & set(input().split()), key=int))