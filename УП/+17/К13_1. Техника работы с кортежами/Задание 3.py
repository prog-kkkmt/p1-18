import codecs

def BubbleSort(vals):
    for i in range(len(vals)):
        for j in range(i+1, len(vals)):
            if (vals[i] < vals[j]):
                temp = vals[i]
                vals[i] = vals[j]
                vals[j] = temp
    return vals

fin = codecs.open("Zadamie 3.txt", 'r', "utf_8_sig")
d_coord = dict()
d_hyp = dict()
print()
for string in fin:
    l = string.split()
    d_coord[l[0]] = tuple(l[1:])
    d_hyp[l[0]] = (int(d_coord[l[0]][0])**2 + int(d_coord[l[0]][1])**2 )**0.5
fin.close()

vals_sort = BubbleSort(list(d_hyp.values()))

numb_city = len(d_coord)
for i in range(numb_city):
    for city in d_hyp:
        if d_hyp[city] == vals_sort[i]:
            print(f"{i+1}|", end = ' ')
            print(city + ":", *d_coord[city], end = '\n   ')
            print(f"До центра: {int(vals_sort[i])} км\n")
            break

count = 0
for city_i in d_hyp:
    for city_j in d_hyp:
        if d_hyp[city_i] == d_hyp[city_j] and city_i != city_j:
            print(f"{d_hyp[city_i]} == {d_hyp[city_j]}")
            count += 1
if count == 0:
    print("Пар городов, имеющих одинаковое расстояние до центра нет")