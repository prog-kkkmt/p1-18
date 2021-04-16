'''
Задание 1. Составить и выполнить по 3 примера использования модулей для работы
с дробными числами (fractions), для точных вычислений (decimal).
'''

from decimal import Decimal
from fractions import Fraction

number = Decimal("0.444")
print(number)
number = number.quantize(Decimal("1.00"))
print(number)

number = Decimal("0.555678")
print(number.quantize(Decimal("1.00")))

number = Decimal("0.999")
print(number.quantize(Decimal("1.00")))

print(Fraction(1, 3))

print(Fraction(3.1415))

a = Fraction(1, 7)
b = Fraction(1, 3)
print(a + b)
