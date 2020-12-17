def y(b):
    def foo(x):
        if x < 1:
            return x**2 - 2
        elif x == 1:
            return 1 + x
        else:
            return math.sqrt(b**3 + x**2)
    return foo

#test

y1 = y(1.25)
for a in map(y1, [0.0, 0.5, 1.0]):
    print(a)
