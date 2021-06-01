"""
Задание 2. https://pythontutor.ru/lessons/lists/problems/num_equal_pairs/
Задача «Количество совпадающих пар»
Дан список чисел. Посчитайте, сколько в нем пар элементов, равных друг другу.
Считается, что любые два элемента, равные друг другу образуют одну пару, которую
необходимо посчитать.
"""

n = [int(i) for i in input().split()]
a = 0
for i in range(len(n)-1):
    for j in range(i + 1,len(n)):
        if n[i] == n[j]:
            a += 1
print(a)