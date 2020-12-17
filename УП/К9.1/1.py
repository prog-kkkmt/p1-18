#№1
file = open("file.txt", "r")

def prof(mtrx,mas):     
    if (len(mtrx) == 0):
        return True
    count = 0
    for i in range(len(mtrx)):
        if(mtrx[i][1] != mas[1]):
            count += 1
        if(mtrx[i][2] == mas[2]):
            count += 1
    if(count == len(mtrx)*2):
        return True
    return False

list = file.readlines()

out = [i.strip().split() for i in list]
for i in range(len(out)):
    print(f'{out[i][1]}: {out[i][0]} | {out[i][2]}')
print()
print(out)
print('Всего участников - ', len(out), '\n')
