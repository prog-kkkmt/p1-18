''' Array15. Дан массив A размера N. Вывести вначале
его элементы с нечетными номерами в порядке возрастания
номеров, а затем — элементы с четными номерами в
порядке убывания номеров:
A1,    A3,    A5,    …,    A6,    A4,    A2.
Брусник Вадим и Мырза Николай
'''

a = []
even = []
odd = []
odd_counter = 0
n = int(input())
for i in range (n):
  a.append(input())
for j in range (n):
  if j % 2 == 0:
    even.append(a[j])
for g in range (n):
  if g % 2 != 0:
    odd.append(a[g])
print (*even[::], sep = ',', *odd[::-1])
