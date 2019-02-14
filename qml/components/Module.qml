import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.5

Pane {
  id: root
  implicitWidth: 150
  implicitHeight: 300
  property color backgroundColor;
  default property Component content;
  property string title

  background: Rectangle {
    color: root.backgroundColor
    opacity: 1
    anchors.fill: parent
  }
  ColumnLayout {
    Label {
      text: root.title
    }
    Loader {
      sourceComponent: root.content
    }
  }
}
