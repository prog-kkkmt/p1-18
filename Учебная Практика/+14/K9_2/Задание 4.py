'''
Задание 4. Matrix3. Даны целые положительные числа M, N и набор из M чисел.
Сформировать матрицу размера M x N, у которой в каждом столбце содержатся
все числа из исходного набора (в том же порядке).
'''
import random
m = int(input())
n = int(input())
a = [random.randint(1, 100) for i in range(m)]
print(a)
mtrx = []
for i in range(m):
    list = []
    for j in range(n):
        list.append(a[i])
    mtrx.append(list)
[print(' '.join([str(j) for j in i])) for i in mtrx]
