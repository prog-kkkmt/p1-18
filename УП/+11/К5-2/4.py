def nod(a, b):
    return nod(b%a, a) if a else b

def nok(numbers):
    while len(numbers) != 1:
        a = numbers.pop(0)
        b = numbers.pop(0)
        c = a*b/nod(a,b)
        numbers.insert(0, c)
    return numbers[0]

numbers = []
n = int(input())
while n != 0:
    numbers.append(n)
    n = int(input())

print(nok(numbers))
