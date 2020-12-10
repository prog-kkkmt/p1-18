'''
Задание 3. Array58. Дан массив A размера N. Сформировать новый массив B того же размера по 
следующему правилу: элемент B[K] равен сумме элементов массива A с номерами от 0 до K.

'''
n = int(input())
a = [int(input()) for _ in range(n)]
b=[]
sums = 0
for i in range(0,len(a)):
    sums += a[i]
    b.append(sums)
print(*b)
    
