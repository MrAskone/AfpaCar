import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0
import QtQuick.Dialogs 1.2

import "JSControls.js" as JSC

Rectangle{

    anchors.fill: parent
    visible: false
    onVisibleChanged: JSC.clearLoginFields()

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
                width: container.width / 10
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: loginUsername
                //                placeholderText: "username"
                text: "kobamako"
                width: container.width / 4
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
                maximumLength: 16
            }
        }
        Row{
            spacing: 15
            x: container.width/2 - 75

            Text{
                text: "password:"
                width: container.width / 10
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: loginPassword
                echoMode: "Password"
                //                placeholderText: "password"
                text: "cubanito"
                width: container.width / 4
                height: container.height / 25

                maximumLength: 12
            }
        }
        Row{
            spacing: container.width * 0.02
            x: container.width/2 - 5 - 100

            MyButton{
                text: "Log in"
                onClicked: {
                    console.log("log in attempt")
                    MyContext.sendActionToCpp("Log In", loginUsername.text, loginPassword.text)

                    if (MyContext.popUpMessage == "Access Granted")
                    {
                        JSC.changeWindowTo(profilePage)
                    }

                    else
                    {
                        loginPopup.open()
                    }
                }
            }
            MyButton{
                text: "Sign Up"
                onClicked: {
                    JSC.changeWindowTo(signupPage1)
                    console.log("Sign up")
                }
            }
            Popup{
                id: loginPopup
//                rightMargin: container.width / 3
//                leftMargin: container.width / 3
//                bottomMargin: container.height / 2
                modal: true
                focus: true

                Text{
                    text: MyContext.popUpMessage
                }
            }
        }
    }

    NavButton{
        text: "Back"
        targetwindow: homePage
        onClicked:
        {
            JSC.clearLoginFields()
        }
    }
}
