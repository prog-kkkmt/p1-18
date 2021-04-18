import random
M, N = list(map(int, input().split()))
a = [[random.randint(1,9) for k in range(N)] for j in range(M)]

#print mtrx (non reversed)
for j in a:
    print(j)
print()

#reverse mtrx
for k in range(M):
    for j in range(N // 2):
        indx = (N // 2 + N % 2) + j
        a[k][j], a[k][indx] = a[k][indx], a[k][j]
        
#print reversed mtrx
for j in a:
    print(j)
