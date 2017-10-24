import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0
import QtQuick.Dialogs 1.2

import "JSControls.js" as JSC


Rectangle{
    anchors.fill: parent
    visible: true

    Text{
        id: title
        width: container.width
        y: container.height * 0.3
        text: "Welcome to\nthe AfpaCar App!"
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
    }

    Rectangle{
        width: container.width
        anchors.top: title.bottom
        anchors.margins: 10

        Row{
            spacing: 10
            x: container.width/2 - 5 - 100

            MyButton{
                id: loginButton
                text: "Log in"
                onClicked:{
                    JSC.print("Log in Page Load")
                    JSC.changeWindowTo(loginPage)
                }
            }

            MyButton{
                id: signupButton
                text: "Sign up"
                onClicked:{
                    JSC.print("Sign up Page Load")
                    JSC.changeWindowTo(signupPage1)
                }
            }
        }
    }
}
