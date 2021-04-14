'''
Задача №5.  Арбамян Matrix56. 
Дана матрица размера M x N (N — четное число). Поменять местами 
левую и правую половины матрицы.
'''

from random import randint as rnd
n,m = int(input('n:\n')),int(input('m:\n'))
upr = []
botl = []
a = [[rnd(1,10) for _ in range(n)] for _ in range(m)]
print(*a, '\n', sep='\n')
for i in range(int(m/2)):
    upr.append(a[i][int(n/2):])
for i in range(int(m/2),m):
    botl.append(a[i][:int(n/2)])
for i in range(int(m/2)):
    a[i][int(n/2):] = botl[i]
for i in range(int(m/2),m):
    a[i][:int(n/2)] = upr[i]
print(*a, sep='\n')
