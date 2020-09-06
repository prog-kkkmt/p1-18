'''
Minmax7. Дано целое число N и набор из N целых чисел.
Найти номера первого максимального и последнего минимального элемента
из данного набора и вывести их в указанном порядке.
'''

n = int(input())
mas = []
len_mas = 0
for len_mas in range(n):
    d = int(input())
    mas.append(d)

len_mas += 1
minn = min(mas)
n_minn = -1
maxx = max(mas)
n_maxx = -1

for i in range(len_mas):
    if(mas[i] == maxx) and (n_maxx == -1):
        n_maxx = i
    if(mas[i] == minn):
        n_minn = i

print("index min = ", n_minn)
print("index max = ", n_maxx)
