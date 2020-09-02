#Func1. Описать функцию Sign(X) целого типа, возвращающую для вещественного числа X следующие значения:
#−1,    если X < 0;        0,    если X = 0;        1,    если X > 0.
#С помощью этой функции найти значение выражения Sign(A) + Sign(B) для данных вещественных чисел A и B.
def Sign(x):
    if x < 0:
        return -1 
    elif x > 0:
        return 1
    else:
        return 0
a = float(input())
b = float(input())
print('a=', (a))
print('b=', (b))
print(int(Sign(a)+Sign(b)))
input()
