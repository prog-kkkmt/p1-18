# print first 100 odd numbers
k = 0
x = 0
while True:
    if k == 100:
        break
    if x % 2 == 0:
        k += 1
        x += 1
        print(x)
        continue
    x += 1
