# Задание 1. (Л.Б.)
# При разработке курсовых проектов студентами 3 курса программистов ККМТ выбираются 
# различные направления, например, "графика", "базы данных".. 
# и предпочтения по языкам и средам "Си++", "Delphi"... 
# В каждой строке текстового файла хранятся следующие сведения о курсовых проектах:
# Фамилия Имя Отчество; Группа; Год; Тема; Направления (список через запятую); 
# Языки и среды (список через запятую)

# Например,
# Иванов Иван Иванович;П1-21;2023;Картинки в базе;графика;Pascal,Lazarus
# ...
# Программа должна читать входной файл и выдавать на экран ответы на вопросы
# 1. Какое направление встречается чаще всего
# 2. Какие языки и среды появились в дипломах в 2017 г.
 
import sys 

if len(sys.argv) > 1:
    filename = sys.argv[1]
else:
    filename = 'diploms.txt'

file = open(filename)

diploms = [x.split(';') for x in file]

print('Какое направление встречается чаще всего:')

направления = dict()
for x in diploms:
    напр = [a.strip() for a in x[4].split(',')]
    for н in напр:
        if н in направления:
            направления[н] += 1
        else:
            направления[н] = 1

print(sorted(направления.items())[0][0])

print('Какие языки и среды появились в дипломах в 2017:')

languages = set()

for x in [y for y in diploms if y[2] == '2017']:
    languages = languages | set([a.strip() for a in x[5].split(',')])

print(*languages, sep=', ')