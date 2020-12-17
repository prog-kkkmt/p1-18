from fractions import Fraction

a = Fraction(input())
b = Fraction(input())

print(a + b)

#Fraction.limit_denominator(max_denominator=1000000)
#- ближайшее рациональное число со знаменателем не больше данного.


x = Fraction(input())
print(x.limit_denominator())


