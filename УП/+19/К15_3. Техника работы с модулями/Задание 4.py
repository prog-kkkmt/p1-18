import sys
import os

print(sys.prefix)
"""
path_dir = "/home/peter/Desktop"
#os.chdir("/"+path_dir)

n = int(input())
for i in range(1, n+1):
    path = path_dir + "/Dir " + str(i)
    os.mkdir(path)
    path_dir += "/Dir " + str(i)
    #print(os.getcwd())
"""
print(sys.base_prefix)
print(sys.exec_prefix)
print(sys.base_exec_prefix)
print(sys.executable)
#print(sys.platlibdir)
