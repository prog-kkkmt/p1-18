from PyQt5 import QtWidgets
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QLabel, QLineEdit, QPushButton, QFileDialog
import sqlite3
import sys

nameDB = "database.db"
class Database:
    def __init__(self, nameDB):
        self.db = sqlite3.connect(nameDB) # Создаем соединение с нашей базой данных
        self.cursor = self.db.cursor() # Создаем объект который делает запросы и получает их результаты
        self.cursor.execute("CREATE TABLE IF NOT EXISTS 'users' (\
                            login TEXT,\
                            password TEXT)") # Делаем запрос к базе данных, используя обычный SQL-синтаксис
    def saveDatabase(self):
        self.db.commit() # Сохраняем транзакцию для вносения изменений в базу данных

class Window(QMainWindow):
    def __init__(self):
        QMainWindow.__init__(self)

        bar = self.menuBar() #строка меню
        operation_db = bar.addMenu("File")

        create = operation_db.addAction("Create") #Создаем кнопку
        create.triggered.connect(self.createDatabase) #вызываем функцию при нажатии

        open = operation_db.addAction("Open")
        open.triggered.connect(self.openDatabase)

        exit = bar.addAction("Exit")
        exit.triggered.connect(self.exit)

        self.setMinimumSize(QSize(320, 140)) # Установка минимального размера
        self.setWindowTitle("Title") # Текст загаловка окна

        self.loginLabel = QLabel(self) #Создаем QLabel
        self.loginLabel.setText('Name: ') # Текст лейбла
        self.loginLabel.move(20, 15)  # Координаты для label

        self.loginEdit = QLineEdit(self) # Создаем поля для ввода логина
        self.loginEdit.move(80, 20) # Выстовляем по координатам местонахождение на экране поля для ввода
        self.loginEdit.resize(200, 20) #Размер поля для ввода

        self.passwordLabel = QLabel(self)
        self.passwordLabel.setText('Password: ')
        self.passwordLabel.move(20, 55)  # Координаты для label

        self.passwordEdit = QLineEdit(self) # Создаем поля для ввода пароля
        self.passwordEdit.move(80, 60)
        self.passwordEdit.resize(200, 20)  # Размер поля для ввода

        reg_button = QPushButton('Register', self)
        reg_button.resize(100, 20) # Размер кнопки
        reg_button.move(180, 90) # Местоположение кнопки на окне

        db = Database(nameDB)
        reg_button.clicked.connect(self.editInDatatbase) # При нажатии на кнопку выполняется функция editInDatatbase

    def editInDatatbase(self):
        db = Database(nameDB)
        db.cursor.execute("INSERT INTO 'users' (login, password) VALUES (?, ?)", (self.loginEdit.text(), self.passwordEdit.text())) # Заносим в БД логин и пароль
        db.saveDatabase()

    def createDatabase(self): #Вызывает диалоговое окно файлового менеджера для создание БД
        global nameDB
        nameDB = QFileDialog.getSaveFileName(self, "Выберите базу данных", ".db")[0] # Название файла
        if (nameDB[:4:-1] != 'bd.'): #если расширение файла не указано
            nameDB += '.db' #прибавляет расширения файла БД
        db = Database(nameDB)

    def openDatabase(self): #Вызывает диалоговое окно файлового менеджера для выбора какую БД открыть
        global nameDB
        nameDB = QFileDialog.getOpenFileName(self, "Выберите базу данных")[0] # Название файла
        db = Database(nameDB)

    def exit(self):
        sys.exit(app.exec_())

def main():
    app = QApplication(sys.argv)
    window = Window()
    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
