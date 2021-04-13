"""
Дана строка S и текстовый файл. Добавить строку S в конец файла.
"""

string = input()
with open("file.txt", "a") as file:
    file.write(string)
