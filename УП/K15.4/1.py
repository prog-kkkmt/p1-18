import os
print("Текущая директория:", os.getcwd())
os.mkdir("prac")
os.makedirs("prac/task/os")
text1 = open("prac/task/П1.txt", "w")
os.rmdir("prac/task/os")
print(os.stat("prac/task/П1.txt"))
print("Размер файла:", os.stat("prac/task/П1.txt").st_size)


