dictt = {}
max = 0

for _ in range(int(input())):
    for word in input().split():
        if word in dictt:
            dictt[word] += 1
        else:
            dictt[word] = 1
        if  dictt[word] > max:
            max = dictt[word]

for key, value in sorted(dictt.items()):
    if value == max:
        print(key)
        break