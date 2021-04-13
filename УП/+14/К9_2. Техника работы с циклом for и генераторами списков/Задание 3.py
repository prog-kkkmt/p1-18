def fillingZero(lst, b, n):
    b.append(lst[0])
    for i in range(1, n):
        b.append(0)

def main():
    b = []
    lst = []
    summ = 0
    n = int(input())
    for i in range(n):
        elem = float(input())
        lst.append(elem)
    fillingZero(lst, b, n)
    #b[0] = lst[0]
    for k in range(1, n):
        for j in range(k+1):
            b[k] += lst[j]
    print(b)
if __name__ == "__main__":
    main()

