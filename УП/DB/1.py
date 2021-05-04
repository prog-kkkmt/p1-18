import sqlite3

class SQLighter:

    def __init__(self, imya):
        self.connection = sqlite3.connect(imya)
        self.cursor = self.connection.cursor()

    def create_table(self,baza):
        with self.connection:
            baza = "".join(chr for chr in baza if chr.isalnum() )
            print(baza)
            if baza != "":
                self.cursor.execute(f"CREATE TABLE `{baza}` (\
                    `id` integer PRIMARY KEY,\
                    `marka` text, `nomer` text, `model` text)")
                self.save()

    def get_id(self, **kwargs):
        with self.connection:
                data = kwargs
                if kwargs.get('data') != None:
                    data = kwargs.get('data')
                return self.cursor.execute("SELECT * FROM `mashina` WHERE \
                    `marka` = ? AND `nomer` = ? AND `model` = ?",\
                    (data['marka'],data['nomer'],data['model'])).fetchall()[0][0]

    def add_mashina(self, **kwargs):
        with self.connection:
            data = kwargs
            if kwargs.get('data') != None:
                data = kwargs.get('data')

            self.cursor.execute("INSERT INTO `mashina` \
                (`marka`,`nomer`,`model`) VALUES (?,?,?)", \
                (data['marka'], data['nomer'], data['model']))
            self.save()

    def print_table(self):
        for s in self.cursor.execute("SELECT * FROM `mashina` "):
            print(s)

    def save(self):
        self.connection.commit()
        print(f"{self.cursor.rowcount} отредактированно строк")

    def close(self):
        self.connection.close()

bd = SQLighter('baza')
# bd.create_table("mashina")
bd.add_mashina(marka="BMW",nomer="12GHJ0", model='Bruh')
bd.print_table()
bd.close()
 
