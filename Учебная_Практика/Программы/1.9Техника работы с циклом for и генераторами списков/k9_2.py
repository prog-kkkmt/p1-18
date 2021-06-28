# Задание 5. Matrix56. Дана матрица размера M x N (N — четное число). Поменять местами 
# левую и правую половины матрицы. 

from random import randint
import sys

if len(sys.argv) < 3:
    print('too few arguments')
    exit(1)

M = int(sys.argv[1])
N = int(sys.argv[2])

if (N % 2) != 0:
    print('N is not even')
    exit(1)

def print_matrix(mat):
    for row in mat:
        print(' '.join(map(str, row)))

matrix = [[randint(0, 9) for _ in range(N)] for _ in range(M)]
print('original:')
print_matrix(matrix)

for row in matrix:
    for x in range(N//2):
        # print(x, N-x-1)
        row[x] += row[N-x-1]
        row[N-x-1] = row[x] - row[N-x-1]
        row[x] = row[x] - row[N-x-1]

print('mirrored:')
print_matrix(matrix)
