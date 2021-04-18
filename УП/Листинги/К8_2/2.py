import random

def selectSort(A):
    l = len(A)
    c = l-1
    for i in range(l-1):
        k = A.index(max(A[:c+1]))
        A[k], A[c] = A[c], A[k]
        c -= 1
        print(*A)

A = [random.randint(1,100) for x in range(20)]
selectSort(A);
