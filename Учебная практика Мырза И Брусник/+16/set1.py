'''
https://pythontutor.ru/lessons/sets/problems/number_of_unique/
Задача «Количество различных чисел»
Условие. Дан список чисел. Определите, сколько в нем встречается различных чисел.
'''

print(len(set([int(i) for i in input().split()])))
