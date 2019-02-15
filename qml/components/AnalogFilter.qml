import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  backgroundColor: "#8B9AAB"
  title: "Analog Filter"
  BigDial {
    label: "Cutoff"
    midiMessage: 14
    // midiMessage: 70
  }
}
