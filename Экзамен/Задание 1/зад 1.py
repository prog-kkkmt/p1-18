#Выполнил: Гусев Никита 

#Дан неупорядоченный файл целых чисел. Реализовать функцию поиска
#максимального элемента. Оценить число операций присвоения в лучшем, худшем
#и среднем случаях

def max_elem(a):
    return max(a)

f1 = open('input.txt', 'r')
lst = []
for line in f1:
    x = line.split()
    i = 0
    while i < len(x):
        x[i] = int(x[i])
        lst.append(x[i])
        i+=1
            
print(max_elem(lst))
f1.close()

