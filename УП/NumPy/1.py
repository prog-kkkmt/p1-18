#Преобразование списка в массив:
A = np.array([[1, 2, 3], [4, 5, 6]]) 

#Копирование массива:
B = A.copy()


#Создание нулевого массива:
A = np.zeros((2, 3))

#Просмотр всех доступных типов:
np.sctypes


#Действия с массивами

import numpy as np
 
arr = (100 - 0) * np.random.random_sample((5,)) - 5 
arr = arr.astype(np.int64)
 
print(arr)
 
print(arr.sum()) # Сумма массивов
print(arr.min()) # Минимальный массив 
print(arr.max()) # Максимальный массив
print(arr.mean()) # Средний массив
print(arr.std())  
print(np.median(arr))#Медиана

#Работа с элементами вектора

import numpy as np

V = np.array((1,2,3,4))
print(V[0])   
print(V[-1])  
print(V[1:-2])  
print(V[::2])  






#Расширенное индексирование

import numpy as np 
x = np.array([[ 0,  1,  2],[ 3,  4,  5],[ 6,  7,  8],[ 9, 10, 11]]) 
   
print 'Our array is:' 
print x 
print '\n' 

rows = np.array([[0,0],[3,3]])
cols = np.array([[0,2],[0,2]]) 
y = x[rows,cols] 
   
print 'The corner elements of this array are:' 
print y
