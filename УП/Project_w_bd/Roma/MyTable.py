from tkinter import *
import sqlite3

class Sqliter:

    def __init__(self, name_db):
        self.connection = sqlite3.connect(name_db)
        self.cursor = self.connection.cursor()

    def create_table(self, table):
        with self.connection:
            table = ''.join(chr for chr in table if chr.isalnum())
            if table != '':
                self.cursor.execute(f"CREATE TABLE IF NOT EXISTS `{table}` (\
                    id integer PRIMARY KEY,\
                    `fio` text, `group` text, `program_lang` text, `pol` text)")
                self.save()

    def add_student(self, **kwargs):
        with self.connection:
            data = kwargs
            if kwargs.get('data') != None:
                data = kwargs['data']
            self.cursor.execute("INSERT INTO `students`\
                (`fio`, `group`, `program_lang`, `pol`) VALUES (?, ?, ?, ?)",
                (data['fio'], data['group'], data['program_lang'], data['pol']))
            self.save()

    def get_id(self, **kwargs):
        with self.connection:
            try:
                data = kwargs
                if kwargs.get('data') != None:
                    data = kwargs.get('data')
                return self.cursor.execute("SELECT * FROM `students` WHERE \
                    `fio` = ? AND `group` = ? AND `program_lang` = ? AND `pol` = ?",
                    (data['fio'], data['group'], data['program_lang'], data['pol'])).fetchall()[0][0]
            except:
                return -1

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
        'program_lang': data['program_lang'],
        'pol': data['pol']
    }
    return student


def data_base_():
    bd = Sqliter("bd")
    bd.create_table('students')

    student = input_student(fio=get_name(), group=group_get(), program_lang=show_parametrs(), pol=m_g())
    # bd.add_student(fio="Cipkov Il'ya Vladimirovich", group="P1-18", direction="Proger")
    if bd.get_id(data=student) == -1:
        bd.add_student(data=student)
    else:
        print('Ne mogu(')

    bd.close()


def save():
    data_base_()
    # str = get_name() + ' ' + group_get() + ' ' + show_parametrs() + m_g()
    # with open("test.txt", "a") as f:
    #     f.write(str + '\n')

def group_get():
    return my_var.get()


def show_parametrs():
    str = ""
    for name, var in parametrs:
        if var.get():
           str += name + ' '
    return str

def get_name():
    return my_var2.get()

def delete():
    f = open('test.txt', 'w+')
    f.seek(0)
    f.close()

def m_g():
    if v.get() == 1:
        return "Мужской"
    else: return "Женский"

root = Tk()
root.geometry("500x500+700+300")
str_ = ""
my_var = StringVar('')
my_var2 = StringVar('')
parametrs = (("Java", IntVar()), ("C#", IntVar()), ("C++", IntVar()), ("Python", IntVar()), ("Pascal", IntVar()))

x, y = 2, 0
for name, var in parametrs:
    Checkbutton(root, text=f"{name}", variable=var).grid(row=x, column=y)
    x += 1

lb1 = Label(text="Имя:").grid(row=0, column=0)
en = Entry(width=30, textvariable=my_var2).grid(row=0, column=1, columnspan=3)


lb2 = Label(text="Группа:").grid(row=1, column=0, columnspan=1)
mas = ('П1-18', 'П2-18', 'П1-19', 'П2-19', 'П3-19')
sb = Spinbox(width=7, values=mas, textvariable=my_var, command=group_get).grid(row=1, column=1)

b = Button(root, text="Save", width=25, height=2, command=save).grid(row=9, column=1, columnspan=2)
b1 = Button(root, text="Delete", width=25, height=2, command=delete).grid(row=10, column=1, columnspan=2)


v = IntVar()
vs = StringVar
lb3 = Label(text="Пол:").grid(row=8, column=0)
rb1= Radiobutton(root, text="Мужской", value=1, variable=v).grid(row=8, column=1, columnspan=1)
rb2 = Radiobutton(root, text="Женский", value=2, variable=v).grid(row=8, column=2, columnspan=1)

mainloop()

