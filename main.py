import os
import sys
from time import sleep

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, QThread

from lib.midi import midiout
        

class MidiPlayer(QThread):
    """
    Thread used to send midi message while changing parameters
    so we can hear the effects
    """
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.go = True

    def run(self):
        while self.go:
            midiout.send_note_on(40)
            sleep(1)
            midiout.send_note_off(40)
            sleep(0.5)


class MIDI(QObject):
    """
    MIDI stuff helper: 
      - send output
      - start and stop default MIDI playback
    """
    
    @Slot()
    def stop_playback(self):
        self.thread.go = False
    
    @Slot()
    def start_playback(self):
        # I need to use self.thread to avoid the variable 
        # being garbage collected before the end of the task
        self.thread = MidiPlayer()
        self.thread.finished.connect(self.thread.deleteLater)
        self.thread.start()

    @Slot(int, int)
    def output(self, control, value):
        midiout.send_cc(control, value)
        print(f"Sending control:{control} value: {value}")
        

if __name__ == '__main__':
    app = QGuiApplication([*sys.argv, '--style=qml/Docler'])
    engine = QQmlApplicationEngine()
    engine.load('qml/main.qml')
    if not engine.rootObjects():
        sys.exit(-1)
    context = engine.rootContext()
    qmlMIDI = MIDI()
    context.setContextProperty("midi", qmlMIDI)
    sys.exit(app.exec_())
