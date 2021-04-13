def main():
    a = input().split()
    b = []
    for i in range(0, len(a)):
        if (i % 2 == 0):
            b.append(int(a[i]))
    print("Размер массива: ", len(b))
    print(*b)

if __name__ == "__main__":
    main()
