'''
Text5. Дана строка S и текстовый файл. Добавить строку S в конец файла.
'''
file = open('write.txt', 'a')
string = input()
file.write(string)
file.close()
