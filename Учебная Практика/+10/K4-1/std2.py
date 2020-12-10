'''- stdin, stdout, stderr модуля sys
Объекты stdin, stdout, stderr модуля sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/obekty-stdin-stdout-stderr-modulja-sys/
'''
import sys, time
def teleprint(*args, delay=0.05, str_join=' '):
    text = str_join.join(str(x) for x in args)
    n = len(text)
    for i, char in enumerate(text, 1):
        if i == n:
            char = f'{char}\n'
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(delay) 

# Строка будет печататься с задержкой, как в телетексте...
teleprint('Печать с задержкой!', 10, 12.5, 'Super!!!', delay=0.07)
# Печать с задержкой!, 10, 12.5, Super!!
