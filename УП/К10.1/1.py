def SumRange(a, b):
    s = 0
    i = a
    if a > b:
        return 0
    else:
        for i in range(b):
            s += i
            print(s)
    return s
a = int(input())
b = int(input())
print(SumRange(a, b))
