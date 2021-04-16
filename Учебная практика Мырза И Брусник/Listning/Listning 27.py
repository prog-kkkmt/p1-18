'''
Func10. Описать функцию IsSquare(K) логического типа, возвращающую True,
если целый параметр K (> 0) является квадратом некоторого целого числа, и False
в противном случае. С ее помощью найти количество квадратов в наборе из 10 целых
положительных чисел.
'''
def isSquare(K):
# K – int Number .
    i = 0
    while K >= i ** 2:
        i += 1
        if (i ** 2 == K):
            return True
    return False

num = int(input())
print(isSquare(num))
