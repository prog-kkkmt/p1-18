'''
Функции вставки, удаления, сортировки, объединения 
'''
import numpy as np

arr = (100 - 0) * np.random.random_sample((5,)) - 5
arr = arr.astype(np.int64)

print(arr)

arr = np.insert(arr, 2, -20) # вставка значения -20 в позицию 2
print(arr)
arr = np.delete(arr, 2)	# удаляет 2 элемент
print(arr)
arr = np.sort(arr)
print(arr)
arr2 = np.array([0, 0, 0])
print(arr2)
arr = np.concatenate((arr, arr2))	# объединение массивов .
print(arr)
arr = np.array_split(arr, 3)
print(arr)
