'''
While3. Даны целые положительные числа N и K. Используя только операции сложения и вычитания,
найти частное от деления нацело N на K, а также остаток от этого деления.
Брусник ВаДим Викторович П1-18
02.09.2020
'''
print('vvedite delimoe')
n = int(input())
print("vvedite delitel")
k = int(input())
c = 0
while n >= k:
    n -=k
    c +=1
b = n
print("chastnoe",c)
print("Ostatok", b)
