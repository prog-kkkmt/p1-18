''' Array7°. Дан массив размера N. Вывести его элементы в обратном порядке.
Брусник Вадим и  Мырза Николай 07.12.2020
'''
n = int((input("Input array size: ")))
a = []
for i in range (n):
    a.append(input())
print(*a[::-1])
