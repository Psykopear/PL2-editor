import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#E4DEB4"
  title: "Osc1"

  ColumnLayout {
    width: parent.width
    LabelledDial {
      label: "Wave"
    }
    LabelledDial {
      label: "PWM1"
    }
    LabelledDial {
      label: "PWM2"
    }
    LabelledDial {
      label: "VOL"
    }
    CheckBox { text: "MODE 0/1" }
  }
}
