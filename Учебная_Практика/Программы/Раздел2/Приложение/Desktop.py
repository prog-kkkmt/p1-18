from tkinter import *
from tkinter import messagebox
import time
#from threading import Thread


class Priloj():
    def __init__(self):
        self.root = Tk()
        self.root.title("Zdraste")
        width = 350
        height = 350
        x = 700
        y = 300
        self.root.geometry(f"{width}x{height}+{x}+{y}")
        self.root.iconbitmap("death.ico")
        self.label = Label(self.root, text="Программа по улучшению комюнити", bg="#9932CC", relief=GROOVE, wraplength=200, font="TimesNewRoman 17", fg="#00FF00").pack(anchor = N)
        self.menu_buttons()

        self.button = Button(self.root, width=5, height=2, bg="red", command=lambda: self.root.config(bg="red")).pack(anchor=W)
        self.button = Button(self.root, width=5, height=2, bg="blue", command=lambda: self.root.config(bg="blue")).pack(anchor=W)
        self.button = Button(self.root, width=5, height=2, bg="black", command=lambda: self.root.config(bg="black")).pack(anchor=W)

    def svet(self):
        while True:
            self.root.config(bg = "purple")
            time.sleep(0.2)
            self.root.config(bg="blue")
            time.sleep(0.2)
            self.root.config(bg="red")
            time.sleep(0.2)
            self.root.config(bg="green")
            time.sleep(0.2)
            self.root.config(bg="yellow")
            time.sleep(0.2)

    def menu_buttons(self):
        self.button = Button(self.root, width=50, height=5, text="Слабость", bg="#1E90FF", command=text_area).pack()
        self.button = Button(self.root, width=25, height=3, text="Слабость", bg="#1E90FF", command=text_field).pack()
        self.button = Button(self.root, width=25, height=3, text="Слабость", bg="#1E90FF", command=lambda: messagebox.showwarning("Переведи","YBUUTHS YT K>LB")).pack()



def text_area():
    def smile():
        label = Label(text, text="Молодец", bg="purple")
        text.window_create(INSERT, window=label)

    root=Tk()

    text = Text(root, width=100, height=100)
    text.pack()

    button = Button(text, text="Улыбнись :)", command=smile)
    button.pack()

    root.mainloop()

def text_field():
    def insertText():
        s = "Спасибо за урок Роман"
        text.insert(1.0, s)

    def getText():
        s = text.get(1.0, END)
        label['text'] = s

    def deleteText():
        text.delete(1.0, END)

    root = Tk()

    text = Text(root, width=30, height=5)
    text.pack()

    frame = Frame(root)
    frame.pack()

    b_insert = Button(frame, text="Вставить", command=insertText)
    b_insert.pack(side=LEFT)

    b_get = Button(frame, text="Получить", command=getText)
    b_get.pack(side=LEFT)

    b_delete = Button(frame, text="Удалить", command=deleteText)
    b_delete.pack(side=LEFT)

    label = Label(root)
    label.pack()

    root.mainloop()


Priloj()
mainloop()