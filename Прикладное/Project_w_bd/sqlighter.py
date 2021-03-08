import sqlite3
from sqlite3.dbapi2 import connect

class SQLigter:

    def __init__(self, database_file):
        """Подключаемся к БД и сохраняем курсор соединения"""
        self.connection = sqlite3.connect(database_file)
        self.cursor = self.connection.cursor()
    
    def getLastId(self):
        with self.connection:
            return self.cursor.execute("SELECT `id` FROM `clients` ORDER BY `id` DESC LIMIT 1").fetchall()[0][0]

    def addClient(self, lastname, name, patronymic):
        """Добавляем нового пользователя в базу"""
        with self.connection:
            need_id = self.getLastId()+1
            # return self.cursor.execute("INSERT INTO `clients` (`id`, `lastname`, `name`, `patronymic`, `amount_of_purchases`) VALUES (?,?,?,?,?)", (last_id, lastname, name, patronymic, 0))
            result = self.cursor.execute("INSERT INTO `clients` (`id`, `lastname`, `name`, `patronymic`, `amount_of_purchases`) VALUES (?,?,?,?,?)", (need_id, lastname, name, patronymic, 0))
            self.connection.commit()
            return result

    def clientExists(self, lastname, name, patronymic):
        result = self.cursor.execute("SELECT * FROM `clients` WHERE `lastname` = ? AND `name` = ? AND `patronymic` = ?", (lastname, name, patronymic)).fetchall()
        return bool(len(result))
