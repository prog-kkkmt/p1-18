def isSquare(k):
    n = 0
    b = 0
    res = False
    while b < k:
        b = n**2
        if b == k:
            res = True
            break
        n += 1
        
    return res

a = map(int, input().split())
for j in a:
    print(isSquare(j), end = ' ')
