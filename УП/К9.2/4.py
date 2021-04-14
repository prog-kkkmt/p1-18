'''
Задача №4.  Абрамян Matrix3. 
Даны целые положительные числа M, N и набор из M чисел. Сформировать 
матрицу размера M x N, у которой в каждом столбце содержатся все числа из исходного 
набора (в том же порядке).
'''

import random

R = int(input())
C = int(input())

matrix = []

for i in range(R):
    с =[]
    for j in range(C):  
        с.append(random.randrange(2,10))
    matrix.append(с)

for i in range(R):
    for j in range(C):
        print(matrix[i][j], end = " ")
    print()					
