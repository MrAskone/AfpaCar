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
        id: profilePageTitle
        height: parent.height * 0.1
        width: parent.width
        text: "Your Profile"
        font.pixelSize: 23
        horizontalAlignment: Text.AlignHCenter
    }

    Column{
        anchors.top: profilePageTitle.bottom
        x: container.width * 0.05
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
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: mySurnameTF
                visible: false
                text: MyContext.profile.surname
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: mySurname
                visible: true
                text: MyContext.profile.surname
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

        }
        Row{
            spacing: container.width * 0.05
            Text{
                text: "First Name"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myFirstnameTF
                visible: false
                text: MyContext.profile.firstName
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
            Text{
                id: myFirstname
                visible: true
                text: MyContext.profile.firstName
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Gender"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            ButtonGroup {
                buttons: myGenderTF.children
            }

            Row {
                id: myGenderTF
                height: container.height / 25

                RadioButton {
                    id: myMaleRadio
                    text: "Male"
                    y: -8
                    checkable: false
                    checked: {
                        if(MyContext.profile.gender == "Male")
                        {true}

                        else
                        {false}
                    }
                }
                RadioButton {
                    id: myFemaleRadio
                    text: "Female"
                    y: -8
                    checkable: false
                    checked: {
                        if(MyContext.profile.gender == "Female")
                        {true}

                        else
                        {false}
                    }
                }
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Date of Birth"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myDobTF
                visible: false
                text: MyContext.profile.dob
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\/[0-9]{2}\/[0-9]{4}/ }
            }
            Text{
                id: myDob
                visible: true
                text: MyContext.profile.dob
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Email"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myEmailTF
                visible: false
                text: MyContext.profile.email
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator: RegExpValidator{ regExp: /([a-z A-Z 0-9 _.-]+)([@])([a-z A-Z .])+/ }
            }
            Text{
                id: myEmail
                visible: true
                text: MyContext.profile.email
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Phone"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myPhoneNumberTF
                visible: false
                text: MyContext.profile.phoneNumber
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}/ }
            }

            Text{
                id: myPhoneNumber
                visible: true
                text: MyContext.profile.phoneNumber
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
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
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myStreetnumberTF
                visible: false
                text: MyContext.address.streetNumber
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z 0-9]+/ }
            }

            Text{
                id: myStreetnumber
                visible: true
                text: MyContext.address.streetNumber
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Street Type"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myStreettypeTF
                visible: false
                text: MyContext.address.streetType
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: myStreettype
                visible: true
                text: MyContext.address.streetType
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Street Name"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myStreetnameTF
                visible: false
                text: MyContext.address.streetName
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: myStreetname
                visible: true
                text: MyContext.address.streetName
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "Postcode"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myPostcodeTF
                visible: false
                text: MyContext.address.postcode
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[0-9]+/ }
                maximumLength: 5
            }

            Text{
                id: myPostcode
                visible: true
                text: MyContext.address.postcode
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }

        Row{
            spacing: container.width * 0.05
            Text{
                text: "City"
                font.pixelSize: 13
                width: container.width * 0.2
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id:myCityTF
                visible: false
                text: MyContext.address.city
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z '-]+/ }
            }

            Text{
                id: myCity
                visible: true
                text: MyContext.address.city
                font.pixelSize: 13
                width: container.width * 0.6
                height: container.height / 25
                verticalAlignment: Text.AlignVCenter
            }
        }Row{
            y: 10
            spacing: container.width * 0.02

            MyButton{
                id: editProfileButton
                text: "Edit Profile"

                onClicked: {
                    JSC.editModeOn()
                }
            }

            MyButton{
                id: acceptChangesButton
                visible: false
                text: "Save Changes"

                onClicked: {
                    if (!JSC.allFieldsAreFilledInEdit())
                    {
                        MyContext.popUpMessage("You must fill all fields")
                        loginPopup.open()
                    }

                    else
                    {
                        passwordCheck.open()
                    }
                    JSC.returnToProfileView()
                }
            }

            MyButton{
                id: discardChangesButton
                visible: false
                text: "Discard Changes"

                onClicked: {
                    JSC.returnToProfileView()
                }
            }

            Popup{
                id: loginPopup
                rightMargin: container.width / 3
                leftMargin: container.width / 3
                bottomMargin: container.height / 2
                modal: true
                focus: true


                Text{
                    text: MyContext.popUpMessage
                }
                //                onOpened: {
                //                    passwordCheck.close()
                //                }

                onClosed: {
                    JSC.editModeOn()
                }
            }
            Popup{
                id: passwordCheck
                rightMargin: container.width / 3
                leftMargin: container.width / 3
                bottomMargin: container.height / 2
                modal: true
                focus: true

                Column{
                    spacing: 5
                    Text{
                        text: "Enter Password"
                        font.pixelSize: 16
                        height: 40
                    }

                    TextField{
                        id: myPasswordTF
                        height: 40
                        width: 110
                        placeholderText: "password"
                        echoMode: "Password"
                        maximumLength: 12
                        validator: RegExpValidator{ regExp: /([a-z A-Z 0-9 _.-]+)/ }
                    }

                    MyButton{
                        id: confirmPassword
                        text: "Confirm"
                        onClicked:
                        {
                            MyContext.sendActionToCpp("Check Password", myPasswordTF.text)

                            if( MyContext.popUpMessage == "Password Approved!")
                            {
                                JSC.submitChanges()
                                JSC.returnToProfileView()
                            }

                            else if ( MyContext.popUpMessage == "Password is incorrect.")
                            {
                                loginPopup.open()
                            }
                            passwordCheck.close()
                        }
                    }
                }
            }
        }
    }

    NavButton{
        text: "Back"
        targetwindow: homePage
        onClicked:
        {
            JSC.returnToProfileView()
        }
    }
}
