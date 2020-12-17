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
            #print(index_app)
            mas[i][j] = 0
    index_app += 1

for i in range(m):
    for j in range(m):
        print(mas[i][j], end=" ")
    print()

"""
5
5
8
8
9
6
5
4
9
7
9
9
4
3
2
4
3
5
1
6
3
1
2
5
6
9
"""