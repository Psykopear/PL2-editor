import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

RowLayout {
  id: root
  property string label;
  property color labelColor: 'black';
  property int stepSize: 1;
  property int midiMessage;

  Text {
    text: root.label
    color: root.labelColor
  }
  
  Item {
    Layout.fillWidth: true
  }
  
  Dial {
    inputMode: Dial.Vertical
    Layout.preferredWidth: 40
    Layout.preferredHeight: 40
    enabled: root.midiMessage !== 0
    palette.highlight: "#000000"
    from: 0
    to: 127
    stepSize: root.stepSize
    snapMode: "SnapAlways"
    onMoved: {
      midi.output(midiMessage, value)
    }
  }
}
