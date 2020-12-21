'''
Задание 4. Func33. Описать функцию SortInc3(X), меняющую
содержимое списка X из трех вещественных элементов таким образом,
чтобы их значения оказались упорядоченными по возрастанию
(функция возвращает None). С помощью этой функции упорядочить по 
возрастанию два данных списка X и Y.
'''

def SortInc3(a):
        for j in range(2):
                for i in range(2):
                        if (a[i] > a[i+1]):
                                c = a[i]
                                a[i] = a[i+1]
                                a[i+1] = c

X=[]
Y=[]
for x in input().split():
        X.append(float(x))
for y in input().split():
        Y.append(float(y))
SortInc3(X)
print(X)
SortInc3(Y)
print(Y)
