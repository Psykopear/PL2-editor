import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#9BBAC5"
  title: "πλ² MIDI"

  ColumnLayout {
    RowLayout {
      Label { text: "DUO"}
      Item {
        Layout.fillWidth: true
      }
      Label { text: "DETUNE" }
    }
    RowLayout {
      Item {Layout.fillWidth: true}
      Dial {
        Layout.preferredWidth: 60
        Layout.preferredHeight: 60
        inputMode: Dial.Vertical
      }
      Item {
        Layout.fillWidth: true
      }
    }
    RowLayout {
      Label { text: "MONO"}
      Item {
        Layout.fillWidth: true
      }
      Label { text: "OCTAVE" }
    }
    RowLayout {
      Item {
        Layout.fillWidth: true
      }
      ColumnLayout {
        Label { text: "Bass drum" }
        Dial {
          Layout.preferredWidth: 60
          Layout.preferredHeight: 60
          inputMode: Dial.Vertical
        }
      }
    }
    Item {
      Layout.fillWidth: true
    }
  }
}
