#Задание 2. Func6. Описать функцию SumRange(A, B) целого типа, находящую сумму всех целых 
#чисел от A до B включительно (A и B — целые). Если A > B, то функция возвращает 0. 
#С помощью этой функции найти суммы чисел от A до B и от B до C, если даны числа A, B, C.

def SumRange(a, b, c):
    if a > b:
        return 0
    elif (a < b):
        summ = 0
        for i in range(a, b):
            summ += i
        for i in range(b, c+1):
            summ += i
        return summ

a = int(input())
b = int(input())
c = int(input())
print(SumRange(a, b, c))
