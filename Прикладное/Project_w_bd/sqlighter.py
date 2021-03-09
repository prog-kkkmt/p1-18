import sqlite3
from sqlite3.dbapi2 import connect

class SQLigter:

    def __init__(self, database_file):
        """Подключаемся к БД и сохраняем курсор соединения"""
        self.connection = sqlite3.connect(database_file)
        self.cursor = self.connection.cursor()
    
    def translateData(self, args):
    	"""Переводит данные из словаря или из списка в список значений"""
    	if (len(args) == 1) and (type(args[0]) == dict):
		return args[0].values()
	return args
    
    def getLastId(self):
        with self.connection:
        	try:
	            return self.cursor.execute("SELECT `id` FROM `clients` ORDER BY `id` DESC LIMIT 1").fetchall()[0][0]
	        except Exception:
		        return 0

    def addClient(self, *args):
        """Добавляем нового пользователя в базу"""
        with self.connection:
        	lastname, name, patronymic = self.translateData(args)
        	need_id = self.getLastId()+1
        	result = self.cursor.execute("INSERT INTO `clients` (`id`, `lastname`, `name`, `patronymic`, `amount_of_purchases`) VALUES (?,?,?,?,?)", (need_id, lastname, name, patronymic, 0)).fetchall()
        	self.connection.commit()
        	return result

    def getIdClient(self, *args):
    	"""Вернет id клиента"""
    	lastname, name, patronymic = self.translateData(args)
    	with self.connection:
    		return self.cursor.execute("SELECT * FROM `clients` WHERE `lastname` = ? AND `name` = ? AND `patronymic` = ?", (lastname, name, patronymic)).fetchall()[0][0]
    		
    def getClientMoney(self, id_client):
    	"""Вернет сумму денег клиента из таблицы `clients`"""
    	with self.connection:
    		return self.connection.execute("SELECT * FROM `clients` WHERE `id` = ?", (id_client,)).fetchall()
    
    def addMoneyToTheClient(self, id_client, money):
    	"""Добавляет в таблицу `clients` в позицую `money` деньги"""
    	with self.connection:
    		amount_summ = self.getClientMoney(id_client) + money
    		self.connection.execute("UPDATE `clients` SET `money` = ?", (amount_summ,))
    		return amount_summ
    
    def clientExists(self, *args):
    	"""Существует ли клиент"""
    	lastname, name, patronymic = self.translateData(args)
    	result = self.cursor.execute("SELECT * FROM `clients` WHERE `lastname` = ? AND `name` = ? AND `patronymic` = ?", (lastname, name, patronymic)).fetchall()
    	return bool(len(result))




