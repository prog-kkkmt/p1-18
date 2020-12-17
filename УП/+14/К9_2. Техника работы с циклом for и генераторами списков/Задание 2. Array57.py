def main():
    #lst = input().split()
    a = []
    n = int(input())
    for i in range(n):
        elem = int(input())
        a.append(elem)
    b = []
    for i in range(1, len(a), 2):
        b.append(a[i])
            
    for i in range(0, len(a), 2):
        b.append(a[i])
    print(*b)

if __name__ == "__main__":
    main()
#-13 -30 63 -61 58 -86