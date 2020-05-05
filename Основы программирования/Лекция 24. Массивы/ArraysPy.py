'''
Задача к видео-лекции. Массивы. Простейшие операции со списком в Python
Гусятинер Л.Б., МГОТУ ККМТ, 24.04.2020, П1-18
'''
n = int(input())
# Заполнение
v = [int(input()) for _ in range(n)]

''' Или
v = list()
for i in range(n):
    x = int(input())
    v.append(x)
'''

# Максимальный элемент
print('max =', max(v))

# Сумма
print('sum =', sum(v))

# Печать
print(*v, sep=', ')

