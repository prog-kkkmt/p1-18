from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QApplication, QMainWindow
import sys

def main():
    app = QApplication(sys.argv)
    window = QMainWindow()
    window.setWindowTitle("Text")
    window.setGeometry(350, 250, 350, 250) #два парамитра для ширены обекта
    # следуюшие два параметра размер экрана

    main_text = QtWidgets.QLabel(window) # указываем к какому окну будет принадлежать объект
    main_text.setText("Just text")
    main_text.move(100, 100)

    btn = QtWidgets.QPushButton(window)
    btn.move(70, 150)
    btn.setText("Press me") #при нажатии на кнопу сделай появление нового окна

    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
