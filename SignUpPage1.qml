import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Qt.labs.platform 1.0
import QtQuick.Dialogs 1.2

import "JSControls.js" as JSC

Rectangle{
    id: idSignUpPage
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
        spacing: container.width * 0.02


        Row{
            Text{
                text: "Contact Information"
                width: container.width * 0.2
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Surname"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
            TextField{
                id: surnameTF
                placeholderText: "surname"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
        }
        Row{
            spacing: container.width * 0.05
            Text{
                text: "First Name"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: firstnameTF
                placeholderText: "first name"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Gender"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            ButtonGroup {
                buttons: genderTF.children
            }

            Row {
                id: genderTF
                height: container.height / 25

                RadioButton {
                    id: maleRadio
                    text: "Male"
                    y: -8
                }
                RadioButton {
                    id: femaleRadio
                    text: "Female"
                    y: -8
                }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Date of Birth"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: dobTF
                placeholderText: "DD/MM/YYYY"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\/[0-9]{2}\/[0-9]{4}/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Email"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: emailTF
                placeholderText: "email@server.com"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator: RegExpValidator{ regExp: /([a-z A-Z 0-9 _.-]+)([@])([a-z A-Z .])+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Phone"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: phoneNumberTF
                placeholderText: "xx.xx.xx.xx.xx"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}/ }
            }
        }

        Row{
            Text{
                text: "Address"
                width: container.width * 0.2
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.05

            Text{
                text: "Street Number"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streetnumberTF
                placeholderText: "street number"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z 0-9]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Street Type"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streettypeTF
                placeholderText: "street type (avenue, street, road...)"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Street Name"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: streetnameTF
                placeholderText: "street name"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Postcode"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: postcodeTF
                placeholderText: "postcode"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[0-9]+/ }
                maximumLength: 5
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "City"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: cityTF
                placeholderText: "city"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z '-]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05

            Text{
                text: "Log in ID"
                width: container.width * 0.2
                font.pixelSize: 20
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Username"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: usernameTF
                placeholderText: "username"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Password"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: passwordTF
                placeholderText: "password"
                echoMode: "Password"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                maximumLength: 12
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Confirm\nPassword"
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: password2TF
                placeholderText: "confirm password"
                echoMode: "Password"
                width: signupPage1Title.width * 0.7
                height: container.height / 25
                maximumLength: 12
                validator: RegExpValidator{ regExp: /([a-z A-Z 0-9 _.-]+)/ }
            }
        }

        Row{
            y: 10
            spacing: container.width * 0.02

            MyButton{
                id: submitButton
                text: "Submit"

                onClicked: {
                    if (passwordTF.text != password2TF.text)
                    {
                        MyContext.setPopUpMessage("Passwords don't match!")
                        submitPopup.open()
                    }

                    //                    else if(MyContext.listOfUsers)
                    //                    {

                    //                    }

                    else if (!JSC.allFieldsAreFilled())
                    {
                        submitPopup.open()
                    }

                    else
                    {
                        JSC.submit()
                        MyContext.sendActionToCpp("Submit")
                        MyContext.setPopUpMessage("User Created!")
                        submitPopup.open()
                    }
                }
            }

            MyButton{
                id: clearButton
                text: "Clear"

                onClicked: {
                    JSC.clearAllFields()
                }
            }
            Popup{
                id: submitPopup
                rightMargin: idSignUpPage.width / 3
                leftMargin: idSignUpPage.width / 3
                bottomMargin: idSignUpPage.height / 2
                width: 150
                height: 160
                modal: true
                focus: true


                Text{
                    text: MyContext.popUpMessage
                }
                onClosed: {
                    if(MyContext.popUpMessage == "User Created!")
                    {
                        JSC.changeWindowTo(loginPage)
                        JSC.clearAllFields()
                    }
                }
            }
        }
    }

    NavButton{
        text: "Back"
        targetwindow: homePage
    }
}
