import random

def search_equal_items(lst):
    print(list(set(lst)))

lst = []
n = int(input())
for i in range(n):
    lst.clear()
    m = random.randint(5, 10)
    for j in range(m):
        elem = random.randint(1, 50)
        lst.append(elem)
    search_equal_items(lst)
