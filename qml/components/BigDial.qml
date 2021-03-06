import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

ColumnLayout {
  id: root
  property string label;
  property color labelColor: 'black';
  property int midiMessage;
  property int stepSize: 1;
  
  Dial {
    Layout.alignment: Qt.AlignHCenter
    inputMode: Dial.Vertical
    Layout.preferredWidth: 80
    Layout.preferredHeight: 80
    from: 0
    to: 127
    stepSize: root.stepSize
    snapMode: "SnapAlways"
    palette.highlight: "#000000"
    midiMessage: root.midiMessage
  }

  Label {
    text: root.label
    color: root.labelColor
    Layout.alignment: Qt.AlignHCenter
  }
}
