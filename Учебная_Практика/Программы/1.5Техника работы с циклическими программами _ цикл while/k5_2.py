# Задание 3.
# Разработать программу для нахождения наибольшего общего делителя

from collections import Counter

# https://ru.wikipedia.org/wiki/Перебор_делителей
# на больших числах типа 1ккк вроде работает быстро
def integer_factorization(n):
    tmp = n
    p_nums = []
    while True:
        for p_num in prime_numbers():
            if tmp % p_num == 0:
                tmp = tmp / p_num
                p_nums.append(p_num)
                break

        i = 2
        j = 0
        while (i * i <= tmp) and (j != 1):
            if tmp % i == 0:
                j = 1
            i += 1

        if j == 0:
            p_nums.append(int(tmp))
            break
    return Counter(p_nums)


def prime_numbers():
    n = 2
    while True:
        i = 2
        j = 0
        while (i * i <= n) and (j != 1):
            if n % i == 0:
                j = 1
            i += 1

        if j != 1:
            yield n

        n += 1


def gcd(nums):
    diff = integer_factorization(nums[0]) & integer_factorization(nums[1])
    if diff == Counter():
        return None
    else:
        gcd_n = 1
        for n in diff:
            gcd_n *= n
        return gcd_n
    
n1 = int(input('Введите первое число НОД: '))
n2 = int(input('Введите второе число НОД: '))
print(gcd([n1, n2]))
