stack = []
n = 100
while n != 0:
    print('1. Добавить \n 2. Удалить')
    num = int(input())
    if num == 1:
        print('Введите число.')
        n = input()
        stack.append(n)
        print(stack)
    elif num == 2:
        print('Удалить элемент.')
        stack.pop()
        print(stack)
