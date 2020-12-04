def main():
    n = int(input())
    mass, arr = [], []
    for i in range(n):
        a, b = map(int, input().split())
        mass.append([a,b])
    b = 1 
    for i in range(n-1):
        for j in range(n - i - 1):
            if(mass[j][1] > mass[j+1][1]):
                mass[j], mass[j+1] = mass[j+1], mass[j]
    arr.append(mass[0][1])
    a = 0
    for i in range(n):
        if(arr[a] < mass[i][0]):
            arr.append(mass[i][1])
            a += 1
    print(len(arr))
    print(*arr)
    
if __name__ == "__main__":
    main()
                    
