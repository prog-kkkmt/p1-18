'''
Задача №1. Составить и выполнить по 3 примера использования модулей для работы с дробными числами (fractions), для точных вычислений (decimal).
'''
#Decimal обеспечивает поддержку правильного округления десятичной арифметики с плавающей точкой.

from decimal import Decimal

number1 = Decimal(input())
number2 = Decimal(input())

print(number1 + number2)

#Округление осуществляется с помощью метода quantize().
#В качестве первого аргумента – объект Decimal, указывающий на формат округления:


from decimal import Decimal
number = Decimal(input())

print(number.quantize(Decimal('1.000')))
#  округление до 3 чисел в дробной части

print(number.quantize(Decimal('1.00')))
#  округление до 2 чисел в дробной части

print(number.quantize(Decimal('1.0')))
#  округление до 1 числа в дробной части
