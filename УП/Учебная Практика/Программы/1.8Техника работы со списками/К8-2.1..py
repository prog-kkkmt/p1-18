chislo = int(input())
mas= []
for x in range(chislo):
    mas.append(int(input()))
print(*mas)
for i in range(chislo - 1):
    for j in range(chislo - i - 1):
        if mas[j] > mas[j + 1]:
            mas[j], mas[j + 1] = mas[j + 1], mas[j]
            print(*mas)
print("\n Отсортированный массив:",*mas)
print(*mas)
