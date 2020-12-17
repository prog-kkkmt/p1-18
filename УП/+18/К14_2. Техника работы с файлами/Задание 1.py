import codecs

def direct_occurs_most_often(direction_students):  # Какое направление встречается чаще всего
    max_nc = 1
    direction = direction_students[0]
    for i in range(len(direction_students)):
        nc = 1
        for k in range(i + 1, len(direction_students)):
            if direction_students[i] == direction_students[k]:
                nc += 1
        if nc > max_nc:
            max_nc = nc
            direction = direction_students[i]
    print(direction)

def appeared_in_diplomas(languages_student, years_students):   # Какие языки и среды появились в дипломах в 2017 г.
    for i in range(len(years_students)):
        if years_students[i] == '2017':
            print(languages_student[i], end="")

name_students = []           # имена студентов
group_students = []          # название группы студентов
years_students = []          # год студента
theme_students = []          # тема студентов
direction_students = []      # направление студента
languages_student = []       # языки программирования студентов

with codecs.open("Информация о курсовых проектах.txt", "r", "utf_8_sig") as file:
    for line in file:
        lst = line.split(';')
        name_students.append(lst[0])
        group_students.append(lst[1])
        years_students.append(lst[2])
        theme_students.append(lst[3])
        direction_students.append(lst[4])
        languages_student.append(lst[5])



direct_occurs_most_often(direction_students)
appeared_in_diplomas(languages_student, years_students)
