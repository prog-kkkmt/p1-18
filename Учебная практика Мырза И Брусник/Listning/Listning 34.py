'''
Задание 1. https://stepik.org/lesson/193753/step/4?unit=168148
Вывести чётные
Необходимо вывести все четные числа на отрезке [a; a * 10].
Sample Input:
2
Sample Output:
(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
'''

a = int(input())
if a % 2 ==0:
    print(tuple(range(a,a*10+1,2)))
else:
    print(tuple(range(a+1,a*10+1,2)))
