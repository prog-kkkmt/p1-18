'''
Разработать программу для нахождения наибольшего общего делителя
'''

def gcd(n, m):
    while (n != 0 and m != 0):
        if (n >= m):
            n = n % m
        else:
            m = m % n
            
    return n + m



def main():
    a, b = map(int, input().split())
    print(gcd(a, b))


if __name__ == "__main__":
    main()
