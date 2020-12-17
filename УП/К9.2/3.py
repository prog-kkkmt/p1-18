import random

c = random.randrange(2,21)
b = [random.randrange(1,11) for i in range(c)]
a = []
a.append(b[0])

print(b)

for i in range(1,c) :
    a.append(b[i] + a[i-1])
    
print(len(a))
print(a)
