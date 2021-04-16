'''
Работа с матрицами .
'''
import numpy as np

matrix = np.array([(1,2,3),(4,5,6)], dtype=np.float64)
print(matrix, '\n')
matrix = np. array([(1,2,3), (4,5,6), (7, 8, 9)])
print(matrix, '\n')
array3d = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]])
print(matrix, '\n')
matrix = np.array([(1,2,3), (4,5,6), (7, 8, 9)])
print(matrix, '\n')
print(matrix. shape)
print(matrix.ndim)
print(matrix.sdize)
print(matrix.reshape(1, 9), '\n')
print(np.resize(matrix, (2, 2)))

matrix = np.random.random((2, 10))
print(matrix)
