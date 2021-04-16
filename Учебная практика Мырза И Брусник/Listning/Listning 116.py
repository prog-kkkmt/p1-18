'''
Диаграммы
'''
from matplotlib import pyplot as plt

fruits = ["apple", "peach", "orange", "bannana", "melon"]
number_sold_fruits = [35, 52, 43, 34, 17]
plt.bar(fruits, number_sold_fruits)
plt.title('Number of sold fruits')
plt.xlabel('Fruit')
plt.ylabel('Number of sold')
plt.savefig('grafig.png')
plt.show()
