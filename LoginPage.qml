import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0
import QtQuick.Dialogs 1.2

import "JSControls.js" as JSC

Rectangle{
    anchors.fill: parent
    visible: false

    Text{
        id: loginPageTitle
        height: parent.height * 0.1
        width: parent.width
        y: parent.height * 0.35
        text: "Enter your Username and Password"
        font.pixelSize: 23
        horizontalAlignment: Text.AlignHCenter
    }

    Column{
        anchors.top: loginPageTitle.bottom
        spacing: 5

        Row{
            spacing: 15
            x: container.width/2 - 75

            Text{
                text: "username:"
                width: 40
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                placeholderText: "username"
                width: 100
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
                maximumLength: 16
            }
        }
        Row{
            spacing: 15
            x: container.width/2 - 75

            Text{
                text: "password:"
                width: 40
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                echoMode: "Password"
                placeholderText: "password"
                width: 100
                height: 25

                maximumLength: 12
            }
        }
        Row{
            spacing: container.width * 0.01
            x: container.width/2 - 5 - 100

            MyButton{
                text: "Log in"
                onClicked: {
                    console.log("log in")
                }
            }
            MyButton{
                text: "Sign Up"
                onClicked: {
                    JSC.changeWindowTo(signupPage1)
                    console.log("Sign up")
                }
            }
        }
    }

    NavButton{
        text: "Back"
        targetwindow: homePage
    }
}
