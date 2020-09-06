#String7. Дана непустая строка. Вывести коды ее первого и последнего символа.

a = str(input())

print("kod pervogo simvola - ",ord(a[0]))
print("kod poslednego simvola - ",ord(a[len(a)-1]))
