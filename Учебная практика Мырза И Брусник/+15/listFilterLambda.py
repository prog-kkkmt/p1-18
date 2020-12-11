'''
Использовать lambda, filter.
Array55. Дан целочисленный массив A размера N (<= 15). Переписать в новый целочисленный
массив B все элементы с нечетными порядковыми номерами (1, 3, ...) и вывести размер
полученного массива B и его содержимое. Условный оператор не использовать.
1
2
3
4
5
.
'''

l = [int(x) for x in iter(input, '.')]

indexes = filter(lambda i: i % 2 != 0, range(len(l)))

result = [l[i] for i in indexes]

print(*result)
