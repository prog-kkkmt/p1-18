from tkinter import *
from tkinter import messagebox
import time
from threading import Thread

class MyWindow:

    def __init__(self):
        self.root = Tk()
        self.root.title("Exampler")
        width = 500
        height = 500
        x = 700
        y = 300
        self.root.geometry("500x500")
        self.root.iconbitmap("pero.ico")
        self.label = Label(self.root, text="I'm a label", bg="#ef56ab", relief=GROOVE, wraplength=50, font="Calibri 15") #TimesNewRoman
        self.label.pack(anchor=N)
        self.menu_buttons()
        self.choice = IntVar()
        self.chek = Checkbutton(self.root, text="Хочу стать эпилепсиком", variable=self.choice, command=lambda: Thread(target=self.flashing, args=[], daemon=True).start() if self.choice.get() else self.next_window()).pack(anchor=N)

        self.button = Button(self.root, width=2, height=1, bg="red", command=lambda: self.root.config(bg="red")).pack(anchor=W)
        self.button = Button(self.root, width=2, height=1, bg="orange", command=lambda: self.root.config(bg="orange")).pack(anchor=W)
        self.button = Button(self.root,  width=2, height=1, bg="yellow", command=lambda: self.root.config(bg="yellow")).pack(anchor=W)
        self.button = Button(self.root, width=2, height=1, bg="blue", command=lambda: self.root.config(bg="blue")).pack(anchor=W)

        #self.create_new_window()

    def next_window(self):
        self.root.destroy()
        window = MyWindow()
        window.run()

    def run(self):
        self.root.mainloop()

    def menu_buttons(self):
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#ac4f5e", command=text_area).pack()
        self.button = Button(self.root, width=15, height=3, text="Press me", bg="#3caf5e", command=text_field).pack()
        self.button = Button(self.root, width=15, height=3, text="Danger", bg="#a64f2e", command=lambda: messagebox.showwarning("ВНИМАНИЕ!!!","Вы напугали деда 0_0")).pack()
        #self.button = Button(self.root, width=15, height=3, text="Press me", bg="#a94c51", command=self.buttons).pack()


    def flashing(self):
        while True:
             self.root.config(bg="red")
             time.sleep(0.2)
             self.root.config(bg="green")
             time.sleep(0.2)
             self.root.config(bg="yellow")
             time.sleep(0.2)
             self.root.config(bg="blue")
             time.sleep(0.2)
             self.root.config(bg="orange")
             time.sleep(0.2)

def text_area():
    def smile():
        label = Label(text, text=":)", bg="yellow")
        text.window_create(INSERT, window=label)

    root = Tk()

    text = Text(root, width=50, height=10)
    text.pack()

    button = Button(root, text=":)", command=smile)
    button.pack()

    root.mainloop()


def text_field():
    def insertText():
        s = "Битмейкер на Энтоне пОпове"
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

window = MyWindow()
window.run()
