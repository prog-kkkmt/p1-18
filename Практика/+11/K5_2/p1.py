'''
Задание 1. Вычислить значение sin(x) с точностью до epsilon при помощи разложения в ряд
'''

import math

eps = 1.0
n = 0
while eps + 1 > 1:
    eps /= 2
    n+=1
eps *= 2

x = int(input())
s = 0
for i in range(n):
    s += math.sin(x)
print(s)