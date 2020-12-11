def nod (a, b):
    return nod (b%a, a) if a else b

a, b = map(int, input().split())
print(nod(a,b))
