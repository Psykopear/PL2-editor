import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "LFO"
  backgroundColor: "#A3CEC9"
  ColumnLayout {
    Switch { text: "OSC PWM" }
    Switch { text: "OSC PITCH" }
    Switch { text: "FILTER" }
    Switch { text: "AMP" }
  }
}
