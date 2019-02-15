import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "Osc2"
  backgroundColor: "#E9DDB6"
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
  }
}
