a = []
b = input()
while b != '.':
    a.append(b)
    b = input()
    for i in a:
        if i[:2] == '!!':
            print('предупреждение')
        if i[:2] == '@@':
            print('ошибка')
        if i[:2] == '//':
            print('информация')
        if i[:2] == '**':
            print('подробное сообщение')
