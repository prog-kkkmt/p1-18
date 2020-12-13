import random

def bubbleSort(A):
    l = len(A)
    for i in range(l-1):
        isSorted = True
        for j in range(l-i-1):
            if A[j] > A[j+1]:
                A[j], A[j+1] = A[j+1], A[j]
                isSorted = False
        if isSorted:
            break

A = [random.randint(1,100) for x in range(20)]
print(*A)
bubbleSort(A);
print(*A)
