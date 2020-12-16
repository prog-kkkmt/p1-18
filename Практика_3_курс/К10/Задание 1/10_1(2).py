#Выполнили:Гусев Никита Сергеевич и Цыпков Илья Владимирович

#Задание 2. Func6. Описать функцию SumRange(A, B) целого типа, находящую
#сумму всех целых чисел от A до B включительно (A и B — целые). Если A > B,
#то функция возвращает 0. С помощью этой функции найти суммы чисел от A до B
#и от B до C, если даны числа A, B, C.

def SumRange(a, b):
    if a > b:
        return 0
    else:
        sum = 0
        while a <= b:
            sum += a
            a += 1
        return sum
A = int(input())
B = int(input())
C = int(input())
print(SumRange(A,B))
print(SumRange(B,C))
