def sortInc3(X):
    X.sort()

a = list(map(int, input().split()))
b = list(map(int, input().split()))
sortInc3(a)
sortInc3(b)
print(a)
print(b)
