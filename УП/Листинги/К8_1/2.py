numbers = list(map(int, input().split()))
k = 0
for i in range(len(numbers)):
    for j in range(i+1, len(numbers)):
        if numbers[i] == numbers[j]:
            k += 1

print(k)
