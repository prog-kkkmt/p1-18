import collections

lst = []
length = 0
with open("text.txt", "r") as file:
    for i in file.readline():
        lst.append(i)
        length += 1

dq = collections.deque(lst)

dq.reverse()
print(dq)

with open("text.txt", "w") as file:
    for i in range(length):
        file.write(dq[i])

n = 3
array = [40, 35, 30, 25, 20]
d = collections.deque(array)
summ_d = sum(d)
for i in array:
    summ_d += i - d.popleft()
    d.append(i)
print(summ_d / n)


to_check = input()
item_found = False
iterables = ['ABC', 'D', 'EF']
iterators = collections.deque(iterables)
for item in iterators:
    if to_check == item:
        print("Item found")
        item_found = True
if not item_found:
    print("Item not found")
