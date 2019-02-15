import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T

T.Dial {
  id: control

  implicitWidth: Math.max(
    implicitBackgroundWidth + leftInset + rightInset,
    implicitContentWidth + leftPadding + rightPadding
  )
  implicitHeight: Math.max(
    implicitBackgroundHeight + topInset + bottomInset,
    implicitContentHeight + topPadding + bottomPadding
  )

  background: DialImpl {
    implicitWidth: 18
    implicitHeight: 18
    color: "#263238" //control.visualFocus ? control.palette.highlight : control.palette.dark
    progress: control.position
    opacity: control.enabled ? 1 : 0.3
  }

  handle: null
}
