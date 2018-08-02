import sys

from PyQt5.QtGui import QColor
from PyQt5.QtWidgets import QWidget, QMainWindow, QPushButton, QColorDialog, QFrame, QApplication


class Window(QWidget):

    def __init__(self):
        super().__init__()
        self.selected_color_old = QColor(0, 0, 255)
        self.initUI()

    def initUI(self):
        btn = QPushButton()
        btn.resize(btn.sizeHint())

        btn.clicked.connect(self.showColorDialog)

        self.frame = QFrame(self)
        self.frame.resize(100, 100)
        self.frame.move(50, 50)
        self.frame.setStyleSheet("QWidget {background-color: %s}" % self.selected_color_old.name())

    def showColorDialog(self):
        selected_color = QColorDialog.getColor()

        if selected_color != self.selected_color_old:
            self.selected_color_old




def run():
    app = QApplication(sys.argv)
    ex = Window()
    ex.show()
    sys.exit(app.exec_())
