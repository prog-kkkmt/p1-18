a = [int(x) for x in iter(input, '.')]
b = list(map(lambda x: print(x**2, end = ' '), a[::-1]))
