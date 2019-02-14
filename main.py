import os, sys
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    app = QGuiApplication([*sys.argv, '--style=qml/Docler'])
    engine = QQmlApplicationEngine()
    engine.load('qml/main.qml')
    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
