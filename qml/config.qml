import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.11

import "components"

ApplicationWindow {
  id: root
  visible: true
  minimumWidth: 120
  minimumHeight: 120
  width: 120
  height: 120
  color: "#FF2328"

  ColumnLayout {
    anchors.fill: parent
    anchors.margins: 4
    spacing: 10

    TextInput {
      id: input
      text: "HEY"
      onTextEdited: {
        message.midiMessage = text
      }
    }

    LabelledDial {
      id: message
      label: "CC"
    }
  }
}
