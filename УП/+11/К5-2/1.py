import math

x = float(input("x: "))
epsilon = float(input("epsilon: "))
sign = 1
_sum = 0
k = 3
_next = (x**k)/math.factorial(k)
_sum = x - _next
while(_next > epsilon):
    k += 2
    _next = (x**k)/math.factorial(k)
    _sum += sign * _next
    sign *= -1

print(_sum)
