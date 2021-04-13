def check_number(n):
    symbols = '+- ()1234567890' # То что должно содержаться в номере телефона
    count_sumb = 0
    if n.startswith('+7') or n.startswith('8'): # Начинается ли строка с указанного префикса нужно для того что бы
        for counter in n:
            if counter not in symbols: # Проверка на то что не содержит ли строка символы которые не должны присутсвовать в номерах телефона
                return False
            if counter in '1234567890':
                count_sumb += 1 # Кол-во цифр в номере
        if count_sumb != 11: # Если длина номера телефона больше или меньше 11
            return False
        else:
            return True
    else:
        return False

def mod_number(n):
    n = n.replace('+', '').replace('(', '').replace(')', '').replace(' ', '').replace('-', '') # Все символя +, (, ), ' ', -, заменяются на на пустую строку
    number = '+7 (' + n[1:4] + ') ' + n[4:7] + '-' + n[7:9] + '-' + n[9:] # Формируем правильный номер телефона
    return number

phonebook = {}
for counter in iter(input, '.'): # Считываем до поступления на вход точки
    if ' ' in counter: # Нужно для того, чтобы, если введут только имя то его номер надо вывести
        if counter.split()[0] not in phonebook: # Имя которое надо записать в телефонную книгу
            phonebook[counter.split()[0]] = [] # Добавляем к ключу которое считается за имя и по этому ключу добавляем словарь
        phones = counter.split(maxsplit = 1)[1]
        for phone in phones.split(', '): # На случай, если несколько номеров телефонов и номера телефонов введены через запятую
            if check_number(phone): # Проверка на корректный номер телефона
                phonebook[counter.split()[0]].append(mod_number(phone)) # Добавляем телефонный номер в добавленный ранее список
    else:
        if counter.split()[0] not in phonebook or phonebook[counter.split()[0]] == []: # Проверка на то есть ли в строке номер телефона
            print('Не найдено')
        else:
            print(*phonebook[counter.split()[0]], sep = ', ') # Вывод номера телефона
