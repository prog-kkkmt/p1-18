lst_words = set()
lst_string = set()

m = int(input())
for i in range(m):
    lst_words.update(input().lower().split())

n = int(input())
for i in range(n):
    lst_string.update(input().lower().split())

lst_string.difference_update(lst_words)
for i in lst_string:
    print(i)