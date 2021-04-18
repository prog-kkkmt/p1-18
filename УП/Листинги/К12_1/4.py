n = int(input())
s = set()
for i in range(n):
    line = input().split()
    for word in line:
        s.add(word)
print(len(s))
