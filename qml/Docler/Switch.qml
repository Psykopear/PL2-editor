import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12

T.Switch {
  id: control
  property int midiMessage;
  property int onValue: 127;
  property int offValue: 0;

  implicitWidth: Math.max(
    implicitBackgroundWidth + leftInset + rightInset,
    implicitContentWidth + leftPadding + rightPadding
  )
  implicitHeight: Math.max(
    implicitBackgroundHeight + topInset + bottomInset,
    implicitContentHeight + topPadding + bottomPadding,
    implicitIndicatorHeight + topPadding + bottomPadding
  )

  padding: 4
  spacing: 4
  enabled: control.midiMessage !== 0

  onToggled: {
    control.checked ?
      midi.output(control.midiMessage, control.onValue)
      : midi.output(control.midiMessage, control.offValue)
  }

  indicator: PaddedRectangle {
    implicitWidth: 26
    implicitHeight: 18

    x: text ?
      (control.mirrored ? control.width - width - control.rightPadding : control.leftPadding)
      : control.leftPadding + (control.availableWidth - width) / 2
    y: control.topPadding + (control.availableHeight - height) / 2

    radius: 8
    leftPadding: 0
    rightPadding: 0
    padding: (height - 6) / 2
    color: control.checked ? control.palette.dark : control.palette.midlight

    Rectangle {
      x: Math.max(
        0,
        Math.min(parent.width - width, control.visualPosition * parent.width - (width / 2))
      )
      y: (parent.height - height) / 2
      width: 10
      height: 10
      radius: 16
      color: control.down ? control.palette.light : control.palette.window
      border.width: control.visualFocus ? 2 : 1
      border.color: control.visualFocus ? control.palette.highlight : control.enabled ? control.palette.mid : control.palette.midlight

      Behavior on x {
        enabled: !control.down
        SmoothedAnimation { velocity: 200 }
      }
    }
  }

  contentItem: CheckLabel {
    leftPadding: control.indicator && !control.mirrored ? control.indicator.width + control.spacing : 0
    rightPadding: control.indicator && control.mirrored ? control.indicator.width + control.spacing : 0

    text: control.text
    font: control.font
    color: control.palette.windowText
  }
}
