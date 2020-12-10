'''
Задача «Количество совпадающих пар»
Дан список чисел. Посчитайте, сколько в нем пар элементов, равных друг другу.
Считается, что любые два элемента, равные друг другу образуют одну пару, которую
необходимо посчитать.
'''

arr = []

size = int(input())

count = 0

for i in range(size):
    arr.append(int(input()))

for i in range(size - 1):
    for k in range(i + 1, size):
        if arr[k] == arr[i]:
            count += 1

print(count)
