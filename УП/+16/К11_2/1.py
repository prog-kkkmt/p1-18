tel_book = {}
cmnd = input().split()
while cmnd != ['.']:
    if len(cmnd) == 2:
        tel_book.update({cmnd[0] : cmnd[1]})
    else:
        print(tel_book[cmnd[0]])
    cmnd = input().split()
