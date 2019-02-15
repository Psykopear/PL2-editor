import os
import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot

class MIDI(QObject):
    """DO MIDI STUFF"""

    @Slot(str)
    @Slot('double')
    def output(self, s):
        print(s)

    @Slot(str)
    def outputStr(self, s):
        print(s)

    @Slot('double')
    def outputFloat(self, x):
        print(x)


if __name__ == '__main__':
    app = QGuiApplication([*sys.argv, '--style=qml/Docler'])
    # app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load('qml/main.qml')
    if not engine.rootObjects():
        sys.exit(-1)
    context = engine.rootContext()
    midi = MIDI()
    context.setContextProperty("midi", midi)
    sys.exit(app.exec_())
