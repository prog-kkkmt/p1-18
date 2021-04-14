'''
Задача №1 Абрамян Array112. 
Дан массив A размера N.
Упорядочить его по возрастанию методом сортировки
простым обменом («пузырьковой» сортировкой):
просматривать массив, сравнивая его соседние элементы
(A0 и A1, A1 и A2 и т. д.) и меняя их местами,
если левый элемент пары больше правого; повторить описанные
действия N  1 раз. Для контроля за выполняемыми действиями
выводить содержимое массива после каждого просмотра.
Учесть, что при каждом просмотре количество анализируемых
пар можно уменьшить на 1.
'''

import random

с = random.randrange(2,20)
b = [random.randrange(0,10) for i in range(с)]

print(b)

for i in range(1,с) :
    for j in range(0,с-i) :
        if b[j] > b[j+1] :
            b[j], b[j+1] = b[j+1], b[j]
            
print(b)
									
