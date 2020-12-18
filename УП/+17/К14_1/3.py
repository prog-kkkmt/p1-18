import re

#s = input() + '\n'
f = open("data.txt", "r+")
fileText = []
for line in f:
    newLine = re.sub(r' +', r' ', line)
    fileText.append(newLine)
f.close()
f = open("data.txt", "w+")
for line in fileText:
    f.write(line)
f.close()
