#For7. Даны два целых числа A и B (A < B). Найти сумму всех целых чисел от A до B включительно.

a = int(input())
b = int(input())
summ = 0
for i in range(a,b+1):
    summ += i
print(summ)
