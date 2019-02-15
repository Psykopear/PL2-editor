import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "LFO"
  backgroundColor: "#A3CEC9"
  ColumnLayout {
    CheckBox { text: "OSC PWM" }
    CheckBox { text: "OSC PITCH" }
    CheckBox { text: "FILTER" }
    CheckBox { text: "AMP" }
  }
}
