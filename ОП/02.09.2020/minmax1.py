#Minmax1°. Дано целое число N и набор из N чисел. Найти минимальный и максимальный из элементов данного набора и вывести их в указанном порядке.

n = int(input())
a = [int(input()) for i in range(n)]
print('n =', n)
print('a =', a)
print('min(a) =', min(a))
print('max(a) =', max(a))
