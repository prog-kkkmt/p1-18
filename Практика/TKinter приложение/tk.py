from tkinter import *

lst = []

class Window():
    def __init__(self):
        self.root = Tk()
        self.root.title("Sport")
        width = 400
        height = 400
        x = 400
        y = 300
        self.root.geometry(f"{width}x{height}+{x}+{y}")
       #self.label = Label(self.root, text = "Sport Application", bg = "#ffffff", relief = GROOVE, wraplength = 100, font = "TimesNewRoman 15", fg = "#000000").pack(anchor = N)
        self.label = Label(self.root, text="TIME TO SPORT", bg ="#d1d1d1", wraplength=105, font="TimesNewRoman 15", fg ="#000000").pack(anchor=N)
        self.menu_buttons()

        self.button = Button(self.root, width="2", height="1", bg="black", command=self.choose_black).pack(anchor=W)
        self.button = Button(self.root, width="2", height="1", bg="white", command=self.choose_white).pack(anchor=W)

    def choose_black(self):
        self.root.config(bg="black")
        # self.label.config(bg="black")
    def choose_white(self):
        self.root.config(bg="white")

    def menu_buttons(self):
        self.button = Button(self.root, width = 40, height = 2, text = "Ваши результаты.", bg = "#d1d1d1").pack()
        self.button = Button(self.root, width=40, height=2, text="Программа тренировок.", bg="#d1d1d1", command=text_field).pack()
        self.button = Button(self.root, width=40, height=2, text="Спортивное питание.", bg="#d1d1d1", command=food_sport).pack()

def food_sport():
    root = Tk()
    label = Label(root, text="Протеин \
    Аминокислоты \
    ВСАА \
    Гейнеры \
    Жиросжигатели \
    Креатин \
    Витамины и минералы \
    Спортивные батончики", wraplength=150, font="TimesNewRoman 15").pack(anchor=W)
    root.mainloop()

def text_field():
    def insertText():
        s = "\n1.TIMESTART:\n2.TIMEEND:\n3.TYPE:"
        text.insert(1.0, s)

    def getText():
        s = text.get(1.0, END)
        lst.append(s)
        label['text'] = lst

    def deleteText():
        text.delete(1.0, END)
        lst.clear()

    root = Tk()

    text = Text(root, width = 30, height = 5)
    text.pack()

    frame = Frame(root)
    frame.pack()

    b_insert = Button(frame, text ="Вставить", command = insertText)
    b_insert.pack(side = LEFT)

    b_get = Button(frame, text="Получить", command=getText)
    b_get.pack(side=LEFT)

    b_delete = Button(frame, text="Удалить", command=deleteText)
    b_delete.pack(side=LEFT)
    label = Label(root)
    label.pack()

    root.mainloop()

Window()
mainloop()
