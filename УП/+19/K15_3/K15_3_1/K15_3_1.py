import sys

print("Количество аргументов:")
print(len(sys.argv))
print("Последний аргумент:")
print(sys.argv[-1])

print("Все аргументы:")
for i in range(len(sys.argv)):
	print(sys.argv[i], end=" ")

print(len(sys.argv))
if len(sys.argv) > 1:
	if ('-h' in sys.argv) or ('-help' in sys.argv):
		print("Помощи нет")
