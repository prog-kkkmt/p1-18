'''
К6_2. Техника работы с числами cmath
'''

import cmath

def main():
    print("Сложные функции")
    print("cmath.polar(complex(1.0, 1.0)) =", cmath.polar(complex(1.0, 1.0)))
    print("cmath.phase(complex(1.0, 1.0)) =", cmath.phase(complex(1.0, 1.0)))
    print("abs(complex(1.0, 1.0)) =", abs(complex(1.0, 1.0)))
    print("cmath.sqrt(complex(25.0, 25.0)) =", cmath.sqrt(complex(25.0, 25.0)))
    print("cmath.cos(complex(25.0, 25.0)) =", cmath.cos(complex(25.0, 25.0)))
    print()

if (__name__ == "__main__"):
    main()