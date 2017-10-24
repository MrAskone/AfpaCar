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
        spacing: 10


        Row{
            Text{
                text: "Contact Information"
                width: 50
                font.pixelSize: 20
            }
        }

        Row{
            spacing: 25
            Text{
                text: "Surname\t:"
                width: 50
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
            spacing: 25
            Text{
                text: "First Name\t:"
                width: 50
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
            spacing: 25
            Text{
                text: "Sexe"
                width: 50
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
            spacing: 25
            Text{
                text: "Email"
                width: 50
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
            spacing: 25
            Text{
                text: "Phone"
                width: 50
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
                width: 50
                font.pixelSize: 20
            }
        }

        Row{
            spacing: 25

            Text{
                text: "Street Number"
                width: 50
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
            spacing: 25
            Text{
                text: "Street Type"
                width: 50
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
            spacing: 25
            Text{
                text: "Street Name"
                width: 50
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
            spacing: 25
            Text{
                text: "Postcode"
                width: 50
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
            spacing: 25

            Text{
                text: "Log in ID"
                width: 50
                font.pixelSize: 20
            }
        }

        Row{
            spacing: 25
            Text{
                text: "Username"
                width: 50
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
            spacing: 25
            Text{
                text: "Password"
                width: 50
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
            spacing: 25
            Text{
                text: "Confirm\nPassword"
                width: 50
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
            spacing: 10

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
