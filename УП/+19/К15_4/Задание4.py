'''
Задание 4. Создание вложенных папок
Перейти на папку выше и создать там несколько вложенных папок
'''

import os

os.chdir("..")

path_dir = os.getcwd()

n = int(input("Введите количество вложенных папок, которые вы хотите создать: "))

for i in range(n):
    path = path_dir + "/Папка " + str(i)
    os.mkdir(path)
    path_dir += "/Папка " + str(i)
