#Выполнили: Груздев Роман, Герасимов Дмитрий
#Группа: П1-18
'''
К14_1. Техника работы с файлами
Задание 4. http://ptaskbook.com/ru/tasks/text.php
Text44. Дан текстовый файл, каждая строка которого изображает целое число, дополненное слева и справа
несколькими пробелами. Вывести количество этих чисел и их сумму.
'''



with open("file.txt","r") as fin:
    list = [line.split() for line in fin]

sum, count = 0, 0
for i in range(len(list)):
    sum += (int(*list[i]))
    count += 1
    print(*list[i])

print("sum =",sum)
print("count =", count)