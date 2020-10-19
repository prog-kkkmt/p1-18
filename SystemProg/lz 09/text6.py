'''
Text6. Даны два текстовых файла.
Добавить в конец первого файла содержимое второго файла.
'''
file = open('write.txt', 'w')
file1 = open('write1.txt', 'a')
file1.write(str(file))
file.close()
file1.close()
