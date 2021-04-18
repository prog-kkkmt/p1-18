a = int(input())
a += a % 2
print(tuple(x for x in range(a, a*10 + 2, 2)))
