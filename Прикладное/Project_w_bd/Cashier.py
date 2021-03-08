# Разработчики:
#   Герасимов Дмитрий
#   Груздев Роман
from datetime import datetime
from os import name
from pathlib import Path

class Deal:
    """Класс для работы с данными поступающими кассиру"""

    # Принять документ и деньги
    def __init__(self, doc, money, payment):
        self.doc = doc
        self.money = float(money)
        self.payment = payment
        self.data_doc = self.getDataDoc()
    
    def __str__(self):
        return str(self.doc), str(self.money)
    
    def __repr__(self):
        return self.__class__.__name__ + '(' + str(self.doc) + ', ' + str(self.money) + ')'

    # Вернет данные документа в виде словаря
    def getDataDoc(self):
        # self.payment_doc = ""
        #! Считываем данные из поданного документа 
        f = open(self.doc, 'r')
        # Сами данные
        d_data = dict() 
        name = ''
        for s in f:
            # Удаление '\n' с конца
            if s[-1] == '\n':
                s = s[:-1]
            # 
            if s != '':
                if (s[0] != '\t') and (s[-1] == ':'):
                    name = s[:-1]
                else:
                    if name != '':
                        if d_data.get(name, None) == None:
                            d_data[name] = {}
                        l = [x.strip() for x in s.split(':')]
                        if len(l) > 1:
                            if s[0] == '\t':
                                d_data[name][l[0]] = l[1]
                            else:
                                d_data[l[0]] = l[1]
        return d_data

    def getFIO(self):
        return {
            'lastname': self.data_doc['Контакты']['Фамилия'],
            'name': self.data_doc['Контакты']['Имя'],
            'patronymic': self.data_doc['Контакты']['Отчество']
        }

    # Хватает ли денег
    def enoughMoney(self):
        if (self.money >= float(self.data_doc['О товаре']['Итоговая цена'].split()[0])):
            return True
        return False
    
    # Создать квитанцию
    def setPaymentDoc(self):
        #! Устанавливаем дату оплаты
        today = str(datetime.today()).split()[0]
        self.data_doc.pop('Дата составления', None)
        self.data_doc['Дата оплаты'] = today
        self.data_doc['Статус'] = "ОПЛАЧЕНО"

    # Печатает на экран данные квитанции
    def printPaymentDoc(self, *args):
        #! Заполняем квитанцию
        message = "Квитанция об оплате\n" +\
            '\n' +\
            "Статус: " + self.data_doc["Статус"] + '\n' +\
            '\n' +\
            'Контакты:' + '\n'
        
        # Добавляем контактные данные
        contacts = ['Фамилия', 'Имя', 'Отчество', 'Номер телефона']
        for name in contacts:
            message += f"\t{name}: {self.data_doc['Контакты'][name]}\n"
        
        # Добавляем данные о товаре
        message += "\n" +\
            "О товаре:" + '\n'
        about_product = ['Товар', 'Количество', 'Цена за единицу', 'Итоговая цена']
        for name in about_product:
            message += f"\t{name}: {self.data_doc['О товаре'][name]}\n"
        
        message += '\n' +\
            "Дата оплаты: " + self.data_doc['Дата оплаты']
        
        #! Вывод на экран
        if len(args) == 0:
            print(message)
        #! Вывод в файл(-ы)
        else:
            for name_f in args:
                f = open(name_f, 'w')
                f.write(message)

    # Вернет квитанцию об оплате. Печать документу поставлена
    def getPaymentDoc(self):
        """Вернет квитанцию об оплате"""

        #! Создаем имя документа 
        name_payment_doc = "Квитанция " + \
            self.data_doc['Контакты']['Фамилия'] + '.' +\
            self.data_doc['Контакты']['Имя'][0] + '.' +\
            self.data_doc['Контакты']['Отчество'][0] + ' ' +\
            '[' + self.data_doc['Дата оплаты'] + ']' +\
            ".txt"
        # Проверка на существование такого файла
        count = 1
        while(Path(name_payment_doc).is_file()):
            index_end = name_payment_doc.index('.txt')
            if (name_payment_doc[-5] == ')'):
                index_end = name_payment_doc.index(']')+1
            name_payment_doc = name_payment_doc[:index_end] + f'({count}).txt'
            count += 1
        # Печатаем в файл
        self.printPaymentDoc(name_payment_doc)
        return(name_payment_doc)
    


class Report:
    def __init__(self, money_cash, money_non_cash):
        self.money_cash = float(money_cash)
        self.money_non_cash = float(money_non_cash)
    
    def add(self, money, payment):
        """Плюс к деньгам"""
        if payment == 'нал':
            self.money_cash += money
        else:
            self.money_non_cash += money
    
    def pop(self, money, payment):
        """Минус от денег"""
        if payment == 'нал':
            self.money_cash -= money
        else:
            self.money_non_cash -= money

    def getReport(self):
        """Возращает итоговый отчет"""
        return {
            'cash': self.money_cash,
            'non-cash': self.money_non_cash,
            'state': self.money_cash + self.money_non_cash
            }
    
    def createNameFile(self):
        """Создаем имя документа"""
        name_payment_doc = "Отчет кассира " + \
            '[' + str(datetime.today()).split()[0] + ']' +\
            ".txt"
        # Проверка на существование такого файла
        count = 1
        while(Path(name_payment_doc).is_file()):
            index_end = name_payment_doc.index('.txt')
            if (name_payment_doc[-5] == ')'):
                index_end = name_payment_doc.index(']')+1
            name_payment_doc = name_payment_doc[:index_end] + f'({count}).txt'
            count += 1
        
        self.printReport(name_payment_doc)
        return name_payment_doc

    def printReport(self, *args):
        """Вывод отчета на экран или в файл"""
        day = str(datetime.today()).split()
        message = "Отчет продавца:\n" +\
            "Дата: " + day[0] + '\n' +\
            "Время: " + day[1] + '\n' +\
            "Денег наличными: " + str(self.money_cash) + '\n' +\
            "Денег безналичными: " +  str(self.money_non_cash) + '\n' +\
            "Общее количество: " + str(self.money_cash + self.money_non_cash)
        #! Вывод на экран
        if len(args) == 0:
            print(message)
        #! Вывод в файл(-ы)
        else:
            for name_f in args:
                f = open(name_f, 'w')
                f.write(message)


# deal = Deal('doc.txt', 123)
# deal.setPaymentDoc()
# # deal.printPaymentDoc()
# print(deal.getPaymentDoc())