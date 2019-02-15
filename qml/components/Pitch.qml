import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#C9B29E"
  title: "Pitch"

  ColumnLayout {
    Dial {
      Layout.preferredWidth: 60
      Layout.preferredHeight: 60
      Layout.alignment: Qt.AlignHCenter
      inputMode: Dial.Vertical
    }
    Label {
      text: "PORTAMENTO"
      Layout.alignment: Qt.AlignHCenter
    }
    RowLayout {
      Layout.alignment: Qt.AlignHCenter
      Label { text: "TUNE" }
      Dial {
        Layout.preferredWidth: 60
        Layout.preferredHeight: 60
        inputMode: Dial.Vertical
      }
    }
  }
}
