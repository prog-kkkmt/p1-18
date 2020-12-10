'''
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
s = 0
f = int(1)
while f != 0 :	 
    f = int(input())
    s = s + f
print(s)
