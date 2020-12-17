import random

c = random.randrange(2,10)
b = [random.randrange(0,10) for i in range(c)]

print(b)

for i in range(1,c) :
    a = False
    x = b[i]
    q = i - 1
    while q >= 0 :
        if x >= b[q] :
            break
        else :
            b[q+1] = b[q]
            a = True
        q -= 1
    if a and q >= -1:
        b[q+1] = x
    print(b)
    

