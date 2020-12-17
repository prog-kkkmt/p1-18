day_of_the_month = {'01': "Первое", '02': "Второе", '03': "Третье", '04': "Четвётое", '05': "Пятое", '06': "Шестое", '07': "Седьмое", '08': "Восьмое", '09': "Девятое", '10': "Десятое", '11': "Одиннадцатое", '12': "Двенадцатое", '13': "Тринадцатое", '14': "Четырнадцатое", '15': "Пятнадцатое", '16': "Шестнадцатое", '17': "Семнадцатое", '18': "Восемнадцатое", '19': "Девятнадцатое", '20': "Двадцатое", '21': "Двадцать первое", '22': "Двадцать второе", '23': "Двадцать третье", '24': "Двадцать четвёртое", '25': "Двадцать пятое", '26': "Двадцать шестое", '27': "Двадцать седьмое", '28': "Двадцать восьмое",'29': "Двадцать девятое", '30': "Тридцатое", '31': "Тридцать первое",
}

month = {
    '01': "январья",
    '02': "февралья",
    '03': "марта",
    '04': "апрелья",
    '05': "майя",
    '06': "июнья",
    '07': "июлья",
    '08': "августа",
    '09': "сентября",
    '10': "октября",
    '11': "ноября",
    '12': "декабря",
}

day_in_years = {
    '1': "первоего",
    '2': "второго",
    '3': "третьего",
    '4': "четвётого",
    '5': "пятого",
    '6': "шестого",
    '7': "седьмого",
    '8': "восьмого",
    '9': "девятого",
}
year_list_dec = ['','десять','двадцать','тридцать','сорок','пятьдесят','шестьдесят','семьдесят','восемьдесят','девяносто']

year_list_dec2 = ['','десятого', 'двадцатого', 'тридцатого', 'сорокового', 'пятидесятого', 'шестидесятого', 'семидесятого', 'восемидесятого', 'девяностого']

year_list_unit = ['', 'первого', 'второго', 'третьего', 'четвёртого', 'пятого', 'шестого', 'седьмого', 'восьмого', 'девятого']
year_list_unit2 = ['', 'одиннадцатого', 'двенадцатого', 'тринадцатого', 'четырнадцатого', 'пятнадцатого','шестнадцатого', 'семнадцатого', 'восемнадцатого', 'девятнадцатого']

year_list_hun = ['','сто','двести','триста','четыреста','пятьсот','шестьсот','семьсот','восемьсот','девятьсот']

year_list_hun2 = ['','сотого','двухсотого','трёхсотого','четырёхсотого','пятьсотого','шестьсотого','семьсотого','восьмисотого','девятьсотого']

year_list_th = ['','тысяча','две тысячи','три тысячи']

year_list_th2 = {
    '1': 'тысячного',
    '2': 'двух тысячного',
    '3': 'трёх тысячного'
}
"""
11.11.1010
12.12.1212
01.09.2897
"""
def definition_years(string):
    if (len(string) == 1):
        print(day_in_years[string[0]] + " года")
    elif (len(string) == 2):
        if string[1] == "0":
            print(year_list_dec2[int(string[0])],  "года")
        elif string[0] == "1":
            print(year_list_unit2[int(string[1])], "года")
        else:
            print(year_list_dec[int(string[0])], day_in_years[string[1]],  "года")
    elif(len(string) == 3):
        if (string[0] != "0" and string[1] == "0" and string[2] == "0"):
            print(year_list_hun2[int(string[0])],  "года")
        elif (string[0] != "0" and string[1] != "0" and string[2] == "0"):
            print(year_list_hun[int(string[0])], year_list_dec2[int(string[1])],  "года")
        else:
            print(year_list_hun[int(string[0])], year_list_dec[int(string[1])], day_in_years[string[2]], "года")
    else:
        if string[1] == "0" and string[2] == '0' and string[3] == '0':
            print(year_list_th2[string[0]], "года")
        elif string[1] != "0" and string[2] == '0' and string[3] == '0':
            print(year_list_th2[string[0]], year_list_hun2[int(string[1])], "года")
        else:
            print(year_list_th[int(string[0])], end=" ")# первая цифра в году
            if (string[1] == string[2] == string[3]):
                print(year_list_hun[int(string[1])], end=" ") #, year_list_dec[int(string[2])], year_list_unit[int(string[3])],end=" ")
            else:
                print(year_list_hun[int(string[1])], end=" ")# вторая цифра в году

            if string[1] != "0" and string[3] == '0':
                print(year_list_dec2[int(string[2])], "года",end=" ")# третья цифра в году

            elif string[1] == "0" and string[3] == '0':
                print(year_list_dec2[int(string[2])], "года")# третья цифра в году

            elif string[1] != string[2] == string[3]:
                print(year_list_unit2[int(string[3])], "года", end=" ")

            elif string[2] == "1" and string[3] != "0":
                print(year_list_unit2[int(string[3])], "года", end=" ")# четвёртая цифра в году

            else:
                print(year_list_dec[int(string[2])], day_in_years[string[3]],"года", end=" ")

date = input().split('.')

day = day_of_the_month[date[0]]
mon = month[date[1]]
print(day, mon, end=" ")
definition_years(date[2])
