"""
Задание 3. https://stepik.org/lesson/201702/step/9?unit=175778
Уберите точки из введенного IP-адреса. Выведите сначала четыре числа через пробел,
а затем сумму получившихся чисел.
"""

string = input().split('.')
print(*string)
s = 0
for i in string:
    s += int(i)
print(s)