from tkinter import *
from tkinter import messagebox
import tkinter as tk

from datetime import datetime
from Cashier import Deal, Report
from sqlighter import SQLigter


class DocumentWorker(tk.Toplevel):

	def __init__(self):
		root = Toplevel()
		
		# self.title("Мини-ауф")
		root.title("Работа с документом клиента")
		# self.geometry('450x500')
		
		# Верхний отступ
		tk.Label(root, text='').pack(pady=5)
		
		# Текст окна
		fio = deal.getFIO()
		text = fio['lastname'] + ' ' + fio['name'] + '\n' + fio['patronymic']
		tk.Label(root, text=text, font=(80), pady=20).pack(pady=7)
		
		# Кнопки в окне
		self.btn_print_payment_doc = tk.Button(root, text='Вывести на экран квитанцию об оплате', command=self.print_payment_doc)
		self.btn_file_payment_doc = tk.Button(root, text='Напечатать квитанцию об оплате', command=self.print_file_payment_doc)
		self.btn_print_report = tk.Button(root, text='Вывести на экран отчет кассира', command=self.print_report)
		self.btn_file_report = tk.Button(root, text='Напечатать отчет кассира', command=self.print_file_report)
		self.btn_close = tk.Button(root, text='Закрыть', command=root.destroy)
		
		# Позиционирование кнопок
		self.btn_print_payment_doc.pack(padx=30, ipadx=16)
		self.btn_file_payment_doc.pack(ipadx=37)
		self.btn_print_report.pack(ipadx=43)
		self.btn_file_report.pack(ipadx=64)
		self.btn_close.pack(ipadx=128)
		
		# Нижний отступ
		tk.Label(root, text='').pack(pady=50)
	
	def print_payment_doc(self):
		print("Квитанция об оплате:")
		deal.printPaymentDoc()
		messagebox.showinfo("Квитанция", deal.getInfoPaymentDoc())
		print()
	
	def print_file_payment_doc(self):
		name_file = deal.printFilePaymentDoc()
		messagebox.showinfo("Имя квитанции", name_file)
		print("Квитанция об оплате в файле: ", name_file)
		print()
	
	def print_report(self):
		messagebox.showinfo("Отчет кассира", cashier.getFormReport())
		cashier.printReport()
		print()
	
	def print_file_report(self):
		name_file = cashier.createNameFile()
		messagebox.showinfo("Имя квитанции", name_file)
		print("Отчет в файле: ", name_file)
		print()


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
		
		self.doc = 'doc.txt'
		self.money = 7000
		self.payment = 'нал'
		#mainloop()
		
    
	def accept_data(self):
		# data = {
		# 	"doc": self.doc.get(),
		# 	"money": self.money.get(),
		# 	"payment": self.payment.get()
		# }
		data = {
			"doc": self.doc,
			"money": self.money,
			"payment": self.payment
		}
		try:
			global deal
			deal = Deal(data['doc'], data['money'], data['payment'])
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
				deal.setPaymentDoc()
				doc_work = DocumentWorker()
				# doc_work.grab_set()
		except:
			print("Error")
			messagebox.showinfo("Error", "Ошибка")
	    

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
		self.btn_report = tk.Button(self, text='Получить отчет кассира', command=self.print_report)
		self.btn_close = tk.Button(self, text='Выход', command=self.destroy)
		
		# Позиционирование кнопок
		self.btn_accept.pack(padx=30, ipadx=10)
		self.btn_report.pack(ipadx=24)
		self.btn_close.pack(ipadx=87)

		self.is_accept = False
		
		# Нижний отступ
		tk.Label(self, text='').pack(pady=50)
	
	def print_report(self):
		messagebox.showinfo("Отчет кассира", cashier.getFormReport())
		cashier.printReport()
		print()
	
	def help_cashier_window(self):
		help_cashier = HelpCashier(self)
		help_cashier.grab_set()


cashier = Report(0, 0)
db = SQLigter("bd")
deal = None

if __name__ == '__main__':
        app = App()
        app.mainloop()
        
        
        
        
        
        
        
    

