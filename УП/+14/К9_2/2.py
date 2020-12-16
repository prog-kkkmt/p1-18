import random
n = int(input())
a = [random.randint(1, 20) for x in range(n)]
print(*a)
b = [a[i] for i in range(0,len(a),2)]
for i in range(1, len(a), 2):
    b.append(a[i])
print(len(b))
print(*b)
