'''
Задание 3. Func10. Описать функцию IsSquare(K) логического типа,
возвращающую True, если целый параметр K (> 0) является квадратом
некоторого целого числа, и False в противном случае.
С ее помощью найти количество квадратов в наборе из 10 целых 
положительных чисел.
'''
import math
def IsSquare(K):
	sqrtK = math.sqrt(K)
	if (sqrtK == int(sqrtK)):
		return True
	else:
		return False
a=[]
for x in input().split():
        a.append(int(x))
c = 0
for i in a:
	c += IsSquare(i)
print(c)
