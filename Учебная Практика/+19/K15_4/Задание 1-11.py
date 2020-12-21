'''
Задание 1. Вывод текущей директории
Задание 2. Создание папки
Задание 3. Изменение директории
Задание 4. Создание вложенных папок
Задание 5. Создание файлов
Задание 6. Переименование файлов
Задание 7. Перемещение файлов
Задание 8. Список файлов и директорий
Задание 9. Удаление файлов
Задание 10. Удаление директорий
Задание 11. Получение информации о файлах
'''
import os
# Задание 1. Вывод текущей директории
print("Derectory:", os.getcwd())
print()
# Задание 2. Создание папки
if not os.path.isdir("Folder"):
    os.mkdir("Folder")
# Задание 3. Изменение директории
os.chdir("./Folder")
# Задание 4. Создание вложенных папок
if not os.path.isdir("new_folder"):
    os.mkdir("new_folder")
os.chdir("new_folder")
print("Derectory:", os.getcwd())
print()
os.chdir("..")
path_dir = os.getcwd()
n = int(input("Count of subfolder:> "))
for i in range(n):
    path = path_dir + "/Folder " + str(i)
    os.mkdir(path)
    path_dir += "/Folder " + str(i)
print()
#Задание 5. Создание файлов
file = open("file.txt", "w")
file.write("OOO text file OOO")
file.close()

#Задание 6. Переименование файлов
file = open("newfile.txt", "w")
file.write("OOO text newfile OOO")
file.close()
Second_name = input("Rename:> ")
os.rename("newfile.txt", Second_name)
print()


#Задание 7. Перемещение файлов
file = open("First_name.txt", "w")
file.close()
os.replace("First_name.txt", "new_folder/First_name.txt")

#Задание 8. Список файлов и директорий
for dirpath, dirnames, filenames in os.walk("."):
	for dirname in dirnames:
		print("Katalog: ", os.path.join(dirpath, dirname))
	for filename in filenames:
		print("Files: ", os.path.join(dirpath, filename))
print()

#Задание 9. Удаление файлов
File_name = input("Enter name for Del:> ")
f = open(File_name, "w")
f.close()
os.remove(File_name)

#Задание 10. Удаление директорий
os.mkdir('')
print("This derectory: ", os.getcwd())
print("All folder and files: ", os.listdir())
del_name = input("Enter folder aand files for Del:>")
os.rmdir(del_name)
print()

#Задание 11. Получение информации о файлах
f = open("text.txt", "w")
f.write('Hello, World')
f.close()
print(os.stat("text.txt"))
os.remove("text.txt")
print()










