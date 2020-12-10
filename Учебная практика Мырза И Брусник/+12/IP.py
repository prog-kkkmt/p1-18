'''
?Уберите точки из введенного IP-адреса. Выведите сначала четыре числа через пробел,
а затем сумму получившихся чисел.
Sample Input: 192.168.0.1
Sample Output:
192 168 0 1
361
'''
string = input().replace('.', ' ')
print(string)

string = string.split()

print(int(string[0]) + int(string[1]) + int(string[2]) + int(string[3]))
