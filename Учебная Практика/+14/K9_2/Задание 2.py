'''
Задание 2. Array57. Дан целочисленный массив A размера N.
Переписать в новый целочисленный массив B того же размера
вначале все элементы исходного массива с четными номерами,
а затем — с нечетными:
A[0], A[2], A[4], A[6], ..., A[1], A[3], A[5], ... .
Условный оператор не использовать.
'''

import random 

n = int(input())
a = []
b = []
for i in range(n):
    a.append(random.randint(1, 100))
print("Start:>" + str(a))
for i in range(0, n, 2):
    b.append(a[i])
for i in range(1, n, 2):
    b.append(a[i])

print("Fin:>" + str(b))
