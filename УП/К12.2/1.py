a = int(input())
b = []
for i in range(a):
    b.append(input().lower())
c = set(b)
d = int(input())
e = []
for j in range(d):
    e.append(input().split())
m = set()
for row in e:
    s = set(row)
    for v in s:
        m.add(v)
f = []
for k in m:
    if k in c:
        continue
    else: 
        f.append(k)
for o in f:
    print(o)
