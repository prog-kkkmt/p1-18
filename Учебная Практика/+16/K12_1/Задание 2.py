'''
Задание 2. https://pythontutor.ru/lessons/sets/problems/number_of_coincidental/
Задача «Количество совпадающих чисел»
Условие. Даны два списка чисел. Посчитайте, сколько чисел содержится одновременно как
в первом списке, так и во втором.
'''

str1 = set(input().split())
str2 = set(input().split())
p = 0
for i in str1:
    for j in str2:
        if i is j:
            p += 1
print(p)
