import math
from random import randrange

w = int(input())
r = w/2
n = 1000
k = 0
for i in range(n):
    x = randrange(0, w)
    y = randrange(0, w)
    if ((x-r)**2 + (y-r)**2 <= r**2):
        k += 1
    
print("{} точек попало внутрь круга".format(k))
print("Отношение площадей круга и квадрата: {}".format(k/n))
print("Примерное число PI: {}".format(4*k/n))
print("Разница между полученным и библиотечными числом pi: {}".format(abs(math.pi-4*k/n)))
