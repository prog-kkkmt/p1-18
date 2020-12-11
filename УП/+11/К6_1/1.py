####### Fractions library #######
import fractions

# 1 пример: арифметические операции по правилам дробей
a = fractions.Fraction("1/3")
b = fractions.Fraction("2/5")
print(a+b, a-b, a*b, a/b)

# 2 пример: нахождение НОД
print(fractions.gcd(6,9))

# 3 пример: представление вещественного числа в виде дроби
print(fractions.Fraction("56.45"))

####### Decimal library #######
import decimal

# 1 пример: точные вычисления (0.1 + 0.1 + 0.1 = 0.3)
a = decimal.Decimal("0.1")
print(a + a + a)

# 2 пример: настройка Decimal через getcontext()
print(decimal.Decimal("3")/decimal.Decimal("7"))
decimal.getcontext().prec = 3 # 3 знака после запятой
print(decimal.Decimal("3")/decimal.Decimal("7"))

# 3 пример: представление в виде дроби
print(decimal.Decimal("3.14").as_integer_ratio())
