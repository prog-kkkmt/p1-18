#Описать функцию SortInc3(X), меняющую содержимое списка X из трех 
#вещественных элементов таким образом, чтобы их значения оказались упорядоченными по 
#возрастанию (функция возвращает None). С помощью этой функции упорядочить по 
#возрастанию два данных списка X и Y.
def filling(X):
    for i in range(3):
        elem = int(input())
        X.append(elem)
        
def SortInc3(X):
    for i in range(3):
        for j in range(3):
            if (X[i] < X[j]):
                temp = X[i]
                X[i] = X[j]
                X[j] = temp
    return X
X = []
Y = []
filling(X)
filling(Y)
print(SortInc3(X))
print(SortInc3(Y))
