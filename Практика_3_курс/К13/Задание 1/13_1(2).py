#Выполнили: Гусев Никита и Цыпков Илья

#Убывающий ряд.
#С клавиатуры вводятся целые числа a > b. Выведите убывающую
#последовательность чисел по одному числу в строке.

a, b = int(input()), int(input())
while a > b:
    print(a)
    a -= 1
    
