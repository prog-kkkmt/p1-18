import sqlite3

class DataBase:
    def __init__(self, nameDB):
        self.db = sqlite3.connect(nameDB)
        self.cursor = self.db.cursor()

    def create_table(self, table):
        self.cursor.execute(f"CREATE TABLE IF NOT EXISTS '{table}'(\
                            id INT PRIMARY KEY,\
                            'fio' TEXT, \
                            'group' TEXT,\
                            'direction' TEXT)")
        self.save()

    def add_stud(self, **kwargs):
        if self.cursor.fetchone() is None:
            self.cursor.execute("INSERT INTO 'students'\
            ('fio', 'group', 'direction') VALUES (?, ?, ?)",\
                                (kwargs['fio'], kwargs['group'], kwargs['direction']))

    def print_table(self, table):
        for i in self.cursor.execute(f"SELECT * FROM {table}"):
            print(i)

    def save(self):
        self.db.commit()

    def close(self):
        self.db.close()


db = DataBase("serv.db")
db.create_table('students')

db.add_stud(fio="Цыпков Илюффка Владимирович", group="П1-18", direction="Студент")

db.print_table('students')
db.close()