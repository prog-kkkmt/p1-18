'''
Задание. Разработать программу
- форматная строка и метод формат
'''

coord = (3, 5)
print('X: {0[0]};  Y: {0[1]}'.format(coord))
print('X: 3;  Y: 5')
print("repr() shows quotes: {!r}; str() doesn't: {!s}".format('test1', 'test2'))
print("repr() shows quotes: 'test1'; str() doesn't: test2")
print('{:<30}'.format('left aligned'))
print('left aligned                  ')
print('{:>30}'.format('right aligned'))
print('                 right aligned')
print('{:^30}'.format('centered'))
print('           centered           ')
print('{:*^30}'.format('centered')) 
print('***********centered***********')
print('{:+f}; {:+f}'.format(3.141592, -3.141592))  
print('+3.141592; -3.141592')
print('{: f}; {: f}'.format(3.141592, -3.141592))
print(' 3.141592; -3.141592')
print('{:-f}; {:-f}'.format(3.141592, -3.141592)) 
print('3.141592; -3.141592')
print("int: {0:d};  hex: {0:x};  oct: {0:o};  bin: {0:b}".format(42))
print('int: 42;  hex: 2a;  oct: 52;  bin: 101010')
print("int: {0:d};  hex: {0:#x};  oct: {0:#o};  bin: {0:#b}".format(42))
print('int: 42;  hex: 0x2a;  oct: 0o52;  bin: 0b101010')
points = 19.5
total = 22
print('Correct answers: {:.2%}'.format(points/total))
print('Correct answers: 88.64%')
