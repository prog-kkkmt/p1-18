import random
n = int(input())
a = [random.randint(1, 20) for x in range(n)]
b = [sum(a[:k+1]) for k in range(len(a))]
print(*a)
print(*b)
