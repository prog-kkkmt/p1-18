"""
С клавиатуры вводятся строки, последовательность заканчивается точкой. 
Выведите буквы введенных слов в верхнем регистре, разделяя их пробелами.
"""

print_string = ""
elem = input()
while (elem != "."):
    for i in range(0, len(elem)):
        if (i < len(elem) - 1):
            print_string += elem[i].upper() + ' '
        else:
            print_string += elem[i].upper()
    print(print_string)
    print_string = ""
    elem = input()
