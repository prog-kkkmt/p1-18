'''
Задание 3. Различные сведения о версии Python.
https://docs-python.ru/standart-library/modul-sys-python/razlichnye-svedenija-versii/
'''
import sys
str1 = sys.version_info
print(str1)
print()
print(sys.copyright)
print()
print("API C languages: ", sys.api_version)
print()
print(sys.version)
print()
print("Hex version: ", sys.hexversion)

