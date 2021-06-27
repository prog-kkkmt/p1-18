import sqlite3
from sqlite3.dbapi2 import connect

class SQLigter:
	
	def __init__(self, database_file):
		"""Подключаемся к БД и сохраняем курсор соединения"""
		self.connection = sqlite3.connect(database_file)
		self.cursor = self.connection.cursor()

	# ! Обобщенные функции (для всех таблиц)

	def translateData(self, args):
		"""Переводит данные из словаря или из списка в список значений"""
		if (len(args) == 1) and (type(args[0]) == dict):
			return args[0].values()
		elif type(args) == dict:
			return args.values()
		return args
    
	def getLastId(self, table):
		"""Вернет последний индекс"""
		with self.connection:
			try:
				return self.cursor.execute(f"SELECT `id` FROM `{table}` ORDER BY `id` DESC LIMIT 1").fetchall()[0][0]
			except Exception:
				return 0

	# ! Работа с таблицей данных клиента `clients`

	def addClient(self, fio, phone_number):
		"""Добавляем нового пользователя в базу"""
		with self.connection:
			lastname, name, patronymic = self.translateData(fio)
			need_id = self.getLastId('clients')+1
			result = self.cursor.execute("INSERT INTO `clients` (`id`, `lastname`, `name`, `patronymic`, `phone_number`, `amount_of_purchases`) VALUES (?,?,?,?,?,?)", (need_id, lastname, name, patronymic, phone_number, 0)).fetchall()
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
			return self.connection.execute("SELECT * FROM `clients` WHERE `id` = ?", (id_client,)).fetchall()[0][-1]

	def addMoneyToTheClient(self, id_client, money):
		"""Добавляет в таблицу `clients` в позицую `money` деньги"""
		with self.connection:
			amount_summ = self.getClientMoney(id_client) + money
			self.connection.execute("UPDATE `clients` SET `amount_of_purchases` = ?", (amount_summ,))
			return amount_summ

	def clientExists(self, *args):
		"""Существует ли клиент"""
		with self.connection:
			lastname, name, patronymic = self.translateData(args)
			result = self.cursor.execute("SELECT * FROM `clients` WHERE `lastname` = ? AND `name` = ? AND `patronymic` = ?", (lastname, name, patronymic)).fetchall()
			return bool(len(result))

	# ! Работа с таблицей реестра заказов `registry`

	def addOrderToRegister(self, *args):
		"""Добавляем в реестр заказов новый заказ"""
		with self.connection:
			# product_name, product_number, product_amount, payment_method, client_id, date, time
			need_id = self.getLastId('registry') + 1
			data_for_add = [need_id]
			[data_for_add.append(x) for x in self.translateData(args)]
			result = self.cursor.execute("INSERT INTO `registry` (`id`, `product_name`, `product_number`, `product_amount`, `payment_method`, `client_id`, `date`, `time`) VALUES (?,?,?,?,?,?,?,?)", ([x for x in data_for_add])).fetchall()
			self.connection.commit()
			return result




