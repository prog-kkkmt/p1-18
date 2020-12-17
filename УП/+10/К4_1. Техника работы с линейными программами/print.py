import sys

print('Hello')
print("Hello")
objects = [1, 2, 3, 4, 5, 6, 7]
print(*objects, sep=' ', end='\n', file=sys.stdout, flush=False)
print(*objects, sep=' ', end='\n', file=sys.stdout, flush=True) # если True поток будет сброшен в указанный файл file принудительно. Значение по умолчанию False
print(*objects, sep='; ')
print('Hello, {0}, {1}!'.format(input(), input()))
print('{:f}!\n'.format(3.14))