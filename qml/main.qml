import QtQuick 2.12
import QtQuick.Controls 1.4

import "components"

ApplicationWindow {
  id: root
  visible: true
  minimumWidth: 800
  minimumHeight: 600
  color: "#262328"

  Flow {
    anchors.fill: parent
    anchors.margins: 4
    spacing: 10

    /* Midi {} */
    /* Pitch {} */
    Adsr {}
    /* Osc1 {} */
    /* Osc2 {} */
    /* BassDrum {} */
    /* NoiseBell {} */
    /* SuperMod {} */
    /* LFO {} */
    /* Mixer {} */
    /* Filter {} */
    /* Crusher {} */
    AnalogFilter {}
    /* Saturation {} */
  }
}
