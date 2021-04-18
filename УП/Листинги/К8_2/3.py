import random

# binary find position
def upper_bound(A, k):
    r = len(A)-1
    l = 0
    while l+1 < r:
        m = (l+r) // 2
        if A[m] > k:
            r = m
        else:
            l = m
    if k < A[l]:
        return l
    elif k <= A[r]:
        return r
    else:
        return r+1

def insertSort(A):
    c = 2
    l = len(A)
    if A[0] > A[1]:
        A[0], A[1] = A[1], A[0]
    for i in range(2,l):
        A.insert(upper_bound(A[:c], A[i]), A[i]) #add element to sorted part
        A.pop(i+1) #delete this element from previous part
        c += 1
        print(*A)

A = [random.randint(1,100) for x in range(20)]
insertSort(A)
