'''
К6_2. Техника работы с числами math
'''

import math

def getsin(x):
    multiplier = 1
    result = 0
    for i in range(1, 20, 2):
        result += multiplier * pow(x, i) / math.factorial(i)
        multiplier *= -1

    return result

def main():
    print("Арифметические функции")
    print("math.pow(3, 2) =", math.pow(3, 2))
    print("math.pow(9, 0.5) =", math.pow(9, 0.5))
    print("math.sqrt(9) =", math.sqrt(9))
    print("math.factorial(5) =", math.factorial(5))
    print("sin(pi/2) =", getsin(math.pi / 2))
    print()

    print("Тригонометрические функции")
    print("math.sin(math.pi/4) =", math.sin(math.pi / 4))
    print("math.cos(math.pi) =", math.cos(math.pi))
    print("math.tan(math.pi/6) =", math.tan(math.pi / 6))
    print("math.hypot(12,5) =", math.hypot(12, 5))
    print("math.atan(0.5773502691896257) =", math.atan(0.5773502691896257))
    print("math.asin(0.7071067811865476) =", math.asin(0.7071067811865476))
    print()

    print("Гиперболические функции")
    print("math.asinh(11.548739357257746) =", math.asinh(11.548739357257746))
    print("math.acosh(11.591953275521519) =", math.acosh(11.591953275521519))
    print("math.atanh(0.99627207622075) =", math.atanh(0.99627207622075))
    print("math.sinh(math.pi) =", math.sinh(math.pi))
    print("math.cosh(math.pi) =", math.cosh(math.pi))
    print("math.cosh(math.pi) =", math.cosh(math.pi))
    print()

    print("Логарифмические функции")
    print("math.log(148.41315910257657) =", math.log(148.41315910257657))
    print("math.log(148.41315910257657, 2) =", math.log(148.41315910257657, 2))
    print("math.log(148.41315910257657, 10) =", math.log(148.41315910257657, 10))
    print("math.log(1.0000025) =", math.log(1.0000025))
    print("math.log1p(0.0000025)  =", math.log1p(0.0000025))
    print("math.exp(5) =", math.exp(5))
    print("math.e**5  =", math.e ** 5)
    print()

    print("Округление:")
    print("math.ceil(1.001) =", math.ceil(1.001))
    print("math.floor(1.001) =", math.floor(1.001))
    print("math.factorial(10) =", math.factorial(10))
    print("math.gcd(10,125) =", math.gcd(10, 125))
    print("math.trunc(1.001) =", math.trunc(1.001))
    print("math.trunc(1.999) =", math.trunc(1.999))
    print()

if (__name__ == "__main__"):
    main()