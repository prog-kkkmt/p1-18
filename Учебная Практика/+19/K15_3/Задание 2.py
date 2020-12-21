'''
Задание 2. Имя используемой OS.
https://docs-python.ru/standart-library/modul-sys-python/imja-ispolzuemoj-os/
'''
import sys
import os
if sys.platform.startswith('win32'):
    print(f"This is Windows :> {os.name}")
    print(sys.getwindowsversion())
else:
    print(f"WTF?. This is :> {os.name}")
    print(sys.getwindowsversion())

