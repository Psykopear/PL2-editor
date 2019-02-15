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
    Rectangle {
      anchors.top: parent.top
      anchors.left: parent.left
      anchors.margins: 3
      width: 10
      height: 10
      radius: 10
      border.color: '#525252'
      border.width: 3
    }
    Rectangle {
      anchors.top: parent.top
      anchors.right: parent.right
      anchors.margins: 3
      width: 10
      height: 10
      radius: 10
      border.color: '#525252'
      border.width: 3
    }
    Rectangle {
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.margins: 3
      width: 10
      height: 10
      radius: 10
      border.color: '#525252'
      border.width: 3
    }
    Rectangle {
      anchors.bottom: parent.bottom
      anchors.right: parent.right
      anchors.margins: 3
      width: 10
      height: 10
      radius: 10
      border.color: '#525252'
      border.width: 3
    }
  }

  ColumnLayout {
    width: parent.width
    Label {
      text: root.title
      Layout.alignment: Qt.AlignHCenter
    }
    Loader {
      sourceComponent: root.content
      Layout.fillWidth: true
    }
  }
}
