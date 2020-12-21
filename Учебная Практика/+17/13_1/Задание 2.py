'''
Задание 2. https://stepik.org/lesson/193753/step/5?unit=168148
Убывающий ряд.
С клавиатуры вводятся целые числа a > b. Выведите убывающую последовательность чисел 
по одному числу в строке.
Sample Input:
-2
-8
Sample Output:
-2
-3
-4
-5
-6
-7
'''

a = int(input())
b = int(input())
for i in range(a, b, -1):
    print(i)
