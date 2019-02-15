import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#A49DBE"
  title: "πλ² MIDI"

  ColumnLayout {
    width: parent.width
    RowLayout {
      Label { text: "DUO"}
      HSpacer {}
      Label { text: "DETUNE" }
    }
    RowLayout {
      HSpacer {}
      Dial {
        Layout.preferredWidth: 60
        Layout.preferredHeight: 60
        inputMode: Dial.Vertical
      }
      HSpacer {}
    }
    RowLayout {
      Label { text: "MONO"}
      HSpacer {}
      Label { text: "OCTAVE" }
    }
    LabelledDial { label: "BD" }
    CheckBox { text: "NOTE PRI." }
  }
}
