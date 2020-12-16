import random
M = int(input())
a = [[random.randint(1,9) for k in range(M)] for j in range(M)]

#print mtrx (non reversed)
for j in a:
    print(j)
print()

k = 1
for k in range(1, M):
    for j in range(k):
        a[k][j] = 0
    k += 1
        
#print reversed mtrx
for j in a:
    print(j
