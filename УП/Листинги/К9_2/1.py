import random
n = int(input())
a = [random.randint(1, 20) for x in range(n)]
b = [a[i] for i in range(1,len(a),2)]
print(len(b))
print(*b)
