import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#FFCC00"
  title: "Analog Filter"
  ColumnLayout {
    RowLayout {
      Text {
        Layout.alignment: Text.AlignHCenter
        text: "Cutoff"
        color: "white"
      }

      Item {
        Layout.fillWidth: true
      }

      Dial {
        inputMode: Dial.Vertical
        Layout.preferredWidth: 60
        Layout.preferredHeight: 60
        from: 0
        to: 127
        stepSize: 1
        snapMode: "SnapAlways"
      }
    }
  }
}
