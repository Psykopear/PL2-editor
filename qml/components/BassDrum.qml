import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "Bass drum"
  backgroundColor: "#7C8871"
  ColumnLayout {
    width: parent.width
    LabelledDial {
      label: "Timbre"
    }
    LabelledDial {
      label: "Attack"
    }
    LabelledDial {
      label: "Release"
    }
  }
}

