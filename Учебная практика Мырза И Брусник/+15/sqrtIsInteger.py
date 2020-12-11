'''
Func10. Описать функцию IsSquare(K) логического типа, возвращающую True,
если целый параметр K (> 0) является квадратом некоторого целого числа, и False
в противном случае. С ее помощью найти количество квадратов в наборе из 10 целых
положительных чисел.
'''

import math

def isSquare(K):
    return math.sqrt(K).is_integer()

num = int(input())

print(isSquare(num))


