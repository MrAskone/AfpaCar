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
        id: signupPage1Title
        height: parent.height * 0.1
        width: parent.width
        text: "Sign up Form"
        font.pixelSize: 23
        horizontalAlignment: Text.AlignHCenter
    }

    Column{
        anchors.top: signupPage1Title.bottom
        x: parent.width * 0.05
        spacing: container.width * 0.01


        Row{
            Text{
                text: "Contact Information"
                width: container.width * 0.15
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Surname"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }
            TextField{
                id: surnameTF
                placeholderText: "surname"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }
        Row{
            spacing: container.width * 0.025
            Text{
                text: "First Name"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: firstnameTF
                placeholderText: "first name"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Sexe"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: sexeTF
                placeholderText: "sexe"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Email"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: emailTF
                placeholderText: "email@server.com"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Phone"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: phoneTF
                placeholderText: "xx.xx.xx.xx.xx"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            Text{
                text: "Address"
                width: container.width * 0.15
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.025

            Text{
                text: "Street Number"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streetnumberTF
                placeholderText: "street number"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Street Type"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streettypeTF
                placeholderText: "street type (avenue, street, road...)"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Street Name"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streetnameTF
                placeholderText: "street name"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Postcode"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: postcodeTF
                placeholderText: "postcode"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025

            Text{
                text: "Log in ID"
                width: container.width * 0.15
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Username"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: usernameTF
                placeholderText: "username"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Password"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: passwordTF
                placeholderText: "password"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Confirm\nPassword"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: password2TF
                placeholderText: "confirm password"
                width: signupPage1Title.width * 0.7
                height: 25
            }
        }

        Row{
            y: 10
            spacing: container.width * 0.01

            MyButton{
                id: submitButton
                text: "Submit"
            }

            MyButton{
                id: clearButton
                text: "Clear"
            }
        }
    }

    NavButton{
        text: "Back"
        targetwindow: homePage
    }
}
