#Выполнили: Груздев Роман, Герасимов Дмитрий
#Группа: П1-18
'''
К15_3. Техника работы с модулями

Модуль sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/

Задание 5. Объекты stdin, stdout, stderr модуля sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/obekty-stdin-stdout-stderr-modulja-sys/
'''

import sys

stdin = sys.stdin
try:
    sys.stdin = open("text.txt", "r")
    s = input()
    print("odna stroka: ", s)
finally:
    sys.stdin.close()
    sys.stdin = stdin

try:
    sys.stdin = open("text.txt", "r")
    for i in sys.stdin:
        print(i, end="")
finally:
    sys.stdin.close()
    sys.stdin = stdin
