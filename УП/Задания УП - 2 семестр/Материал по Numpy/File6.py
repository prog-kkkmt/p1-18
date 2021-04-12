import numpy
lst_x = [i for i in range(1, 9)]
lst_y = [i for i in range(1, 9)]

x = numpy.array(lst_x, float)
y = numpy.array(lst_y, float)

print(x > y)
print(x == y)
print(x < y)

print(numpy.where(x != 0, 1 / x, x))

a = numpy.array([2, 4, 5, 6, 8], float)
b = numpy.array([0, 0, 1, 3, 2, 1], int)
print(a.take(b))
