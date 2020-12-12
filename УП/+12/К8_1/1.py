numbers = list(map(int, input().split()))
k = 0
for i in range(1, len(numbers)-1):
    if numbers[i-1] < numbers[i] > numbers[i+1]:
        k += 1

print(k)
