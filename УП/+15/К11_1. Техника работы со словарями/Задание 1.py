counter = {}
lst = input().split()
for i in lst:
    if i not in counter:
        counter[i] = 0
    else:
        counter[i] += 1
    print(counter[i], end=" ")