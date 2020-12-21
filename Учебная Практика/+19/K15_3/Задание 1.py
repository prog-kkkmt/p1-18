'''
К15_3. Техника работы с модулями
Модуль sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/
Задание 1. Функция argv модуля sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/funktsija-argv-modulja-sys/
'''
import sys

print("Количество аргументов:>" + str(sys.argv))
print()
print("Поседний аргумент:>" + str(sys.argv[-1]))
print()
print("Все аргументы:>" + str(len(sys.argv)))
for i in range(len(sys.argv)):
	print(sys.argv[i], end=" ")

