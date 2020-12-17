'''
Задание 9. Удаление файлов
Создать файл и удалить его
'''
import os

File_name = input("Введите имя файла: ")

f = open(File_name + ".txt", "w")
f.close()

os.remove(File_name + ".txt")