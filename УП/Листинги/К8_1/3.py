import random

allEntry_array = []
oneEntry_array = []

n = int(input())
arrays = []
for i in range(n):
    arrays.append([random.randint(1, 20) for x in range(30)])
    print(arrays[i])

for c in arrays[0]:
    inAll = True
    if c not in oneEntry_array:
        oneEntry_array.append(c)
    for j in range(1, n):
        inCurr = False
        for k in arrays[j]:
            if k not in oneEntry_array:
                oneEntry_array.append(k)
            if k == c:
                inCurr = True
        if inAll:
            inAll = inCurr
        

    if inAll and c not in allEntry_array:
        allEntry_array.append(c)

print(allEntry_array)
print(oneEntry_array)
