from random import randint
import math

lenm = randint(2, 10)
mass = []
found = int(input())

#заполнение массива
for i in range(lenm):
    mass.append(randint(1, 10))
print(mass)

#сортировка массива
for i in range(lenm):
    for j in range(lenm-i-1):
        if mass[j] > mass[j+1]:
            mass[j], mass[j+1] = mass[j+1], mass[j]
print(mass)

#поиск в упорядоченном массиве
first = 0
last = len(mass)-1
while first < last:
    s = round((first + last)/2)
    if first == s or last == s:
        if mass[s] != found:
            print('Not found')
            break
    elif mass[s] == found:
        print(s)
        break
    elif mass[s] < found:
        first = s
    else:
        last = s

    
