import sys
import time

stdout = sys.stdout
stderr = sys.stderr

lst = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']

try:
    sys.stdout = open('file.txt', 'w')
    for i in lst:
        sys.stdout.write(i + '\n')
finally:
    sys.stdout.close()
    sys.stdout = stdout

def teleprint(*args, delay=0.05, str_join=' '):
    text = str_join.join(str(x) for x in args)
    n = len(text)
    for i, char in enumerate(text, 1):
        if i == n:
            char = f'{char}\n'
        sys.stdout.write(char)
        sys.stdout.flush()
        time.sleep(delay)

teleprint('Печать с задержкой!', 10, 12.5, 'Super!!!', delay=0.07)