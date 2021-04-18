import os

# текущая директория
print("Текущая директория: ", os.getcwd())
# создание папки
if not os.path.isdir("New Folder"):
    os.mkdir("New Folder")
# изменение директории
os.chdir("New Folder")
# создание вложенных папок
os.chdir("..")
os.makedirs("Folders/Folder1/Folder2")
# создание файлов
os.chdir("New Folder")
newFile = open("New_File.txt", "w")
newFile.write("hehe")
newFile.close()
# переименование файлов
os.rename("New_File.txt", "Old File.txt")
# перемещение файлов
os.replace("Old File.txt", "../Folders/Folder1/Old File.txt")
# список файлов и директорий
print(os.listdir())
# удаление файлов
os.chdir("..")
os.remove("Folders/Folder1/Old File.txt")
# удаление директорий
os.rmdir("New Folder")
os.removedirs("Folders/Folder1/Folder2")
# получение информации о файлах
f = open("tmp.txt", "w")
f.write("hehe")
print(os.stat("tmp.txt"))
f.close()
os.remove("tmp.txt")
