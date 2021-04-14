'''
Задание 3.
Разработать программу для нахождения наибольшего общего делителя
'''

#Алгоритм Евклида для нахождения НОД

a = int(input())
b = int(input())
 
while a!=0 and b!=0:
    if a > b:
        a = a % b
    else:
        b = b % a
 
print (a+b)
