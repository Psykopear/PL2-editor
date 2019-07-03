import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

import "../components"

Pane {
  id: root
  signal configClicked();
  signal backClicked();

  RowLayout {
    Button {
      text: "Config"
      onClicked: root.configClicked()
    }
    Button {
      text: "Back"
      onClicked: root.backClicked()
    }
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
