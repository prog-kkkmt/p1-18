schetchik = 0
chislo = 1
konec = int(input())
while schetchik != konec:
    for i in range(chislo):
        print(chislo, end=' ')
        schetchik += 1
        if schetchik == konec:
            break
    chislo += 1
