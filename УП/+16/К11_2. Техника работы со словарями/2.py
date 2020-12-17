data = input()
phone_book = {}
while data != '.':
    data = data.replace(',','').split()
    if len(data) == 1:
        name = ''.join(data)
        if name in phone_book:
            print(', '.join(phone_book[name]))
        else:
            print("Не найдено" )
    else:
        name, number = data[0],data[1:]
        phone_book[name] = phone_book.get(name,[]) + number
    data = input()