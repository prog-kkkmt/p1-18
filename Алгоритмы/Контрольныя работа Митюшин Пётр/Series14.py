#Series14
#Дано целое число K и набор ненулевых целых чисел; признак его завершения — число 0. Вывести количество чисел в наборе, меньших K.
kol = 0
k = int(input())
elem = int(input())
while(elem != 0):
    if (elem < k):
        kol += 1
    elem = int(input())
print(kol)    
