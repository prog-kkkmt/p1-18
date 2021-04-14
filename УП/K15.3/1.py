'''
Задача №1. Функция argv модуля sys в Python. Ввод переменной, вывод переменной, вывод версии и вывод Test.
'''
import sys
a = sys.stdin.readline()
sys.stdout.write(a + '\n')
sys.stdout.write(sys.version + '\n')
sys.stdout.write(str('Test') + '\n')
sys.exit()
