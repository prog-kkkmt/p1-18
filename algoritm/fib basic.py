def fib(n): # Сама функция вычисления числа Фибоначчи
    assert n >= 0
    return n if n <= 1 else fib(n - 1) + fib(n - 2)

def main(): # Функция входа числа и выполнения функции fib
    n = int(input())
    print(fib(n))

main() # Запуск функции main