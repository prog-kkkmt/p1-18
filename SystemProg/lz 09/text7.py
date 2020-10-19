'''
Text7. Дана строка S и текстовый файл. Добавить строку S в начало файла.
'''
file = open('write.txt', 'w')
string = input()
file.write(string + str(file))
file.close()
