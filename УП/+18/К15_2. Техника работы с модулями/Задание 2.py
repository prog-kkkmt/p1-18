from collections import *

c = Counter()

items = []
n = int(input())
for i in range(n):
    string = input()
    items.append(string)

for i in items:
    c[i] += 1
print(c)

defdict = defaultdict(list)
for i in range(n):
    defdict[i].append(i)

print(defdict)

d = OrderedDict.fromkeys('abcd')
d.move_to_end('b') # добавляет элемент из строки в конец
print(''.join(d.keys())) #p2rint(d.keys())

d.move_to_end('a')
print(''.join(d.keys()))

d.popitem('a') # удаляем элемент
d.popitem('b')
print(''.join(d.keys()))

d.move_to_end('d', last=True) #переносим d в перёд
print(''.join(d.keys()))
d.move_to_end('d', last=False) #переносим d в перёд
print(''.join(d.keys()))
