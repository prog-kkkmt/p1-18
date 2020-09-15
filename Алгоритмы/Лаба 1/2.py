'''
Брусник Вадим П1-18
Массив
Вводится число N, сформировать массив чисел от 0 до N.
Вывести этот массив.
Input:
    10
Output:
    0 1 2 3 4 5 6 7 8 9
'''
LEN = 100
mas = [LEN]
n = int(input())
mas = [int(i) for i in range(n)]
print(*mas)
