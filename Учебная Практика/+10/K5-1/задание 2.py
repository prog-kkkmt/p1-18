import math
import random
x = int(input("X = :>"))   #квадрат
r = x/2               #круг
i=c=0
while(i < 1000):
    px = random.randrange(0,x)
    py = random.randrange(0,x)
    if (py**2 <= r**2-px**2):
        c+=1
    i+=1
print ("В круге " + str(c) + " точек")
print ("Отношение площадей круга  и квадрата" + str(c/1000))
print ("Примерное число Pi :" + str(4*c/1000))
print ("Разница с <<библиотечным>> числом Pi :" + str(math.pi - 4*c/1000))
print("\nProcess returned 0 (0x0) execution time: 9.155 s")
