lst = input().split()
count = 0
for i in range(2, len(lst)):
    if (int(lst[i - 2]) < int(lst[i - 1]) > int(lst[i])):
        count += 1
print(count)
