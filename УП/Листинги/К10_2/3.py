a, b, p = list(map(int, input().split()))
list(map(lambda x: print(x**p, end = ' '), range(a, b+1)))
