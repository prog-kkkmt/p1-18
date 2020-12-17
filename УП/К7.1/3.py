s = input()
s = s.replace('.', ' ')
print(s)
s = s.split()
summ = 0
for x in s:
    x = int(x)
    summ += x
print(summ)
