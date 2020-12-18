import random

# Задание 1. https://pythontutor.ru/lessons/sets/problems/number_of_unique/
# Задача «Количество различных чисел»
# Условие. Дан список чисел. Определите, сколько в нем встречается различных чисел.

# print(
#     len(
#         set(
#             map(int, input('Введите числа через пробел: ').split())
#         )
#     )
# )

print('Задание 1')

x = [random.randint(0,20) for _ in range(10)]
print(x)
print(len(set(x)))

# Задание 2. https://pythontutor.ru/lessons/sets/problems/number_of_coincidental/
# Задача «Количество совпадающих чисел»
# Условие. Даны два списка чисел. Посчитайте, сколько чисел содержится одновременно как 
# в первом списке, так и во втором.

print('Задание 2')

x = [random.randint(0,20) for _ in range(10)]
y = [random.randint(0,20) for _ in range(10)]

print(x)
print(y)
print(len(set(x) & set(y)))

# Задание 3. https://pythontutor.ru/lessons/sets/problems/sets_intersection/
# Задача «Пересечение множеств»
# Условие. Даны два списка чисел. Найдите все числа, которые входят как в первый, 
# так и во второй список и выведите их в порядке возрастания.

print('Задание 3')

x = [random.randint(0,20) for _ in range(10)]
y = [random.randint(0,20) for _ in range(10)]

print(x)
print(y)
print(sorted(set(x) & set(y)))