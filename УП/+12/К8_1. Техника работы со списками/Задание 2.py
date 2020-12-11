count = 0
lst = list(map(int, input().split()))
for i in range(len(lst)):
    for j in range(i+1, len(lst)):
        if lst[i] == lst[j]:
            count += 1

print(count)