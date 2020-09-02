#Array7°. Дан массив размера N. Вывести его элементы в обратном порядке.

a = []
s = int(input())

for i in range (s):
    
    d = int(input())
    a.append(d)


print(*a[::-1])
