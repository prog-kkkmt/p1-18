'''
Задание 1. (Л.Б.) Для проведения конкурса проектов в ККМТ формируются группы
из 4х участников: coder, writer, tester, designer, программирующих
на одном и том же языке.
Каждый студент может программировать только на одном языке
и занимать только одну позицию.
Дан текстовый файл, содержащий перечень студентов с указанием языка и позиции
(каждый студент с новой строки)
Требуется
1. Получить список студентов с указанием языка и позиции
2. Сформировать список всевозможных команд
3. Вывести список команд с указанием состава и названия команды:
Команда 1
coder: ...
designer: ...
tester: ...
writer: ...

Команда 2
...
Пункты 1 и 2 выполнить с использованием генераторов списка
'''

listOfPosition = ['coder:', 'designer:', 'tester:', 'writer:']

listOf_FirstTeam = []

count = 0

s = str

i = 0

f = open('file.txt', 'r')
with open('file.txt', 'r') as file:
    for line in file:
        s = line
        s = s.split()
        position = s[0]
        for i in range(4):
            if position == listOfPosition[i]:
                listOf_FirstTeam.append(s)

print(*listOf_FirstTeam)

print(count)
