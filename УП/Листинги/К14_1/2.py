s = input() + '\n'
f = open("data.txt", "r+")
fileText = []
for line in f:
    if line != '\n':
        fileText.append(line)
    else:
        fileText.append(s)
f.close()
f = open("data.txt", "r+")
for line in fileText:
    f.write(line)
f.close()
