def addTelephone(t_book, contact, tel, comma):
    if comma:
        t_book[contact] += ", " + tel
    else:
        t_book[contact] = tel

tel_book = {}
cmnd = input().split()
while cmnd != ['.']:
    if len(cmnd) == 1:
        if cmnd[0] in tel_book:
            print(tel_book[cmnd[0]])
        else:
            print("Не найдено")
    else :
        if cmnd[0] not in tel_book:
            tel_book.update({cmnd[0] : ""})
            addTelephone(tel_book, cmnd[0], cmnd[1].replace(',',''), 0)
            if len(cmnd) > 2:
                for tel in cmnd[2:]:
                    addTelephone(tel_book, cmnd[0], tel.replace(',',''), 1)
        else:
            for tel in cmnd[1:]:
                addTelephone(tel_book, cmnd[0], tel.replace(',',''), 1)
    
    cmnd = input().split()
