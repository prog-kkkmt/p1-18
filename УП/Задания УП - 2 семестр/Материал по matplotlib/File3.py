from matplotlib import pyplot as plt
import numpy

fig, ax = plt.subplots()

x = numpy.array([-3, -2, -1, 0.1, 1, 2, 3])
y = numpy.array([9, 4, 1, 0.1, 1, 4, 9])

ax.plot(x, y)

ax.plot(x, numpy.sin(x), color="blue", linestyle='-')
ax.plot(x, x + 4, color="yellow", linestyle='--')
ax.plot(x, x + 2, color="g", linestyle=':')

ax.plot(x, numpy.cos(x), color="#FF0000", linestyle='-.')
ax.plot(x, x, color="#FFDD44", linestyle='--')

ax.plot(x, numpy.tan(x), color="#FFFFFF", linestyle='-.')
ax.plot(x, x + 10, color="#000080", linestyle='--')

plt.savefig('grafig.png')
plt.show()