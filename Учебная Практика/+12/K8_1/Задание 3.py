'''
Задание 3. (Л.Б.)
Дано N списков целых чисел (N вводится с клавиатуры, сами списки заполняются 
случайным образом). Требуется сформировать 
- список, содержащий уникальные значения, попадающие в каждый из N списков
- список, содержащий уникальные значения, попадающие хотя бы в один из N списков
Решение без использования set - дополнительный бонус
'''

import random
n = int(input())
mtrx = [[random.randint(0, n) for i in range(n)] for j in range(n)]

listever =[]
listall =[]


for i in range(n):
        for j in range(n):
                if mtrx[i][j] not in listall:
                        listall.append(mtrx[i][j])


for t in listall:
	c = 0
	for i in range(n):
		if t in mtrx[i]:
			c += 1
	if (c == n):
		listever.append(t)

print("Матрица:", *mtrx, sep='\n ')
print("Список значений, попадающих в каждый из N списков:\n", *listever)
print("Список значений, попадающие хотя бы в один из N списков:\n", *listall)
