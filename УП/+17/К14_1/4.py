f = open("data.txt", "r")
_sum = 0
for line in f:
    n = int(line.strip())
    print(n)
    _sum += n
print(_sum)
