import random

R = int(input())
C = int(input())

matrix = []

for i in range(R):
    с =[]
    for j in range(C):  
        с.append(random.randrange(2,10))
    matrix.append(с)

for i in range(R):
    for j in range(C):
        print(matrix[i][j], end = " ")
    print()					
