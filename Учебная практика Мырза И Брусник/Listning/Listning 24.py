'''
Func33. Описать функцию SortInc3(X), меняющую содержимое списка X из трех вещественных элементов таким образом, чтобы их значения оказались упорядоченными по возрастанию (функция возвращает None). С помощью этой функции упорядочить по возрастанию два данных списка X и Y.
'''

import math

def sortInc3(X):
#	X – list for next sort.
	for i in range(len(X) - 1):
		for j in range(len(X) - i - 1):
			if X[j] > X[j + 1]:
				X[j], X[j + 1] = X[j + 1], X[j]
	return None

list = []
for i in range(3):
list.append(float(input()))

list2 = []
for i in range(3):
list2.append(float(input()))

sortInc3(list)
sortInc3(list2)

print(*list)
print(*list2)
