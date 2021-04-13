def swapMatrix(mas, a, b):
    for i in range(m):
        temp = mas[i][a]
        mas[i][a] = mas[i][b]
        mas[i][b] = temp

n = int(input())
m = int(input())
mas = []
for i in range(m):
    mas.append([])
    for j in range(n):
        elem = float(input())
        mas[i].append(elem)

for j in range(n//2):
    swapMatrix(mas, j, (n // 2) + j)
print(mas)
