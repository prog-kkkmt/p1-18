'''
Первые графики matplotlib 
'''
from matplotlib import pyplot as plt

x = [1, 5, 10, 15, 20]
y1 = [1, 7, 3, 5, 11]
y2 = [i**2 + 1 for i in y1]
y3 = [i**2 + 1 for i in y2]
plt.figure(figsize=(12, 7))
plt.subplot(2, 2, 1)
plt.plot(x, y1, '-')
plt.subplot(2, 2, 2)
plt.plot(x, y2, '--')
plt.subplot(2, 2, 3)
plt.plot(x, y3, '-.')
plt.savefig('grafig.png')
plt.show()
