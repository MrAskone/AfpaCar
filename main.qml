import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0
import QtQuick.Dialogs 1.2

import "JSControls.js" as JSC


Window {
    visible: true
    width: 384//400
    height: 680//800
    title: qsTr("Hello World")

    Rectangle{
        id: container
        width: parent.width
        height: parent.height

        HomePage{
            id: homePage
        }

        LoginPage{
            id: loginPage
        }

        SignUpPage1{
            id: signupPage1
        }

        ProfilePage{
            id: profilePage
        }

    }
}
