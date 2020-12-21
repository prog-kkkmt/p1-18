'''
Задание 1. Array55. Дан целочисленный массив A размера N (<= 15).
Переписать в новый целочисленный массив B все элементы с нечетными
порядковыми номерами (1, 3, ...) и вывести размер полученного
массива B и его содержимое. Условный оператор не использовать.
'''
import random 

n = int(input())
a = []
b = []
for i in range(n):
    a.append(random.randint(1, 100))
print("Start:>" + str(a))
for i in range(1, len(a), 2):
    b.append(a[i])
print("Fin:>" + str(b))
print(len(b))
