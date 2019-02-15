import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11


Module {
  backgroundColor: "#B2D6E3"
  title: "ADSR"

  ColumnLayout {
    LabelledDial {
      label: "Attack"
      midiMessage: 17
      // midiMessage: 73
    }
    LabelledDial {
      label: "Decay"
      midiMessage: 19
      // midiMessage: 91
    }
    LabelledDial {
      label: "Sustain"
      midiMessage: 21
      // midiMessage: 93
    }
    LabelledDial {
      label: "Release"
      midiMessage: 16
      // midiMessage: 72
    }
    CheckBox { text: "KEY ON/OFF" }
  }
}
