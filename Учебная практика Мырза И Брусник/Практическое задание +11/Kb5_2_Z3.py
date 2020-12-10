'''
Разработать программу для нахождения наибольшего общего делителя
'''
def gcd(a, b):
    if a % b == 0 or b % a == 0:
        return min(a, b)
    else:
        if a >= b:
            return gcd(a % b, b)
        else:
            return gcd(a, b % a)


def main():
    a, b = map(int, input().split())
    print(gcd(a, b))


if __name__ == "__main__":
    main()
