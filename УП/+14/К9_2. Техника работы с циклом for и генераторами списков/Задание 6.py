m = int(input())

mas = []
for i in range(m):
    mas.append([])
    for j in range(m):
        el = int(input())
        mas[i].append(el)

index_app = 0
for i in range(m):
    for j in range(m):
        if (j < index_app):
            mas[i][j] = 0
    index_app += 1

for i in range(m):
    for j in range(m):
        print(mas[i][j], end=" ")
    print()
