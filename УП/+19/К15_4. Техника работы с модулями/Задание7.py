'''
Задание 7. Перемещение файлов
Создайте и переместите файл
'''
import os

f = open("First_name.txt", "w")

f.close()

os.replace("First_name.txt", "../First_name.txt")
