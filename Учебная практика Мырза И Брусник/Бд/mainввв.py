import sqlite3


class Sqlithter:

    def __init__(self, name_db):
        self.connection = sqlite3.connect(name_db)
        self.cursor = self.connection.cursor()
    
    def create_table(self, table):
        with self.connection:
            table = ''.join( chr for chr in table if chr.isalnum() )
            if table != '':
                self.cursor.execute(f"CREATE TABLE `{table}`(\
                    id integer PRIMARY KEY,\
                    `fio` text, `group` text, `direction` text)")
                self.save()
    
    def get_id(self, **kwargs):
        with self.connection:
            try:
                data = kwargs
                if kwargs.get('data') != None:
                    data = kwargs.get('data')
                return self.cursor.execute("SELECT * FROM `students` WHERE \
                    `fio` = ? AND `group` = ? AND `direction` = ?",\
                    (data['fio'], data['group'], data['direction'])).fetchall()[0][0]
            except:
                return -1

    def add_student(self, **kwargs):
        with self.connection:
            data = kwargs
            if kwargs.get('data') != None:
                data = kwargs.get('data')
            self.cursor.execute("INSERT INTO `students` \
                (`fio`, `group`, `direction`) VALUES (?,?,?)", \
                (data['fio'], data['group'], data['direction']))
            self.save()

    def save(self):
        self.connection.commit()
        print(f"{self.cursor.rowcount} отредактированно строк")

    def close(self):
        self.connection.close()


def input_student(**kwargs):
    data = kwargs
    if kwargs.get('data') != None:
        data = kwargs.get('data')
    student = {
        'fio': data['fio'],
        'group': data['group'],
        'direction': data['direction'],
    }
    return student

bd = Sqlithter("bd")
# bd.create_table('students')

# if bg.get_id()
student = input_student(fio="Брусник Вадим Вкиторович", group="П1-18", direction="Прогер")
if bd.get_id(data=student) == -1:
    bd.add_student(data=student)
else:
    print('Ne mogy(')

bd.close()
