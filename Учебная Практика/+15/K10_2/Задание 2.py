'''
Задание 2. https://stepik.org/lesson/201702/step/13?unit=175778
Использовать map, lambda
Квадраты в обратном порядке. Числа вводятся до точки. Через пробел выведите эти числа в 
обратном порядке, возводя их в квадрат.
Sample Input:
5
16
20
1
9
.
'''
a = [int(x)**2 for x in iter(input, '.')]
b = list(map(lambda x: print(x, end=' '), a[::-1]))
