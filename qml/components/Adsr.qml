import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11


Module {
  backgroundColor: "#B2D6E3"
  title: "ADSR"

  ColumnLayout {
    LabelledDial {
      label: "Attack"
    }
    LabelledDial {
      label: "Delay"
    }
    LabelledDial {
      label: "Sustain"
    }
    LabelledDial {
      label: "Release"
    }
    CheckBox { text: "KEY ON/OFF" }
  }
}
