import sys

stdin = sys.stdin
stdout = sys.stdout
stderr = sys.stderr

sys.stdin = open("in.txt")
sys.stdout = open("out.txt")
sys.stderr = open("err.txt")
# теперь все данные будут извлекаться из файлов
# и записываться в файлы

# чтение из in.txt
line = input()
#запись в out.txt
print(line)
