'''
Matrix88. Дана квадратная матрица порядка M. Обнулить элементы матрицы,
лежащие ниже главной диагонали. Условный оператор не использовать.
4
4
1
1
1
1
4
4
4
4
2
2
2
2
3
3
3
3
'''

# в первой строке ввода идёт количество строк массива
m, n = int(input()), int(input())
a = []
for i in range(m):
    b = []
    for j in range(n):
        b.append(int(input()))
    a.append(b)

for i in range(m):
    for j in range(n - i, n):
        a[i][j] = 0

for i in range(m):
    print(*a[i])
