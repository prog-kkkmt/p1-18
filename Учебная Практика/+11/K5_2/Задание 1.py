'''
Задание 1. Вычислить значение sin(x) с точностью до epsilon при помощи разложения в ряд
Построить блок-схему
'''
import math

def mysin(x,eps): 
    n=1
    an=x
    s=0
    while(math.fabs(an)>eps):
         s+=an
         n+=1
         an*=-x*x/(2.*n-1.0)/(2.0*n-2.0);
    return s

x = float(input("X=:>"))
eps = float(input("E=:>"))
print(mysin(x,eps))
