# Задание 2. Разработать программу с меню для демонстрации работы с типами данных:
# список(list), словарь(dict), множество(set)
# Меню -> выбор типа данных -> выбор метода -> краткая справка

lst = []
numbers = set()
print("Hello, choose a command:")
while True:
    print("> ", end ="")
    number = int(input())
    if number == 1:
        print("list,\nзапишите список из 5 чисел:") # создает массив чисел
        for i in range(5):
            x = int(input())
            lst.append(x)
        print(lst)
    elif number == 2:
        print("dict")
        food_inv = {'banana': 3, 'chips': 7, 'apples': 2}
        print(food_inv)
    elif number == 3:
        print("set,\nвведите 5 неповторяющихся числа:") # множества удаляют похожие элементы
        for i in range(5):
            l = int(input())
            numbers.add(l)
        print(numbers)
    else:
        print("Error.")
