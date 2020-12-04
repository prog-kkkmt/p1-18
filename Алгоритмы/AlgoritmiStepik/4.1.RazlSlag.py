def main():
    n = int(input())
    i = 0 
    summ = 0 
    if( n == 2):
        print(1)
        print(2)
        exit(0)
    while( summ <= n):
        summ += i+1
        i+= 1
    print(i-1)
    for f in range(1, i-1):
        print(f, end = " ")
    print(i-1 + n % (summ -i))
if __name__ == "__main__":
    main()

