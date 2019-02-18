import mido

class MidiOut:
    """
    Wrapper to make things easier with MIDI
    """
    def __init__(self):
        self.port = mido.open_output()
        self.channel = 0

    def _send(self, msg_type, **kwargs):
        self.port.send(mido.Message(msg_type, channel=self.channel, **kwargs))

    def send_program_change(self, program):
        self._send("program_change", program=program)

    def send_cc(self, control, value):
        self._send("control_change", control=control, value=value)

    def send_note_on(self, note=60):
        self._send("note_on", note=note)

    def send_note_off(self, note=60):
        self._send("note_off", note=note)

midiout = MidiOut()
