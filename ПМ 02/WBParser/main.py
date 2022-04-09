from PyQt6.QtWidgets import QApplication, QWidget, QMainWindow, QFileDialog, QMessageBox
from PyQt6.QtGui import QIcon, QAction
from PyQt6 import QtWidgets
from PyQt6.QtCore import QTimer, pyqtSignal, QThread, QObject

from bs4 import BeautifulSoup as bs

import mainwindow
import requests, re, sqlite3, sys, os, traceback

class MainWindow(QMainWindow, mainwindow.Ui_MainWindow):
    def __init__(self, *args, obj=None, **kwargs):
        super(MainWindow, self).__init__(*args, **kwargs)
        self.setupUi(self)

        self.addIdPushButton.clicked.connect(self.addIdSlot)
        self.updateDbPushButton.clicked.connect(self.updateDbSlot)

        openBdAction = QAction("&Открыть базу",self)
        openBdAction.setShortcut("Ctrl+O")
        openBdAction.triggered.connect(self.loadDataBase)

        saveBdAction = QAction("&Сохранить базу",self)
        saveBdAction.setShortcut("Ctrl+S")
        saveBdAction.triggered.connect(self.saveDataBase)

        openListAction = QAction("&Открыть список",self)
        openListAction.setShortcut("Ctrl+L")
        openListAction.triggered.connect(self.openList)

        fileMenu = self.menubar.addMenu('&File')
        fileMenu.addAction(openBdAction)
        fileMenu.addAction(saveBdAction)
        fileMenu.addAction(openListAction)

    class ProductItem:
        id = None
        name = None
        cost = None
        oldCost = None
        url = None

    def openList(self):
        fileName,_ = QFileDialog.getOpenFileName(
            self,
            "Выберите файл с идами",
            "",
            "Text Files (*.txt);;All Files (*)")
        if (not fileName): return

        try:
            ids = open(fileName,'r').read().split('\n')
            for id in ids:
                rowPosition = self.tableWidget.rowCount()
                self.tableWidget.insertRow(rowPosition)
                self.editItem(self.parseProduct(id), rowPosition)
        except Exception as E:
            msg = QMessageBox()
            msg.setText(traceback.format_exc())
            msg.setWindowTitle("Ошибка во время парсинга листа идов")
            msg.exec()

            print(traceback.format_exc())

    def saveDataBase(self):
        fileName,_ = QFileDialog.getSaveFileName(
            self,
            "Сохранить базу данных",
            "",
            "Sqlite Files (*.db)")
        if (not fileName): return
        if os.path.exists(fileName): os.remove(fileName)

        db = sqlite3.connect(fileName)
        db_cur = db.cursor()
        db_cur.execute('CREATE TABLE IF NOT EXISTS database (id INTEGER,name TEXT,cost INTEGER,oldCost INTEGER,url TEXT)')
    
        rowCount = self.tableWidget.rowCount()

        for row in range(rowCount):
            productItem = self.ProductItem()

            productItem.id = self.tableWidget.item(row,0).text()
            productItem.name = self.tableWidget.item(row,1).text()
            productItem.cost = self.tableWidget.item(row,2).text()
            productItem.oldCost = self.tableWidget.item(row,3).text()
            productItem.url = self.tableWidget.item(row,4).text()

            db_cur.execute(
                'INSERT INTO database VALUES (?,?,?,?,?)',
                [
                    productItem.id,
                    productItem.name,
                    productItem.cost,
                    productItem.oldCost,
                    productItem.url
                ]
            )

        db.commit()
        db_cur.close()
        db.close()

    def loadDataBase(self):
        fileName,_ = QFileDialog.getOpenFileName(
            self,
            "Выберите базу данных",
            "",
            "Sqlite Files (*.db);;All Files (*)")
        if (not fileName): return
        
        db = sqlite3.connect(fileName)
        db_cur = db.cursor()
        db_cur.execute('SELECT * FROM database')
        result = db_cur.fetchall()
        db_cur.close()
        db.close()

        while self.tableWidget.rowCount() > 0:
            self.tableWidget.removeRow(0)

        for row in result:
            productItem = self.ProductItem()
            
            productItem.id = str(row[0])
            productItem.name = row[1]
            productItem.cost = str(row[2])
            productItem.oldCost = str(row[3])
            productItem.url = row[4]

            rowPosition = self.tableWidget.rowCount()
            self.tableWidget.insertRow(rowPosition)
            self.editItem(productItem, rowPosition)

    def addIdSlot(self):
        id = self.lineEdit.text()
        if (not id): return

        rowPosition = self.tableWidget.rowCount()
        self.tableWidget.insertRow(rowPosition)
        self.editItem(self.parseProduct(id), rowPosition)

        self.lineEdit.clear()

    def parseProduct(self, id):
        productItem = self.ProductItem()
        
        productItem.url = 'https://www.wildberries.ru/catalog/{}/detail.aspx'.format(id)
        index = bs(requests.get(productItem.url).text,'html.parser')

        productItem.id = id
        productItem.name = index.find(class_="same-part-kt__header").text
        productItem.cost = ''.join(re.findall("\d+",index.find(class_="price-block__final-price").text))

        productItem.oldCost =  index.find(class_="price-block__old-price")
        if productItem.oldCost != None: productItem.oldCost = ''.join(re.findall("\d+",productItem.oldCost.text))
        else: productItem.oldCost = productItem.cost

        return productItem

    def editItem(self, productItem, rowPosition):
        self.tableWidget.setItem(rowPosition, 0, QtWidgets.QTableWidgetItem(productItem.id))
        self.tableWidget.setItem(rowPosition, 1, QtWidgets.QTableWidgetItem(productItem.name))
        self.tableWidget.setItem(rowPosition, 2, QtWidgets.QTableWidgetItem(productItem.cost))
        self.tableWidget.setItem(rowPosition, 3, QtWidgets.QTableWidgetItem(productItem.oldCost))
        self.tableWidget.setItem(rowPosition, 4, QtWidgets.QTableWidgetItem('https://www.wildberries.ru/catalog/{}/detail.aspx'.format(productItem.id)))

    def updateDbSlot(self):
        rowCount = self.tableWidget.rowCount()

        for row in range(rowCount):
            id = self.tableWidget.item(row,0).text()
            self.editItem(self.parseProduct(id), row)

    def keyReleaseEvent(self, e):
        if e.key() == 16777223:
            indexes = self.tableWidget.selectionModel().selectedRows()
            for index in sorted(indexes):
                self.tableWidget.removeRow(index.row())
                break


        

app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exec()
