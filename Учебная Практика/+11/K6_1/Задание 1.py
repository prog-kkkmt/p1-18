'''
Задание 1. Составить и выполнить по 3 примера использования модулей для работы
с дробными числами (fractions), для точных вычислений (decimal).
'''
from fractions import Fraction 
from decimal import Decimal, getcontext

print("\nFraction\n")# Fraction

print("Пример 1") # Пример 1
print(Fraction(33.33))
print(Fraction('33.33'))

print("Пример 2") # Пример 2
print(Fraction(153, 272))
print(Fraction(1, 2) + Fraction(3, 4))

print("Пример 3") # Пример 3
print(Fraction(1, 8) ** Fraction(1, 2))

print("\nDecimal\n")# Decimal

print("Пример 1") # Пример 1
number1 = Decimal("0.1")
number2 = Decimal("0.7")
print(number1 + number2)

print("Пример 2") # Пример 2
getcontext().prec = 2
print(Decimal('4.34') / 4)

getcontext().prec = 3
print(Decimal('4.34') / 4)

print("Пример 3") # Пример 3
getcontext().prec = 4  # установим точность округление
number = Decimal("2.1234123")
print(number.quantize(Decimal('1.000')))
2.123  #  округление до 3 чисел в дробной части
print(number.quantize(Decimal('1.00')))
2.12  #  округление до 2 чисел в дробной части
print(number.quantize(Decimal('1.0')))
2.1  #  округление до 1 числа в дробной части

