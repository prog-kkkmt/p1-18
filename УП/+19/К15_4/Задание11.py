'''
Задание 11. Получение информации о файлах
Создать файл с любым названием, вывести его информацию и удалить его
'''
import os

f = open("text.txt", "w")
f.write('Hello, World!')
f.close()

print(os.stat("text.txt"))

os.remove("text.txt")