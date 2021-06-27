import tkinter as tk


class About(tk.Toplevel):
	def __init__(self, parent):
		super().__init__(parent)
		self.label = tk.Label(self, text='New window')
		self.button = tk.Button(self, text='Close', bg='lightgreen', command=self.destroy)
		
		self.label.pack(padx=20, pady=20)
		self.button.pack(pady=5, ipadx=2, ipady=2)


class App(tk.Tk):

	def __init__(self):
		super().__init__()
		
		self.btn_accept = tk.Button(self, text='Принять документ и деньги', command=self.open_window)
		self.btn_report = tk.Button(self, text='Получить отчет кассира', command=self.open_window)
		self.btn_close = tk.Button(self, text='Выход', command=self.destroy)
		
		self.btn_accept.pack(padx=100, ipadx=10, pady=10)
		self.btn_report.pack(ipadx=24)
		self.btn_close.pack(ipadx=87)

	
	def open_window(self):
		about = About(self)
		about.grab_set()
	

'''
def __init__(self):
	self.window = Tk()
	self.window.title("Test")
	self.window.geometry('600x300')
	self.windows = list()
	btn = Button(window, text='Touch me', bg='black', fg='white', command=clicked)
	btn.grid(column=0, row=1)
'''

def clicked():
	lbl.configure(text='Тооорт')


#lbl = Label(window, text='Я тестовый торт', font=('Arial Black', 30))
#lbl.grid(column=0, row=0)

#btn = Button(window, text='Touch me', bg='black', fg='white', command=clicked)
#btn = Button(window, text='Touch me', bg='black', fg='white')
#btn.grid(column=0, row=1)


if __name__ == '__main__':
	app = App()
	app.mainloop()
