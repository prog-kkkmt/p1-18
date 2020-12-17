import random

c = random.randrange(2,10)
b = [random.randrange(0,10) for i in range(c)]

print(b)

for i in range(0,c) :
    max_val = max(b[:c-i])
    max_idx = b.index(max_val)
    b[max_idx], b[c-i-1] = b[c-i-1], b[max_idx]
    print(b)
						
