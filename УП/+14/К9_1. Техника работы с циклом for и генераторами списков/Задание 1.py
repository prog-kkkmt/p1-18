import codecs

def find_name_command(find_command, group_command, lst):
    nc = 0
    index = 0
    find_command += '\r\n'
    for i in lst:
        #print(i)
        if (nc == 1 and enter_in_string(i)):
            break
        elif (nc == 1 and not enter_in_string(i)):
            print(i)
            group_command.append(i)
        if (find_command == i and nc == 0):
            group_command.append(i)
            nc += 1

def enter_in_string(string1):
    nc = 0
    for i in range(len(string1)):
        if (string1[i] == ":"):
            return False
    return True

with codecs.open("Конкурс проектов.txt", "r", "utf_8_sig") as file:
    lst = [i for i in file.readlines()]

students_and_position = [i for i in lst if not enter_in_string(i)]
possible_comm = [i for i in lst if enter_in_string(i)]

find_command = input()
group_command = []
#Рома cock
find_name_command(find_command, group_command, lst)

print(students_and_position)
print(possible_comm)
print(group_command)