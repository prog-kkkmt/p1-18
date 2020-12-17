n = int(input())
m = int(input())
mas = []
arr = []
for i in range(m):
    elem = int(input())
    arr.append(elem)

for i in range(m):
    mas.append([])
    for j in range(n):
        mas[i].append(arr[i])

print(mas)
