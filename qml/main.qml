import QtQuick 2.12
import QtQuick.Controls 1.4

import "components"

ApplicationWindow {
  id: root
  visible: true
  minimumWidth: 1120
  minimumHeight: 610
  width: 1120
  height: 620
  color: "#262328"

  Flow {
    anchors.fill: parent
    anchors.margins: 4
    spacing: 10

    Midi {}
    Pitch {}
    Adsr {}
    Osc1 {}
    Osc2 {}
    BassDrum {}
    NoiseBell {}
    SuperMod {}
    LFO {}
    Mixer {}
    Filter {}
    Crusher {}
    AnalogFilter {}
    Saturation {}
  }
}
