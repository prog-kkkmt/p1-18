'''
Series7. Дано целое число N и набор из N вещественных чисел.
Вывести в том же порядке округленные значения всех чисел из данного набора
(как целые числа), а также сумму всех округленных значений.
'''
n = int(input())
a = []
summ = 0
for i in range(n):
    b = float(input())
    a.append(b)
for i in range(n):
    summ += int(a[i])
    print(int(a[i]))
print("Summa ravna = ", summ)
