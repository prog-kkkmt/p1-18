'''
Задание 10. Удаление директорий
'''
import os

print("Все папки и файлы: ", os.listdir())

del_name = input("Введите имя папки которую Вы хотите удалить: ")

os.rmdir(del_name)