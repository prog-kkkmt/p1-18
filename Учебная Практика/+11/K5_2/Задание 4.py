'''
Задание 4.
С использованием результата задания 2 разработать программу для нахождения наименьшего
общего кратного
'''
a = int(input())
b = int(input())
A = a
B = b
while A % b != 0:
    A = A+a
while B % a != 0:
    B = B+b
if A < B :
    print(A)
else :
    print(B)
