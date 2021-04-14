'''
Задача №3.  Абрамян Array58.
Дан массив A размера N. Сформировать новый массив B того же размера по 
следующему правилу: элемент B[K] равен сумме элементов массива A с номерами от 0 до K.
'''

import random

c = random.randrange(2,21)
b = [random.randrange(1,11) for i in range(c)]
a = []
a.append(b[0])

print(b)

for i in range(1,c) :
    a.append(b[i] + a[i-1])
    
print(len(a))
print(a)
