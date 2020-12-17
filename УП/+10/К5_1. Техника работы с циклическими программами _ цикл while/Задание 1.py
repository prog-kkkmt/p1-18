import math
import random

NumberOfPoints = 1000

print("Введите сторону квадрата")
a = int(input())

Ssq = a
radius = a // 2
#Scr = math.pi() * radius1

points = []

for i in range(2):
    points.append([])
    for j in range(NumberOfPoints):
        elem = random.randint(-a/2, a/2)
        points[i].append(elem)

count = 0

for i in range(NumberOfPoints):
    if math.sqrt((points[0][i]**2 - 0) + (points[1][i]**2 - 0)) <= radius:
        count += 1

print("Кол-во точек попавших внутрь круга: ", count)

area_ratio = count / NumberOfPoints

print("Отношение площади круга и квадрата: ", area_ratio)

pi = area_ratio * 4
print("приближённое значение пи относительно наших вычислений", pi)

dif_pi = math.pi - pi
print("Разница между нашим числом пи и библиотечным", dif_pi)