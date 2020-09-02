'''
Minmax3. Дано целое число N и набор из N прямоугольников,
заданных своими сторонами — парами чисел (a, b). Найти максимальный периметр
прямоугольника из данного набора.
Брусник Вадим Викторович П1-18
02.09.2020
'''
print("vvedite kol-vo pramoygolnikov")
n = int(input())
perim = 0
for i in range(1,n+1):
    print("vvedite chislo a")
    a = int(input())
    print("vvedite chislo b")
    b = int(input())
    if 2*(a+b) > perim:
        perim = 2*(a+b)
print(perim)
