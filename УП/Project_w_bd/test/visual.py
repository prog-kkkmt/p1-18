from tkinter import *
from tkinter import messagebox
import tkinter as tk

from datetime import datetime
from Cashier import Deal, Report
from sqlighter import SQLigter


class About(tk.Toplevel):
	def __init__(self, parent):
		super().__init__(parent)
		self.label = tk.Label(self, text='New window')
		self.button = tk.Button(self, text='Close', bg='lightgreen', command=self.destroy)
		
		self.label.pack(padx=20, pady=20)
		self.button.pack(pady=5, ipadx=2, ipady=2)

class DocumentWorker(tk.Toplevel):

	def __init__(self, parent):
		super().__init__(parent)
		
		self.title("Мини-ауф")
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


class HelpCashier(tk.Toplevel):
	def __init__(self, parent):
		super().__init__(parent)
		self.label = tk.Label(self, text='New window')
		self.title("Окно ввода данных")
		
		# Имя документа
		self.doc = StringVar()
		lbl_doc = tk.Label(self, text="Имя документа:").grid(row=0, column=0, sticky=W, pady=10, padx=10)
		ent_doc = tk.Entry(self, textvariable=self.doc).grid(row=0, column=1, columnspan=3, sticky=W+E, padx=10)
		
		# Оплата клиента
		self.money = IntVar()
		lbl_money = tk.Label(self, text="Оплата клиента:").grid(row=1, column=0, sticky=W, pady=10, padx=10)
		ent_money = tk.Entry(self, textvariable=self.money).grid(row=1, column=1, columnspan=3, sticky=W+E, padx=10)
		
		# Нал/Безнал
		self.payment = StringVar()		
		lbl_payment = tk.Label(self, text="Вид оплаты (нал/безнал):").grid(row=2, column=0, sticky=W, pady=5, padx=10)
		ent_payment = tk.Entry(self, textvariable=self.payment, width=30).grid(row=2, column=1, columnspan=3, sticky=W+E, padx=10)
		
		# Кнопки
		btn_canel = tk.Button(self, text='Отменить', bg='red', command=self.destroy).grid(row=3, column=2, pady=10)
		btn_submit = tk.Button(self, text='Принять', bg='lightgreen', command=self.accept_data).grid(row=3, column=3, padx=10)
		#mainloop()
		
    
	def accept_data(self):
		data = {
			"doc": self.doc.get(),
			"money": self.money.get(),
			"payment": self.payment.get()
		}
		try:
			deal = Deal(data['doc'], data['money'], data['payment'])
		except:
			print("Error")
			messagebox.showinfo("Error", "Ошибка")
		# Если не хватило денег
		if deal.enoughMoney() == False:
			print()
			print("Недостаточно")
			messagebox.showinfo("Error", "Недостаточно средств")
		# Денег хватает
		else:
			print()
			print("Докумет принят")
			self.destroy()
			cashier.add(data['money'], data['payment']) # Добавляем деньги в отчет

			d_fio = deal.getFIO()   # Получаем ФИО клиента
			# Если его нет в бд с клиентами, добавляем
			if db.clientExists(d_fio) == False:
				db.addClient(d_fio, deal.getPhoneNumber())
				s = ''
				for key in d_fio:
					s += d_fio[key] + ' '
				print("Добавлен новый клиент: ", s)
            
			client_id = db.getIdClient(d_fio)
			db.addMoneyToTheClient(client_id, data['money']) # Добавляем деньги в общий список покупок клиента

			# Добавляем в реестр заказов новый заказ
			d = deal.getDataProduct()
			date, time = str(datetime.today()).split()
			db.addOrderToRegister(d['product'], d['number'], d['total_price'],\
				deal.getPaymentMethod(), client_id, date, time)
			data = [d['product'], d['number'], d['total_price'], deal.getPaymentMethod(), client_id, date, time]
			s = str(db.getLastId('registry')) + ' | '
			for x in data:
				s += str(x) + ' | '

			print("Добавлен в реестр: ", s)
			print()
			# Работа с поступившем документом
			#user.workWithDocuments(deal, cashier)
			doc_work = DocumentWorker(self)
			doc_work.grab_set()
	    

class App(tk.Tk):

	def __init__(self):
		super().__init__()
		
		self.title("Мини-кассир")
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


cashier = Report(0, 0)
#user = Program()
db = SQLigter("bd")

if __name__ == '__main__':
        app = App()
        app.mainloop()
        
        
        
        
        
        
        
    

