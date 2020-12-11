'''
С использованием результата задания 2 разработать программу для нахождения наименьшего
общего кратного
'''


def main():
    a, b = map(int, input().split())
    m = a * b
    while (n != 0 and m != 0):
        if (a > b):
            a = a % b
        else:
            b = b % a
    print(m // (a + b))

if __name__ == "__main__":
    main()
