'''
Задание 6. Переименование файлов
Создать файл в любой папке и переименовать его
'''
import os

path = input("Ввдедите путь, где будет создан этот файл: ")
First_name = input("Введите имя файла: ")

os.chdir(path)

file = open(First_name + "txt", "w")

file.close()

Second_name = input("Как Вы хотите переименовать файл: ")

os.rename(First_name + "txt", Second_name)