import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "Filter"
  backgroundColor: "#ACC8D1"

  ColumnLayout {
    width: parent.width
    LabelledDial {
      label: "CUTOFF"
      midiMessage: 18
    }
    LabelledDial {
      label: "RES"
      midiMessage: 15
    }
  }
}
