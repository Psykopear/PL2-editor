import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

import "components"

ApplicationWindow {
  id: root
  visible: true
  minimumWidth: 1120
  minimumHeight: 680
  width: minimumWidth
  height: minimumHeight
  color: "#262328"

  footer: Pane {
    width: parent.width
    height: 60
    RowLayout {
      Button {
        text: "Start midi"
        onClicked: midi.start_playback()
      }
      Button {
        text: "Stop midi"
        onClicked: midi.stop_playback()
      }
    }
  }

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
