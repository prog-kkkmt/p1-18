import sqlite3

class Sqlithter:

    def __init__(self, database):
        self.connection = sqlite3.connect(database)
        self.cursor = self.connection.cursor()

    def create_table(self, table):
        with self.connection:
            table = ''.join(chr for chr in table if chr.isalnum())
            if table != '':
                self.cursor.execute(f"CREATE TABLE `{table}`(\
                    id integer PRIMARY KEY,\
                    `name` text, `type1` text, 'type2' text, 'start' text, 'end' text)")
                self.save()

    def add_student(self, **kwargs):
        with self.connection:
            self.cursor.execute("INSERT INTO 'goods' \
                ('name', 'type1', 'type2', 'start', 'end') VALUES (?,?,?,?,?)", \
                (kwargs['name'], kwargs['type1'], kwargs['type2'], kwargs['start'], kwargs['end']))
            self.save()

    def save(self):
        self.connection.commit()
        print(f"{self.cursor.rowcount} отредактированно строк")

    def close(self):
        """Закрываем связь с бд"""
        self.connection.close()


bd = Sqlithter('bd')  # Подключаемся к бд
#bd.create_table('goods')
bd.add_student(name= "Шампунь", type1= "Бытовые", type2= "Уход", start="31.03.2021", end="31.03.2022") # добавлем еще одну позицию
bd.close()  # Отключаемся от бд