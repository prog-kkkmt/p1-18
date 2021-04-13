lst = []
summ = 0
count = 0
formation = ""
amount_of_num = 0
with open("Text 44.txt", "r") as f_read:
    #lst = [i for i in f_read.readlines()]
    for i in f_read.read():
        if (i == ' ' or i == "\n"):
            if formation != '':
                lst.append(int(formation))
            formation = ""
            continue
        elif ('0' <= i and i <= '9' or i == '-'):
            formation += i
            count += 1

print(len(lst))
print(sum(lst))
