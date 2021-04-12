from tkinter import *

def main():
    def save():
        str = get_name() + ' ' + group_get() + ' ' + show_parametrs() + m_g()
        with open("test.txt", "a") as f:
            f.write(str + '\n')

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
        else:
            return "Женский"

    root = Tk()
    root.geometry("300x300+700+300")
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



if __name__ == '__main__':
    main()