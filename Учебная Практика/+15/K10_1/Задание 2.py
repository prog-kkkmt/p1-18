'''
Задание 2. Func6. Описать функцию SumRange(A, B) целого типа,
находящую сумму всех целых чисел от A до B включительно(A и B — целые).
Если A > B, то функция возвращает 0. С помощью этой функции найти суммы
чисел от A до B и от B до C, если даны числа A, B, C.
'''

def SumRange(a, b):
	sym = 0
	for i in range(a, b+1):
		sym += i
	return sym

a = int(input())
b = int(input())
c = int(input())

print(SumRange(a, b))
print(SumRange(b, c))
