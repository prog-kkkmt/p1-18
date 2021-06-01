'''
Задание 3. https://stepik.org/lesson/243394/step/13?unit=215740
Телефонная книга. Этап 3. Коле очень понравилась Ваша программа, однако он стал
замечать, что иногда в его телефонную книгу попадают номера в некорректном формате.
Чтобы не сохранять недействительные номера, он попросил Вас обрабатывать только номера,
соответствующие критериям:
- номер должен начинаться либо с +7, либо с 8 и состоять из 11 цифр.
- блоки цифр могут разделяться пробелами или дефисами.
- вторая, третья и четвертая цифры могут помещаться в скобки.
Если программа встречает некорректный номер, она должна его проигнорировать. В обратном
случае она должна привести номер к виду +7 (900) 800-70-60 и запомнить. Остальной
функционал программы остается без изменений.
'''

dict = {}
while True:
    line = input()
    if line != '.':
        end_name = line.find(' ')
        if end_name != -1:
            name, numbers = line[:end_name], line[end_name+1:]
            for number in numbers.split(','):
                number = number.replace(' ', '').replace('-', '').replace('(', '').replace(')', '')
                if number.startswith('+7') and len(number) == 12:
                    new_number = number[:2] + ' (' + number[2:5] + ') ' + number[5:8] + '-' + number[8:10] + '-' + number[10:]
                    dict.setdefault(name, []).append(new_number)
                elif number.startswith('8') and len(number) == 11:
                    new_number = '+7 (' + number[1:4] + ') ' + number[4:7] + '-' + number[7:9] + '-' + number[9:]
                    dict.setdefault(name, []).append(new_number)
        else:
            print(', '.join(dict.get(line)) if line in dict else 'Не найдено')
    else:
        break