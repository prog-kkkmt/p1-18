import sys
import os

print()
print("Совет! Не вводите большие числа")
print(sys.prefix)

path_dir = "."
path_const = path_dir
n = int(input())
for i in range(0, n):
    path = path_dir + "/Dir " + str(i)
    os.mkdir(path)
    path_const = "./Dir " + str(i+1)
    os.mkdir(path_const)
    path_dir += "/Dir " + str(i)
    print(os.getcwd())
    
if n > 5:
	print("Зря...")
print(sys.base_prefix)
print(sys.exec_prefix)
print(sys.base_exec_prefix)
print(sys.executable)
#print(sys.platlibdir)
