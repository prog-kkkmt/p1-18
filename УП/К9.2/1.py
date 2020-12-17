import random

c = random.randrange(2,15)
b = [random.randrange(1,11) for i in range(c)]
a = b[1::2]

print(b)
print(len(a))
print(a)
