from PyQt5 import QtCore, QtWidgets
from PyQt5.QtWidgets import QMainWindow, QLabel, QGridLayout, QWidget, qApp, QAction
from PyQt5.QtCore import QSize


class MainWindow(QMainWindow):
    # главное окно
    def __init__(self):
        # иницилизация окна 
        QMainWindow.__init__(self)

        self.setMinimumSize(QSize(100, 100))
        self.setWindowTitle("Скоро отчисление !?")
        # заголовок окна
        central_widget = QWidget(self)
        self.setCentralWidget(central_widget)

        grid_layout = QGridLayout(self)
        central_widget.setLayout(grid_layout)

        title = QLabel("Антон отчислен !!!", self)
        title.setAlignment(QtCore.Qt.AlignCenter) 
        grid_layout.addWidget(title, 0, 0)
        # вывод сообщения в центр окна

        exit_action = QAction("&Выход", self)
        exit_action.setShortcut('Q')
        # задаём хоткей для выхода
        exit_action.triggered.connect(qApp.quit)

        file_menu = self.menuBar()
        # устанавливаем в панель меню данный Action.
        file_menu.addAction(exit_action)


if __name__ == "__main__":
    import sys

    app = QtWidgets.QApplication(sys.argv)
    mw = MainWindow()
    mw.show()
    sys.exit(app.exec())
