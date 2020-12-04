a, b, n = 0, 1, int(input())
for i in range(2, n+1):
    a, b = b, a + b
print(b)
