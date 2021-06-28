chisla = [int(i) for i in input().split()]
schetchik = 0
for i in range(2,len(chisla)):
    if chisla[i-2] < chisla[i-1] > chisla[i]:
        schetchik += 1
print(schetchik)
