from tkinter import *
import sqlite3
from tkinter import messagebox


class MainWindow:
    def __init__(self):
        self.window = Tk()
        self.window.title("Авторизация")
        self.window.geometry('400x200')
        self.window.resizable(False, False)
        self.window['bg'] = 'black'

        self.run()

    def run(self):
        self.draw_widgets()

    def draw_widgets(self):
        username_label = Label(self.window, text='Имя пользователя', font='Arial 12 bold', bg='black', fg='white', pady=8)
        username_label.pack()

        self.username_entry = Entry(self.window, font='Arial 11 ', bg='black', fg='white')
        self.username_entry.pack()

        password_label = Label(self.window, text='Пароль', font='Arial 12 bold', bg='black', fg='white', pady=8)
        password_label.pack()

        self.password_entry = Entry(self.window, font='Arial 11 ', bg='black', fg='white', show='*')
        self.password_entry.pack()

        send_btn = Button(self.window, text='Вход', font='Arial 12 bold', bg='black', fg='white', padx=55, command=self.click)
        send_btn.pack(pady= 8)

    def click(self):
        username = self.username_entry.get()
        password = self.password_entry.get()
        if username == 'Антон' and password == 'Гандон':
            messagebox.showinfo('Авторизация успешно пройдена', f'{username}, {password}')
        else:
            messagebox.showinfo('Авторизация не пройдена', f'Ты гандон')

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

    def delete_by_id(self):
        # удаление строки из базы данных с помощью его id через окно приложения
        db = sqlite3.connect(nameDB)
        cursor = db.cursor()
        db.execute('DELETE FROM {0} WHERE id = {1}'.format("PP", window.id_del.get()))
        db.commit()


def insert_data():
    # добавление данных в таблицу через окно приложения
    db = Database(nameDB)
    db.create_table("PP")
    db.cursor.execute("INSERT INTO pp (id, date, intern, number, chief) VALUES (?,?,?,?,?)",
                      (
                      window.id.get(), window.date.get(), window.intern.get(), window.number.get(), window.chief.get()))
    db.save()


def creat_db():
    # диалоговое окно, где в поле имя файлов надо ввести имя файла которое вы хотите создать
    global nameDB
    path_db = filedialog.asksaveasfilename(initialdir="/", title="Select file",
                                           filetypes=(("Database Files", "*.db"), ("all files", "*.*")))
    db = sqlite3.connect(path_db)
    nameDB = path_db


def open_db():
    # диалоговое окно, где пользователь выбирает какой файл ему нужно открыть
    global nameDB
    path_db = filedialog.askopenfilename(initialdir="/", title="Select file",
                                         filetypes=(("Database Files", "*.db"), ("all files", "*.*")))
    # op является путём и его надо передать в функции добавления и удаления из файла
    db = sqlite3.connect(path_db)
    nameDB = path_db


window = MainWindow()
mainloop()
