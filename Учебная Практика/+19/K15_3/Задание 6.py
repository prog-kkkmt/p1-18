'''
Задание 6. Функция exit() модуля sys в Python.
https://docs-python.ru/standart-library/modul-sys-python/funktsija-exit-modulja-sys/
'''
import sys
if len(sys.argv) > 1:
	if ("-exit" in sys.argv) or ("-e" in sys.argv):
		sys.exit(0)
