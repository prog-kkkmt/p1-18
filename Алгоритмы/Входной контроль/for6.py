#For6. Дано вещественное число — цена 1 кг конфет.
#Вывести стоимость 1.2, 1.4, …, 2 кг конфет.

MINN = 1
MAXX = 2

num = float(input())
power = MINN

while (power <= MAXX):
    print(num * power)
    power += 0.2
