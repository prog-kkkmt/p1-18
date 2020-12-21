'''
Задание 5. Matrix56. Дана матрица размера M x N (N — четное число). Поменять местами
левую и правую половины матрицы.
'''
import random
m = int(input())
n = int(input())
matrix =[[random.randint(1, 100) for j in range(n)] for i in range(m)]
print('\n'.join(map(str,matrix)))
for i in range(m):
    for j in range(n//2):
        c = matrix[i][j]
        matrix[i][j] = matrix[i][j-n//2]
        matrix[i][j-n//2] = c
print()
print('\n'.join(map(str,matrix)))
'''
print()
for i in range(m):
    print( "{:s}".format(str(mtrx[i])),sep = '\n')
'''
