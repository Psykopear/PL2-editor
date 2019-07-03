import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

import "containers"

ApplicationWindow {
  id: root
  visible: true
  minimumWidth: 1120
  minimumHeight: 680
  width: minimumWidth
  height: minimumHeight
  color: "#262328"

  footer: Footer {
    width: parent.width
    height: 60
    onConfigClicked: stack.push(config)
    onBackClicked: stack.pop()
  }

  StackView {
    id: stack
    initialItem: params
    anchors.fill: parent
  }

  Params {
    id: params
    anchors.fill: parent
    anchors.margins: 4
  }

  Component {
    id: config
    Pane {
      Label { text: "CIAO" }
    }
  }

}
