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
      CheckBox { text: "  PWMS" }
      CheckBox { text: "" }
    }
    RowLayout {
      CheckBox { text: "RES" }
      CheckBox { text: "CUT" }
    }
    RowLayout {
      CheckBox { text: "DCU" }
      CheckBox { text: "VOL" }
    }
      CheckBox { text: "REL" }
  }
}
