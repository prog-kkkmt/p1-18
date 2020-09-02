'''
Func6°. Описать функцию SumRange(A, B) целого типа, находящую сумму всех целых
чисел от A до B включительно (A и B — целые). Если A > B, то функция
возвращает 0. С помощью этой функции найти суммы чисел от A до B и от B до C,
если даны числа A, B, C.

'''

def SumRange(a, b):
  summ = 0
  if (a < b):
    i = a
    for i in range(b):
      summ += i
  elif (a == b):
    return a
  return summ

a = int(input())
b = int(input())
c = int(input())

print(SumRange(a, b))
print(SumRange(b, c))
