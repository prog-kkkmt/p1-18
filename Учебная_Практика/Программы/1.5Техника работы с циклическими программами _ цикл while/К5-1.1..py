from random import randrange
import math

tochki = 1000
vershina = int(input())
radiys = vershina/2
schetchik = 0
for i in range(tochki):
    x = randrange(0, vershina)
    y = randrange(0, vershina)
    if ((x-radiys)**2 + (y-radiys)**2 <= radiys**2):
        schetchik += 1
otnoshenie = schetchik/tochki
p = 4*schetchik/tochki
raznica = 3.14-p
    
print("Точек внутри круга:",schetchik)
print("Отношение площадей круга и квадрата:",otnoshenie)
print("Приблизительное число PI:",p)
print("Отличие от библиотечного числа pi:",raznica)
