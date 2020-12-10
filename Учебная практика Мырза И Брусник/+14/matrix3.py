'''
Задание 4. Matrix3. Даны целые положительные числа M, N и набор из M чисел. Сформировать
матрицу размера M x N, у которой в каждом столбце содержатся все числа из исходного
набора (в том же порядке).
'''

# в первой строке ввода идёт количество строк массива
m = int(input())
b = []
for i in range(m):
    b.append(int(input()))
print("NEXT\n")
n = int(input())
a = []
for i in range(m):
    a.append([0] * n)

for i in range(m):
    for j in range(n):
        a[i][j] = b[i]

print(*a)
