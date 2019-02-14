import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T

T.Dial {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding) || 184 // ### remove 184 in Qt 6
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding) || 184 // ### remove 184 in Qt 6

    background: DialImpl {
        implicitWidth: 18
        implicitHeight: 18
        color: "#000000" //control.visualFocus ? control.palette.highlight : control.palette.dark
        progress: control.position
        opacity: control.enabled ? 1 : 0.3
    }

    handle: ColorImage {
        x: background.x + background.width / 2 - handle.width / 2
        y: background.y + background.height / 2 - handle.height / 2
        width: 14
        height: 10
        defaultColor: "#000000"
        color: "#000000" //control.visualFocus ? control.palette.highlight : control.palette.dark
        source: "qrc:/qt-project.org/imports/QtQuick/Controls.2/images/dial-indicator.png"
        antialiasing: true
        opacity: control.enabled ? 1 : 0.3
        transform: [
            Translate {
                y: -Math.min(background.width, background.height) * 0.4 + handle.height / 2
            },
            Rotation {
                angle: control.angle
                origin.x: handle.width / 2
                origin.y: handle.height / 2
            }
        ]
    }
}
