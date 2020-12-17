b = []
a = input()
while a != '.':
    b.append(a.upper())
    a = input()
for i in range(len(b)):
    print(' '.join(b[i]))
