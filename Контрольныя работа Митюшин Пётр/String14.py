#String14
#Дана строка. Подсчитать количество содержащихся в ней прописных латинских букв.
nc = 0
string = input()
for i in range(len(string)):
    if (string[i].isupper()):
        nc += 1
print(nc)
