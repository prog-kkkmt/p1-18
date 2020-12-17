import random

c = random.randrange(2,21)
b = [random.randrange(1,11) for i in range(c)]
a = b[0::2] + b[1::2]

print(b)
print(len(a))
print(a)
