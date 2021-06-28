sum = 0
num = 1
sum1= 0
while num != 0:
    sum1 = sum
    num = int(input())
    sum += num
i = min(sum,sum1)
while True:
    if i%sum==0 and i%sum1==0:
        break
    i += 1
print(i)
