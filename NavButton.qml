import QtQuick 2.7
import QtQuick.Controls 2.2
import "JSControls.js" as JSC

MyButton {

    property var targetwindow

    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.margins: 5
    onClicked: {
        JSC.changeWindowTo(targetwindow)
    }

}
