'''
Функции sum, min, max, mean, std, median 
'''
import numpy as np

arr = (100 - 0) * np.random.random_sample((5,)) - 5
arr = arr.astype(np.int64)

print(arr)

print(arr.sum())			#	сумма значений массива .
print(arr.min())			#	минимальное значение
print(arr.max())			#	максимальное значение
print(arr.mean())			#	среднее значение
print(arr.std())			#	стандартное отклонение
print(np.median(arr))		#	медиана массива .
