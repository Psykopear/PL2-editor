import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11


Module {
  backgroundColor: "#9BBAC5"
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
  }
}
