'''
Задание 1. https://stepik.org/lesson/193753/step/4?unit=168148
Вывести чётные
Необходимо вывести все четные числа на отрезке [a; a * 10].
'''
a =int(input())
print(tuple([i for i in range(a+a%2,a*10+1,2)]))