# Выполнил Курбанмухаммедов Стив
# Группа П1-18
'''
УП.01 Учебная практика по модулю ПМ.01
Консультация 11. Техника работы со словарями
11-2.
Составитель: Гусятинер Л.Б., 30.11.2020, МГОТУ ККМТ, П1-18, П2-18
https://join.skype.com/fWfWN4MdYC1D

Задание 1. https://stepik.org/lesson/243394/step/4?unit=215740
Телефонная книга. Этап 1. Коля устал запоминать телефонные номера и заказал у Вас
программу, которая заменила бы ему телефонную книгу. Коля может послать программе
два вида запросов: строку, содержащую имя контакта и его номер, разделенные пробелом,
или просто имя контакта. В первом случае программа должна добавить в книгу новый номер,
во втором – вывести номер контакта. Ввод происходит до символа точки. Если введенное
имя уже содержится в списке контактов, необходимо перезаписать номер.

Sample Input:
Ben 89001234050
Alice 210-220
Alice
Alice 404-502
Nick +16507811251
Ben
Alex +4(908)273-22-42
Alice
Nick
Robert 51234047129
Alex
.

Sample Output:
210-220
89001234050
404-502
+16507811251
+4(908)273-22-42
'''
name_phone = {}
f = int(0)
a = ''
count = 0
g = int(1)
while a != '.':
    f += 1
    print('> ', end="")
    a = input()
    name_phone[f] = a
    count += 1
for i in range(count):
    print(name_phone[g], sep='\n')
    g += 1
