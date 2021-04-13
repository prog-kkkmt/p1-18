import math

#Задание 3. Func10. Описать функцию IsSquare(K) логического типа, возвращающую True, 
#если целый параметр K (> 0) является квадратом некоторого целого числа, и False 
#в противном случае. С ее помощью найти количество квадратов в наборе из 10 целых 
#положительных чисел.

def IsSquare(K):
    result = math.sqrt(K)
    return (result % 1 == 0)

array = []
for i in range(11):
    elem = int(input())
    array.append(elem)
for i in range(11):
    print(IsSquare(array[i]))
