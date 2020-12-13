'''
https://pythontutor.ru/lessons/sets/problems/number_of_coincidental/
Задача «Количество совпадающих чисел»
Условие. Даны два списка чисел. Посчитайте, сколько чисел содержится одновременно как
в первом списке, так и во втором.
5 4 3 2 1
3 1 4 2 5
'''

st, st2 = set([int(i) for i in input().split()]), set([int(i) for i in input().split()])
print(len(st.intersection(st2)))
