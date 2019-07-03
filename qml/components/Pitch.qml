import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#C9B29E"
  title: "Pitch"

  ColumnLayout {
    BigDial {
      label: "PORTAMENTO"
      midiMessage: 5
      Layout.alignment: Qt.AlignHCenter
    }
    LabelledDial { label: "TUNE" }
    Switch { text: "ON/OFF" }
  }
}
