import os
pd = '''/'''
d = '''C:/Users/Lanode/Documents/GitHub/p1-18/Учебная_Практика/Программы'''
os.chdir(d)
for x in os.listdir():
    s = '{}\nФайлы:\n'.format(x)
    f = ''
    for y in os.listdir(x):
        f += x+pd+y+'\n'
    print(s+f+'\n')
