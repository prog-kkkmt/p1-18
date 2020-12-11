k = 0
curr = 1
n = int(input())
while k != n:
    for i in range(curr):
        print(curr, end=' ')
        k += 1
        if k == n:
            break
    curr += 1
