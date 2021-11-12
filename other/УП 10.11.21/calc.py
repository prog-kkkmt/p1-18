# Калькулятор
import tkinter as tk
from tkinter import messagebox

# Добавление цифр
def add_digit(digit):
    value = calc.get()
    if value[0] == '0' and len(value) == 1:
        value = value[1:]
    calc['state'] = tk.NORMAL
    calc.delete(0, tk.END)
    calc.insert(0, value + digit)
    calc['state'] = tk.DISABLED

# Инициализация и проверка арифметического знака
def add_operation(operation):
    value = calc.get()
    if value[-1] in '+-*/':
        value = value[:-1]
    elif '+' in value or '-' in value or '*' in value or '/' in value:
        calculate()
        value = calc.get()
    calc['state'] = tk.NORMAL
    calc.delete(0, tk.END)
    calc.insert(0, value + operation)
    calc['state'] = tk.DISABLED

# Otvet = or \r
def calculate():
    value = calc.get()
    if value[-1] in '+-*/':
        value = value + value[:-1]
    calc['state'] = tk.NORMAL
    calc.delete(0, tk.END)
    try:
        calc.insert(0, eval(value))
        calc['state'] = tk.DISABLED
    except (SyntaxError,NameError):
        messagebox.showinfo('Attention', 'Не понимаю, нужны буквы, я по другому не понимаю...')
        calc.insert(0, 0)
        calc['state'] = tk.DISABLED
    except (ZeroDivisionError):
        messagebox.showinfo('Attention', 'На 0 не делится')
        calc.insert(0, 0)
        calc['state'] = tk.DISABLED

# Очистка
def clear():
    calc['state'] = tk.NORMAL
    calc.delete(0, tk.END)
    calc.insert(0, 0)
    calc['state'] = tk.DISABLED

# ф-ия удаления последнего элемента
def backspace():
    value = calc.get()
    calc['state'] = tk.NORMAL
    if value == value[0]:
        clear()
        calc['state'] = tk.DISABLED
    else:
        calc.delete(0, tk.END)
        calc.insert(0, value[:-1])
        calc['state'] = tk.DISABLED

# Бинды для клавиатуры
def press_key(event):
    print(repr(event.char))
    if event.char.isdigit():
        add_digit(event.char)
    elif event.char in '+-*/':
        add_operation(event.char)
    elif event.char == '\r' or '=':
        calculate()
    elif event.char == '\x08':
        backspace()

#  Кнопки калькулятора
def make_digit_button(digit):
    return tk.Button(text = digit, bd = 5, font = ('Arial', 15), command = lambda: add_digit(digit))

def make_operation_button(operation):
    return tk.Button(text = operation, bd = 5, font = ('Arial', 15), command = lambda: add_operation(operation))

def make_calc_button(operation):
    return tk.Button(text = operation, bd = 5, font = ('Arial', 15), command = calculate)

def make_clear_button(operation):
    return tk.Button(text = operation, bd = 5, font = ('Arial', 15), command = clear)

# Создание окна приложения
win = tk.Tk()

win.geometry(f"240x273")
win['bg'] = '#008080'
win.title('Калькулятор')
win.resizable(width = False, height = False) # Захват размера окна приложения 
win.bind('<Key>', press_key)

# Размещение поля "calc", где происходят все арифметические действия
calc = tk.Entry(win, justify = tk.RIGHT, font = ('Arial', 15), width = 15)
calc.insert(0, '0')
calc['state'] = tk.DISABLED
calc.grid(row = 0, column = 0, columnspan = 4, stick = 'we', padx = 5)

# Размещение кнопок на свои места
make_digit_button('1').grid(row = 1, column = 0, stick = 'wens', padx = 5, pady = 5)
make_digit_button('2').grid(row = 1, column = 1, stick = 'wens', padx = 5, pady = 5)
make_digit_button('3').grid(row = 1, column = 2, stick = 'wens', padx = 5, pady = 5)
make_digit_button('4').grid(row = 2, column = 0, stick = 'wens', padx = 5, pady = 5)
make_digit_button('5').grid(row = 2, column = 1, stick = 'wens', padx = 5, pady = 5)
make_digit_button('6').grid(row = 2, column = 2, stick = 'wens', padx = 5, pady = 5)
make_digit_button('7').grid(row = 3, column = 0, stick = 'wens', padx = 5, pady = 5)
make_digit_button('8').grid(row = 3, column = 1, stick = 'wens', padx = 5, pady = 5)
make_digit_button('9').grid(row = 3, column = 2, stick = 'wens', padx = 5, pady = 5)
make_digit_button('0').grid(row = 4, column = 0, stick = 'wens', padx = 5, pady = 5)

make_operation_button('+').grid(row = 1, column = 3, stick = 'wens', padx = 5, pady = 5)
make_operation_button('-').grid(row = 2, column = 3, stick = 'wens', padx = 5, pady = 5)
make_operation_button('*').grid(row = 3, column = 3, stick = 'wens', padx = 5, pady = 5)
make_operation_button('/').grid(row = 4, column = 3, stick = 'wens', padx = 5, pady = 5)

make_calc_button('=').grid(row = 4, column = 2, stick = 'wens', padx = 5, pady = 5)
make_clear_button('C').grid(row = 4, column = 1, stick = 'wens', padx = 5, pady = 5)

# Размер в ширину
win.grid_columnconfigure(0, minsize = 60)
win.grid_columnconfigure(1, minsize = 60)
win.grid_columnconfigure(2, minsize = 60)
win.grid_columnconfigure(3, minsize = 60)

# Размер в высоту
win.grid_rowconfigure(0, minsize = 35)
win.grid_rowconfigure(1, minsize = 60)
win.grid_rowconfigure(2, minsize = 60)
win.grid_rowconfigure(3, minsize = 60)
win.grid_rowconfigure(4, minsize = 60)

win.mainloop()
