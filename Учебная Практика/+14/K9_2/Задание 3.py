'''
Задание 3. Array58. Дан массив A размера N. Сформировать новый массив B
того же размера по следующему правилу: элемент B[K] равен сумме
элементов массива A с номерами от 0 до K.
'''
import random

n = int(input())
a = []
b = []
for i in range(n):
    a.append(random.randint(1, 100))
print(a)
s = 0
for i in range(len(a)):
    s += a[i]
    b.append(s)
print(b)
