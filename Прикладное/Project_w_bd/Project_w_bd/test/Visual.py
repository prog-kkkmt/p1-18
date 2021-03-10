from tkinter import *
from tkinter import messagebox
import tkinter as tk

def show_message():
	messagebox.showinfo("пример ввода\вывода", message.get())
	print(message.get())

if (input() == '1'):
	root = Tk()
	root.title("пример ввода\вывода")
	root.geometry("300x250")
	
	message = StringVar()
	print(message.get())
	
	message_entry = Entry(textvariable=message)
	message_entry.place(relx=.5, rely=.1, anchor="c")
	
	message_button = Button(text="Click Me", command=show_message)
	message_button.place(relx=.5, rely=.5, anchor="c")
	
	root.mainloop()

class About(tk.Toplevel):
	def __init__(self, parent):
		super().__init__(parent)
		self.label = tk.Label(self, text='New window')
		self.button = tk.Button(self, text='Close', bg='lightgreen', command=self.destroy)
		
		self.label.pack(padx=20, pady=20)
		self.button.pack(pady=5, ipadx=2, ipady=2)

class HelpCashier(tk.Toplevel):
	def __init__(self, parent):
		super().__init__(parent)
		self.label = tk.Label(self, text='New window')
		self.title("Окно ввода данных")


		print(StringVar().get())
		tk.Label(self, text="Имя документа:")\
			.grid(row=0, column=0, sticky=W, pady=10, padx=10)
		name = tk.Entry(self)
		name.grid(row=0, column=1, columnspan=3, sticky=W+E, padx=10)
		print(StringVar().get())

		tk.Label(self, text="Оплата клиента:")\
			.grid(row=1, column=0, sticky=W, pady=10, padx=10)
		tk.Entry(self)\
			.grid(row=1, column=1, columnspan=3, sticky=W+E, padx=10)
		
		tk.Label(self, text="Вид оплаты (нал/безнал):")\
			.grid(row=2, column=0, sticky=W, pady=5, padx=10)
		tk.Entry(self, width=30)\
			.grid(row=2, column=1, columnspan=3, sticky=W+E, padx=10)
		
		tk.Button(self, text='Отменить', bg='red', command=self.destroy)\
			.grid(row=3, column=2, pady=10)
		tk.Button(self, text='Принять', bg='lightgreen', command=self.destroy)\
			.grid(row=3, column=3, padx=10)

		# tk.Label(self, text="Столбцов:")\
		# 	.grid(row=1, column=0)
		# tk.Spinbox(self, width=7, from_=1, to=50)\
		# 	.grid(row=1, column=1)
		# tk.Label(self, text="Строк:")\
		# 	.grid(row=1, column=2)
		# tk.Spinbox(self, width=7, from_=1, to=100)\
		# 	.grid(row=1, column=3)
		
		# tk.Button(self, text="Справка").grid(row=2, column=0)
		# tk.Button(self, text="Вставить").grid(row=2, column=2)
		# tk.Button(self, text="Отменить").grid(row=2, column=3)



class App(tk.Tk):

	def __init__(self):
		super().__init__()

		self.title("Помошник кассира")
		# self.geometry('450x500')

		# Верхний отступ
		tk.Label(self, text='').pack(pady=5)

		# Текст окна
		tk.Label(self, text='Ваш мини-кассир', font=(80), pady=20).pack(pady=7)
		
		# Кнопки в окне
		self.btn_accept = tk.Button(self, text='Принять документ и деньги', command=self.help_cashier_window)
		self.btn_report = tk.Button(self, text='Получить отчет кассира', command=self.open_window)
		self.btn_close = tk.Button(self, text='Выход', command=self.destroy)
		
		# Позиционирование кнопок
		self.btn_accept.pack(padx=30, ipadx=10)
		self.btn_report.pack(ipadx=24)
		self.btn_close.pack(ipadx=87)

		# Нижний отступ
		tk.Label(self, text='').pack(pady=50)

	
	def open_window(self):
		about = About(self)
		about.grab_set()

	def help_cashier_window(self):
		help_cashier = HelpCashier(self)
		help_cashier.grab_set()
	

'''
def __init__(self):
	self.window = Tk()
	self.window.title("Test")
	self.window.geometry('600x300')
	self.windows = list()
	btn = Button(window, text='Touch me', bg='black', fg='white', command=clicked)
	btn.grid(column=0, row=1)
'''

# def clicked():
# 	lbl.configure(text='Тооорт')


#lbl = Label(window, text='Я тестовый торт', font=('Arial Black', 30))
#lbl.grid(column=0, row=0)

#btn = Button(window, text='Touch me', bg='black', fg='white', command=clicked)
#btn = Button(window, text='Touch me', bg='black', fg='white')
#btn.grid(column=0, row=1)


# if __name__ == '__main__':
# 	app = App()
# 	app.mainloop()
