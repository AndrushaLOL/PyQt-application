#!/usr/bin/env python
import sys

from PyQt5.QtCore import QUrl, Qt
from PyQt5.QtQuick import QQuickView
from PyQt5.QtWidgets import QApplication

if __name__ == '__main__':
    app = QApplication(sys.argv)

    qml = QQuickView()
    qml.setSource(QUrl("multipleScreen.qml"))
    qml.show()
    
    sys.exit(app.exec_())
