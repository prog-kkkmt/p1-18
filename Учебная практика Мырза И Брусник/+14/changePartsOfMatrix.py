'''
Matrix56. Дана матрица размера M x N (N — четное число). Поменять местами
левую и правую половины матрицы.
4
3
1
1
1
2
2
2
3
3
3
4
4
4
'''

# в первой строке ввода идёт количество строк массива
m, n = int(input()), int(input())
a = []
for i in range(m):
    b = []
    for j in range(n):
        b.append(int(input()))
    a.append(b)

print(a)

for i in range(m // 2):
    a[i], a[m - 1 - i] = a[m - 1 - i], a[i]

print(*a)
