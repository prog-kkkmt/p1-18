'''
https://pythontutor.ru/lessons/lists/problems/more_than_neighbours/
Задача «Больше своих соседей»
Дан список чисел. Определите, сколько в этом списке элементов, которые больше двух
своих соседей, и выведите количество таких элементов. Крайние элементы списка никогда
не учитываются, поскольку у них недостаточно соседей.
'''

arr = []

size = int(input())

count = 0

for i in range(size):
    arr.append(int(input()))
for i in range(size):
    if i > 0 and i < size - 1:
        if arr[i - 1] < arr[i] and arr[i] > arr[i + 1]:
            count += 1

print(count)
