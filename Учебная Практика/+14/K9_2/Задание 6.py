'''
Задание 6. Matrix88. Дана квадратная матрица порядка M.
Обнулить элементы матрицы, лежащие ниже главной диагонали.
Условный оператор не использовать.
'''
import random
m = int(input())
n = int(input())  
matrix =[[random.randint(1, 10) for j in range(n)] for i in range(m)]    
print('\n'.join(map(str,matrix)))
for i in range(1,m):
    for j in range(i):
        matrix[i][j] = 0
print()
print('\n'.join(map(str,matrix)))
