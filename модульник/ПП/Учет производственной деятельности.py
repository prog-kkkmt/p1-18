from tkinter import *
from tkinter import messagebox
from tkinter import filedialog
import sqlite3

TEXT_BUTTON_DEL = "Удалить"
TEXT_CREATE_FILE = "Создать базу данных"
TEXT_OPEN_FILE = "Открыть базу данных"
nameDB = "database.db"
BUTTON_COLOR = "#E6E6FA"
WINDOW_COLOR = "#628f35"
ACT_BUTTON_COLOR = "#B0C4DE"
LABEL_BG = "#628f35"


class Database:
    def __init__(self, nameDB):
        # подключение к базе данных
        self.db = sqlite3.connect(nameDB)
        self.cursor = self.db.cursor()

    def create_table(self, table):
        # создание таблицы со столбцами в базе данных
        self.cursor.execute(f"CREATE TABLE IF NOT EXISTS '{table}' (\
                            id INTEGER, \
                            date TEXT, \
                            intern TEXT, \
                            number INTEGER, \
                            chief INTEGER)")

    def save(self):
        # сохранение созданной таблицы базы данных
        self.db.commit()

    def get_table(self, table):
        # вызов таблицы базы данных
        return [i for i in self.cursor.execute(f"SELECT * FROM {table}")]


def delete_by_id():
    # удаление строки из базы данных с помощью его id через окно приложения 
    db = sqlite3.connect(nameDB)
    cursor = db.cursor()
    db.execute('DELETE FROM {0} WHERE id = {1}'.format("PP", window.id__del.get()))
    db.commit()


def insert_data():
    # добавление данных в таблицу через окно приложения
    db = Database(nameDB)
    db.create_table("PP")
    db.cursor.execute("INSERT INTO pp (id, date, intern, number, chief) VALUES (?,?,?,?,?)",
                      (window.id.get(), window.date.get(), window.intern.get(), window.number.get(), window.chief.get()))
    db.save()


def creat_db():
    # диалоговое окно, где в поле имя файлов надо ввести имя файла которое вы хотите создать
    global nameDB
    path_db = filedialog.asksaveasfilename(initialdir="/", title="Select file", filetypes=(("Database Files", "*.db"), ("all files", "*.*")))
    db = sqlite3.connect(path_db)
    nameDB = path_db


def open_db():
    # диалоговое окно, где пользователь выбирает какой файл ему нужно открыть
    global nameDB
    path_db = filedialog.askopenfilename(initialdir="/", title="Select file", filetypes=(("Database Files", "*.db"), ("all files", "*.*")))
    # op является путём и его надо передать в функции добавления и удаления из файла
    db = sqlite3.connect(path_db)
    nameDB = path_db


class Window:
    def __init__(self):
        # присваивает строку из виджета поля для ввода текста
        self.window = Tk()
        self.window.title("Учет производственной деятельности")
        self.window.geometry("640x180")
        self.window["bg"] = WINDOW_COLOR
        self.id = StringVar()  
        self.date = StringVar()
        self.intern = StringVar()
        self.number = StringVar()
        self.chief = StringVar()
        self.id_del = StringVar()

        self.top_menu()
        self.main_menu()

    def top_menu(self):
        # иницилизирую объект меню для секций
        self.menu = Menu(self.window)  
        self.menu.add_cascade(label=TEXT_CREATE_FILE, command=creat_db)
        self.menu.add_cascade(label=TEXT_OPEN_FILE, command=open_db)
        self.menu.add_cascade(label="О программе", command=lambda: messagebox.showinfo("О программе", "Разработку ведет Батраков Данила."))  # Меню о программе добавляется на панель меню
        self.window.config(menu=self.menu)  # доступ к атрибуту объекта после его инициализации

    def create_label(self, text_label, x_label, y_label):
        # Функция принимает строку и координаты
        Label(text=text_label, bg=LABEL_BG).place(x=x_label, y=y_label)  # Отображает текст в окне по переданным координатам

    def main_menu(self):
        # отображаем текст хранящейся в переменной
        self.create_label("ID : ", 0, 3)
        Entry(width=20, textvariable=self.id).place(x=0, y=20)
        # определим элемент Entry который представляет собой поле для ввода текста
        self.create_label("Дата: ", 0, 40)
        Entry(width=20, textvariable=self.date).place(x=0, y=60)

        self.create_label("Практикант:", 160, 3)
        Entry(width=20, textvariable=self.intern).place(x=160, y=20)

        self.create_label("Содержание работы:", 160, 40)
        Entry(width=20, textvariable=self.number).place(x=160, y=60)

        self.create_label("Ответсвенный: ", 320, 3)
        Entry(width=20, textvariable=self.chief).place(x=320, y=20)

        Button(self.window, text="Добавить", command=insert_data, bg=BUTTON_COLOR,
               activebackground=ACT_BUTTON_COLOR).place(x=382, y=45)

        self.create_label("Удаление по ID: ", 480, 3)
        Entry(width=20, textvariable=self.id_del, ).place(x=480, y=20)

        Button(self.window, text=TEXT_BUTTON_DEL, width= 8, command=delete_by_id, bg=BUTTON_COLOR,
               activebackground=ACT_BUTTON_COLOR).place(x=540, y=45)


window = Window()
mainloop()  # отображает главное окно со всеми виджетами
