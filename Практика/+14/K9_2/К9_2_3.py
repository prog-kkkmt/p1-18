"""
Задание 3. Array58. Дан массив A размера N. Сформировать новый массив B того же размера по
следующему правилу: элемент B[K] равен сумме элементов массива A с номерами от 0 до K.
"""

n = int(input())
a = [int(input()) for _ in range(n)]
b=[]
sum = 0
for k in range(0,len(a)):
    sum += a[k]
    b.append(sum)
print(*b)
