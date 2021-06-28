# Задание 1. https://stepik.org/lesson/193753/step/4?unit=168148
# Вывести чётные
# Необходимо вывести все четные числа на отрезке [a; a * 10].
# Sample Input:
# 2
# Sample Output:
# (2, 4, 6, 8, 10, 12, 14, 16, 18, 20)

x = int(input())

print(tuple(range(x, x*10+1, 2)))