import random
M, N = list(map(int, input().split()))
a = list(map(int, input().split()))

mtrx = [[a[m] for k in range(N)] for m in range(M)]
print(*a)
print(*mtrx)
            
