'''
Задача №2. Абрамян Func6.
Описать функцию SumRange(A, B) целого типа, находящую сумму всех целых 
чисел от A до B включительно (A и B — целые). Если A > B, то функция возвращает 0. 
С помощью этой функции найти суммы чисел от A до B и от B до C, если даны числа A, B, C.
'''
def SumRange(a, b):
    s = 0
    i = a
    if a > b:
        return 0
    else:
        for i in range(b):
            s += i
            print(s)
    return s
a = int(input())
b = int(input())
print(SumRange(a, b))
