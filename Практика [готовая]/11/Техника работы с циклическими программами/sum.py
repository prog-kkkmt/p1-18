# Выполнил Курбанмухаммедов Стив
# Группа П1-18
'''
УП.01 Учебная практика по модулю ПМ.01
Консультация 5. Техника работы с циклическими программами, цикл while
5-2.
Составитель: Гусятинер Л.Б., 25.11.2020, МГОТУ ККМТ, П1-18, П2-18
Задание 2.
https://stepik.org/lesson/3364/step/11?unit=947
Напишите программу, которая считывает со стандартного ввода целые числа, по одному числу
в строке, и после первого введенного нуля выводит сумму полученных на вход чисел.
Sample Input 1:
5
-3
8
4
0
Sample Output 1:
14

Sample Input 2:
0
Sample Output 2:
0
'''
number = 1
sum_number = 0
while number != 0:
    number = int(input())
    sum_number += number
print('Сумма:', sum_number)