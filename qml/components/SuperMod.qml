import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.11

Module {
  title: "Super Mod"
  backgroundColor: "#E40614"

  ColumnLayout {
    BigDial {
      midiMessage: 1
    }
    RowLayout {
      Switch { text: "  PWMS" }
      Switch { text: "" }
    }
    RowLayout {
      Switch { text: "RES" }
      Switch { text: "CUT" }
    }
    RowLayout {
      Switch { text: "DCU" }
      Switch { text: "VOL" }
    }
      Switch { text: "REL" }
  }
}
