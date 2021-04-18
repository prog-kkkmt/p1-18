def sumRange(A, B):
    sum = 0
    for k in range(A, B+1):
        sum += k
    return sum

A, B, C = list(map(int, input().split()))
print(sumRange(A, B))
print(sumRange(B, C))
