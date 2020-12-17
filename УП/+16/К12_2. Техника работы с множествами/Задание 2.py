import codecs

f_input1 = codecs.open("session.txt", "r", "utf_8_sig")
f_input2 = codecs.open("disc.txt", "r", "utf_8_sig")

lst = f_input1.readlines() #Из файла session.txt читаем и добавляем в список lst
session = [i.strip().split('; ') for i in lst] #Удаляем '; ' из list
lst = f_input2.readlines()
disc = [i.strip() for i in lst] #Формирует список строк и благодаря функции strip с обоих концов которой устранены указанные символы. Формируется список из предметов
f_input1.close()
f_input2.close()
names_students = []

for data_students in session:
    if data_students[0] not in names_students:
        names_students.append(data_students[0]) #Добавляем имя с список имён

excellent = set() #Отличники
sdali = set() #Множество сдавших ссесию
predmet = {*disc} #Название предмета

for i in range(len(names_students)):
    count_5 = 0 #Кол-во отличников. Так же каждая прокрутка цикла обнуляет этот счётчик и для другого студента начинает считать заново
    count_2 = 0 #Кол-во двоек нужно для того чтобы узнать кто не закрыл ссесию
    for j in range(len(session)):
        if(session[j][0] == names_students[i]): # Поиск имени студента
            if(session[j][3] == '5'):
                count_5 += 1
            elif(session[j][3] == '2'):
                count_2 += 1
                predmet.discard(session[j][2]) # Удаляет указанный элемент из множества
    if(count_5 == len(disc)):
        excellent.add(names_students[i]) #Добавляет фамилии отличников
    if(count_2 == 0):
        sdali.add(names_students[i]) # Усли кол-во двоек равно нулю то студент сдал ссесию (мне бы так)


output_file = open("out.txt", "w")
output_file.write('Сдали:\n'+'\n'.join(names_students)) #Имена тех кто сдали
output_file.write('\n=============================================================================\n')
output_file.write('Отличники:\n'+'\n'.join(excellent)) #Имена отличников
output_file.write('\n=============================================================================\n')
output_file.write('Предметы по которым нет задолжности:\n'+'\n'.join(predmet)) #Предметы по которым нет задолжностей
output_file.close()