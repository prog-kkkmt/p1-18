l = input().split(' ')
c = 0
for i in range(1, len(l)-1):
    if l[i-1] <= l[i] >= l[i+1]:
        c += 1
print(c)
