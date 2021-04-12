from matplotlib import pyplot as plt

x = [i for i in range(1, 20)]
y1 = [i ** 2 for i in x]
y2 = [i ** 3 for i in x]
y3 = [i ** 4 for i in x]

plt.plot(x, y1)
plt.plot(x, y2)
plt.plot(x, y3)

plt.savefig('grafig.png')
plt.show()