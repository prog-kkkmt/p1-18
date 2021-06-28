# Задание 2. Func6. Описать функцию SumRange(A, B) целого типа, находящую сумму всех целых 
# чисел от A до B включительно (A и B — целые). Если A > B, то функция возвращает 0. 
# С помощью этой функции найти суммы чисел от A до B и от B до C, если даны числа A, B, C. 

def SumRange(A: int, B: int) -> int:
    return sum(range(A, B+1))

A = int(input('A: '))
B = int(input('B: '))
C = int(input('C: '))

print('sum A -> B:', SumRange(A, B))
print('sum B -> C:', SumRange(B, C))