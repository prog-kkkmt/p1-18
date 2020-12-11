from fractions import *
from decimal import Decimal, ROUND_HALF_EVEN

number = Decimal("0.1")
number = number + number + number
print(number)

number = Decimal("0.69")
number = number * number
print(number)

a = Decimal("0.85843")
a = a.quantize(Decimal("1.00")) #quantize позволяет округлять числа
print(a)

b = Decimal("0.85843") + Decimal("0.69")
print(b.quantize(Decimal("1.00"), ROUND_HALF_EVEN))

print("-----------")

a = Fraction(1, 7)
b = Fraction(1, 3)

print(a + b)
print(a - b)
print(a / b)
print(a % b)
print(a ** b)

a.limit_denominator()
print(Fraction('3.14159265359').limit_denominator(1000))
print(Fraction('3.14159265359').limit_denominator(100))
print(Fraction('3.14159265359').limit_denominator(10))
print(Fraction('3.14159265359').limit_denominator(1))

print(Fraction(1, 4))
