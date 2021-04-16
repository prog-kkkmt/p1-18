'''
https://stepik.org/lesson/201702/step/13?unit=175778
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

Sample Output:
81 1 400 256 25
'''
import math

l = [int(x) for x in iter(input, '.')]
result = list(map(lambda x: print(x ** 2, end=' '), l[::-1]))
