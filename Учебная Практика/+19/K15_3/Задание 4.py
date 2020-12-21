'''
Задание 4. Каталоги и пути интерпретатора Python.
https://docs-python.ru/standart-library/modul-sys-python/katalogi-puti-interpretatora/
'''

import sys
import os

print()
print(sys.prefix)
path_dir = "."
path_const = path_dir
n = int(input("N < 30 :>"))
for i in range(0, n):
    path = path_dir + "/Папка " + str(i)
    os.mkdir(path)
    path_const = "./Папка " + str(i+1)
    os.mkdir(path_const)
    path_dir += "/Папка " + str(i)
    print(os.getcwd())
print()
print(sys.base_prefix)
print(sys.exec_prefix)
print(sys.base_exec_prefix)
print(sys.executable)
