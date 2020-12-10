'''
- print
Функция print() в Python, печатает объект.
https://docs-python.ru/tutorial/vstroennye-funktsii-interpretatora-python/funktsija-print/
'''
print('Hello')
# Hello

print('Hello', 'how are you?')
# Hello how are you?

print('Hello', 'how are you?', sep='---')
# Hello---how are you?

print('Раз', end='=>')
print('Два')
# Раз=>Раз

print(11, 12, 13, 14, sep=';')
# 11;12;13;14
