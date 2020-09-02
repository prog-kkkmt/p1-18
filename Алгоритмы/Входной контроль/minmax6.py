'''
Minmax6°. Дано целое число N и набор из N целых чисел.
Найти номера первого минимального и последнего максимального элемента из
данного набора и вывести их в указанном порядке.
'''

n = int(input())
arr = []
len_arr = 0
for len_arr in range(n):
  arr.append(int(input()))

len_arr += 1
minn = min(arr)
n_minn = -1
maxx = max(arr)
n_maxx = -1
for i in range(len_arr):
  if (arr[i] == minn) and (n_minn == -1):
    n_minn = i
  if (arr[i] == maxx):
    n_maxx = i

print("index min = ", n_minn)
print("index max = ", n_maxx)
