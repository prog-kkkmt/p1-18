'''
- stdin, stdout, stderr модуля sys
Объекты stdin, stdout, stderr модуля sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/obekty-stdin-stdout-stderr-modulja-sys/
'''
import sys

stdout = sys.stdout

try:
    sys.stdout = open('file.txt', 'w')
    print('blah')
finally:
    # Закрываем file.txt
    sys.stdout.close()  
    sys.stdout = sys.__stdout__
