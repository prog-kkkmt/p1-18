'''
Функции shape, dtype, ndim, len, size .
'''
import numpy as np
arr = np.array([1, 2, 3, 4, 5], dtype=np.float)
print(arr)
print(arr.shape)#	размер каждого измерения
print(arr.dtype)#	тип измерения (float64)
print(arr.ndim)#	количество измерений массива
print(len(arr))#	вместимость массива
print(arr.size) #	вместимость массива
