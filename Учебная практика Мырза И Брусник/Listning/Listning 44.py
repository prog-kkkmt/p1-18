'''
argv
'''
import sys, os
print('Список аргументов')
print(sys.argv)
print('Исходные байты')
print([os.fsencode(arg) for arg in sys.argv])
