'''
К5_2. Техника работы с циклическими программами _ цикл while;
Задание 5.
https://stepik.org/lesson/3369/step/8?unit=952
Напишите программу, которая выводит часть последовательности 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 ...
(число повторяется столько раз, чему равно).
На вход программе передаётся неотрицательное целое число n — столько элементов
последовательности должна отобразить программа.
На выходе ожидается последовательность чисел, записанных через пробел в одну строку.
Например, если n = 7, то программа должна вывести 1 2 2 3 3 3 4.
'''

def main():
    n = int(input())
    j = num = 1
    for i in range(1, n+1):
        print(num, end=' ')
        if j < num:
            j += 1
        else:
            j = 1
            num += 1
    print("\n")

if __name__ == "__main__":
    main()
