from tkinter import *
import sqlite3

WIDTH = 500
HEIGHT = 500
WINDOW_TITLE = "Test"
X = 200
Y = 200


class Database:
    def __init__(self, nameDB):
        self.db = sqlite3.connect(nameDB)
        self.cursor = self.db.cursor()

    def create_table(self, table):
        self.cursor.execute(f"CREATE TABLE IF NOT EXISTS '{table}' (\
                            book_id INTEGER PRIMARY KEY, \
                            book_name TEXT, \
                            author_name TEXT, \
                            price INTEGER)")

    def save(self):
        self.db.commit()

    def get_table(self, table):
        return [i for i in self.cursor.execute(f"SELECT * FROM {table}")]


class Window:
    def __init__(self):
        self.root = Tk()
        self.root.title(WINDOW_TITLE)
        self.root.geometry(f"{WIDTH}x{HEIGHT}+{X}+{Y}")
        self.menu_button()

    def menu_button(self):
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#aaaaff", command=insert_data).pack()
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#6baabb").pack()
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#5ff7cc").pack()


def insert_data():
    db.cursor.execute("INSERT INTO books (book_id, book_name, author_name, price) VALUES (?,?,?,?)", (1, "C++", "Петя", "1000"))
    db.save()

window = Window()
db = Database("serv.db")
db.create_table("books")
mainloop()
