"""
Задание 3. Array114. Дан массив A размера N. Упорядочить
его по возрастанию методом сортировки простыми вставками:
сравнить элементы A0 и A1 и, при необходимости меняя их
местами, добиться того, чтобы они оказались упорядоченными
по возрастанию; затем обратиться к элементу A2 и
переместить его в левую (уже упорядоченную) часть массива,
сохранив ее упорядоченность; повторить этот процесс для
остальных элементов, выводя содержимое массива после
обработки каждого элемента (от 1-го до N-1 го).
"""

a = []
n = int(input())

for i in range(n):
    a.append(int(input()))

for i in range(n - 1):
    for j in range(n - 1 - i):
        MIN, MAX = min(a[j], a[j + 1]), max(a[j], a[j + 1])
        a[j], a[j + 1] = MIN, MAX

print(a)
