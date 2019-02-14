import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#C9B29E"
  title: "Pitch"

  GridLayout {
    columns: 3
    rows: 5
    Item {Layout.fillWidth: true}
    Dial {
      Layout.preferredWidth: 60
      Layout.preferredHeight: 60
      inputMode: Dial.Vertical
    }
    Item {Layout.fillWidth: true}

    Item {Layout.fillWidth: true}
    Label { text: "PORTAMENTO" }
    Item {Layout.fillWidth: true}

    Label { text: "TUNE" }
    Dial {
      Layout.preferredWidth: 60
      Layout.preferredHeight: 60
      inputMode: Dial.Vertical
    }
    
  }
}
