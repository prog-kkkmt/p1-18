from tkinter import *
from tkinter import messagebox


class Window():
    def __init__(self):
        self.root = Tk()
        self.root.title("Заголовок окна")
        width = 400
        height = 500
        x = 500
        y = 250
        self.root.geometry(f"{width}x{height}+{x}+{y}")
        self.label = Label(self.root, text="Текст", bg="#a67fe4", relief=GROOVE, wraplength=170, font="TimeNewRoman 15", fg="#09f3d3").pack(anchor=N)
        self.menu_button()
        self.button = Button(self.root, width=2, height=1, bg="red", command=lambda: self.root.config(bg="red")).pack(anchor=W)
        self.button = Button(self.root, width=2, height=1, bg="orange", command=lambda: self.root.config(bg="orange")).pack(anchor=W)
        self.button = Button(self.root, width=2, height=1, bg="blue", command=lambda: self.root.config(bg="blue")).pack(anchor=W)

    def menu_button(self):
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#aaaaff", command=text_area).pack()
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#6baabb", command=text_field).pack()
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#5ff7cc", command=lambda: messagebox.showwarning("ВНИМАНИЕ!!!!!!!!!!!!!!", "ЫЪЫ")).pack()


def text_area():
    def smile():
        lable = Label(text, text=":)", bg="yellow")
        text.window_create(INSERT, window=lable)

    root = Tk()
    text = Text(root, width=50, height=10)
    text.pack()

    button = Button(root, text=":)", command=smile)
    button.pack()


def text_field():
    def insertText():
        s = "Илюффка Цыплаков"
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


Window()
mainloop()
