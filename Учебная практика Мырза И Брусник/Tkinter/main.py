

from tkinter import *

BASE_HISTORY = 'hist.csv'
window = Tk()
window.title('Калькулятор')
window.geometry('307x310')

# Первое число
v1 = StringVar()
ent1 = Entry(textvariable=v1, bg='white', font=('Arial', 40))
ent1.place(x=5, y=5, width=297, height=75)

lab1 = Label(text='Первое число:', fg='blue', font=('Arial', 7))
lab1.place(x=5, y=1, width=62, height=15)

# Второе число
v2 = StringVar()
ent2 = Entry(textvariable=v2, bg='white', font=('Arial', 40))
ent2.place(x=5, y=80, width=297, height=75)

lab2 = Label(text='Второе число:', fg='blue', font=('Arial', 7))
lab2.place(x=5, y=81, width=60, height=15)

# Сумма
def btn1_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 + a2)
        v3.set(cash)

    except:
        v3.set("Числа должны быть целыми")


btn1 = Button(bg='#ffffff', text='+', borderwidth=0, font=('', 25), command=btn1_click)
btn1.place(x=5, y=165, width=55, height=35)


# Разность
def btn2_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 - a2)
        v3.set(cash)

    except:
        v3.set("Числа должны быть целыми")


btn2 = Button(bg='#ffffff', text='-', borderwidth=0, font=('', 25), command=btn2_click)
btn2.place(x=65, y=165, width=55, height=35)


# Умножение
def btn3_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 * a2)
        v3.set(cash)

    except:
        v3.set("Числа должны быть целыми")


btn3 = Button(bg='#ffffff', text='*', borderwidth=0, font=('', 25), command=btn3_click)
btn3.place(x=125, y=165, width=55, height=35)
# Деление
def btn4_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 / a2, 10)
        v3.set(cash)

    except ZeroDivisionError:
        v3.set("Деление на ноль, попробуёте ещё раз")
    except Exception:
        v3.set("Числа должны быть целыми")


btn4 = Button(bg='#ffffff', text='/', borderwidth=0, font=('', 25), command=btn4_click)
btn4.place(x=185, y=165, width=55, height=35)
# Целочисленное деление
def btn5_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 // a2)
        v3.set(cash)

    except ZeroDivisionError:
        v3.set("Деление на ноль, попробуёте ещё раз")
    except Exception:
        v3.set("Числа должны быть целыми")


btn5 = Button(bg='#ffffff', text='//', borderwidth=0, font=('', 25), command=btn5_click)
btn5.place(x=245, y=165, width=55, height=35)
# Возведение в степень
def btn6_click():
    try:
        a1 = int(v1.get())
        a2 = int(v2.get())
        cash = round(a1 ** a2)
        v3.set(cash)

    except Exception:
        v3.set("Числа должны быть целыми")


btn6 = Button(bg='#ffffff', text='**', borderwidth=0, font=('', 25), command=btn6_click)
btn6.place(x=5, y=210, width=55, height=35)

# Результат
v3 = StringVar()
ent3 = Entry(textvariable=v3, bg='white', font=('Arial', 10))
ent3.place(x=5, y=270, width=297, height=30)

lab3 = Label(text='Результат:', fg='blue', font=('Arial', 10))
lab3.place(x=5, y=255, width=65, height=15)

window.mainloop()
