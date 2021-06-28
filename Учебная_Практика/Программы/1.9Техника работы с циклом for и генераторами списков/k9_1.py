#!/usr/bin/python3

# Задание 1. (Л.Б.) Для проведения конкурса проектов в ККМТ формируются группы
# из 4х участников: coder, writer, tester, designer, программирующих
# на одном и том же языке.
# Каждый студент может программировать только на одном языке
# и занимать только одну позицию.
# Дан текстовый файл, содержащий перечень студентов с указанием языка и позиции
# (каждый студент с новой строки)
# Требуется
# 1. Получить список студентов с указанием языка и позиции
# 2. Сформировать список всевозможных команд
# 3. Вывести список команд с указанием состава и названия команды:
# Команда 1
# coder: ...
# designer: ...
# tester: ...
# writer: ...
#
# Команда 2
# ...
# Пункты 1 и 2 выполнить с использованием генераторов списка

# Name Team Speciality Lang

import sys 

print('Team analyzer v0.1')

if len(sys.argv) > 1:
    filename = sys.argv[1]
else:
    filename = 'teams.txt'

file = open(filename)

people = [x.split() for x in file]
#print(people)
print('Lines readed:', len(people))
teams = {x[1] for x in people}

specialities = ['coder', 'writer', 'tester', 'designer']

for team in teams:
    print(team)
    team_members = [x for x in people if x[1] == team]
    for speciality in specialities:
        member = [x for x in team_members if x[2] == speciality]
        if len(member) == 0:
            print('  {}: no member with this speciality'.format(speciality))
        else:
            member = member[0]
            print('  {}: {} {}'.format(speciality, member[0], member[3]))