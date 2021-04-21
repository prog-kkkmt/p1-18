from PyQt5 import QtWidgets, uic
from PyQt5.QtWidgets import QApplication, QMessageBox, QMainWindow, QWidget
import sys
import sqlite3

nameDB = "database_grade.db"

class Database:
    def __init__(self, nameDB):
        self.db = sqlite3.connect(nameDB)
        self.cursor = self.db.cursor()

    def create_table(self):
        self.cursor.execute("CREATE TABLE IF NOT EXISTS 'students'(\
                               number_book INTEGER PRIMARY KEY,\
                                name_student TEXT,\
                                grade INTEGER)")
    def save(self):
        self.db.commit()

    def close(self):
        self.db.close()

class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__() #вызываем конструктор QMainWindow
        uic.loadUi('lesson2.ui', self)
        self.show()
        self.pushButton.clicked.connect(self.editInDatabase) #потом допиши считывание из edli при нажатии на кнопку

    def editInDatabase(self):
        full_name = self.lineFull_name.text()
        book_number = self.lineNumber_book.text()
        grade = 0
        if (self.radioButton.isChecked()):
            grade = 2
        elif (self.radioButton_2.isChecked()):
            grade = 3
        elif (self.radioButton_3.isChecked()):
            grade = 4
        elif (self.radioButton_4.isChecked()):
            grade = 5
        db = Database(nameDB)
        try:
            db.cursor.execute("INSERT INTO 'students' VALUES (?, ?, ?)",
                              (book_number, full_name, grade))
            db.save()
        except sqlite3.Error:
            QMessageBox.about(self, "Message", "Номер зачётки не может быть\
             одинаковым")

app = QtWidgets.QApplication(sys.argv)
db = Database(nameDB)
db.create_table()
window = MainWindow()
db.close()
sys.exit(app.exec_())