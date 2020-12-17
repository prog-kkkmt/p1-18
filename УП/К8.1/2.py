l = input().split(' ')
c = 0
for i in range(0, len(l)):
    for j in range(0, len(l)):
        if (l[i] == l[j]) and (i != j):
            c += 1
print(c // 2)
