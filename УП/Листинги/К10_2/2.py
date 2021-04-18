a = list(map(int, input().split()))
print([a[i] for i in filter(lambda x: x % 2 == 1, range(len(a)))])
