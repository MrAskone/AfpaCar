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
                id: mySurnameTF
                visible: false
                placeholderText: MyContext.profile.surname
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: mySurname
                visible: true
                text: MyContext.profile.surname
                width: container.width * 0.7
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
                id: myFirstnameTF
                visible: false
                placeholderText: MyContext.profile.firstName
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }
            Text{
                id: myFirstname
                visible: true
                text: MyContext.profile.firstName
                width: container.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "Gender"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            ButtonGroup {
                buttons: myGenderTF.children
            }

            Row {
                id: myGenderTF
                height: 25

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
            spacing: container.width * 0.025
            Text{
                text: "Date of Birth"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id: myDobTF
                visible: false
                placeholderText: MyContext.profile.dob
                width: container.width * 0.7
                height: 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\/[0-9]{2}\/[0-9]{4}/ }
            }
            Text{
                id: myDob
                visible: true
                text: MyContext.profile.dob
                width: container.width * 0.7
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
                id: myEmailTF
                visible: false
                placeholderText: MyContext.profile.email
                width: container.width * 0.7
                height: 25
                validator: RegExpValidator{ regExp: /([a-z A-Z 0-9 _.-]+)([@])([a-z A-Z .])+/ }
            }
            Text{
                id: myEmail
                visible: true
                text: MyContext.profile.email
                width: container.width * 0.7
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
                id: myPhoneTF
                visible: false
                placeholderText: MyContext.profile.phoneNumber
                width: container.width * 0.7
                height: 25
                validator: RegExpValidator{ regExp: /[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}\.[0-9]{2}/ }
            }

            Text{
                id: myPhone
                visible: true
                text: MyContext.profile.phoneNumber
                width: container.width * 0.7
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
                id: myStreetnumberTF
                visible: false
                placeholderText: MyContext.address.streetNumber
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z 0-9]+/ }
            }

            Text{
                id: myStreetnumber
                visible: true
                text: MyContext.address.streetNumber
                width: container.width * 0.7
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
                id: myStreettypeTF
                visible: false
                text: MyContext.address.streetType
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: myStreettype
                visible: true
                text: MyContext.address.streetType
                width: container.width * 0.7
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
                id: myStreetnameTF
                visible: false
                placeholderText: MyContext.address.streetName
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z]+/ }
            }

            Text{
                id: myStreetname
                visible: true
                text: MyContext.address.streetName
                width: container.width * 0.7
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
                id: myPostcodeTF
                visible: false
                placeholderText: MyContext.address.postcode
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[0-9]+/ }
                maximumLength: 5
            }

            Text{
                id: myPostcode
                visible: true
                text: MyContext.address.postcode
                width: container.width * 0.7
                height: 25
            }
        }

        Row{
            spacing: container.width * 0.025
            Text{
                text: "City"
                width: container.width * 0.15
                height: 25
                verticalAlignment: Text.AlignVCenter
            }

            TextField{
                id:myCityTF
                visible: false
                placeholderText: MyContext.address.city
                width: container.width * 0.7
                height: 25
                validator:  RegExpValidator{ regExp: /[a-z A-Z '-]+/ }
            }

            Text{
                id: myCity
                visible: true
                text: MyContext.address.city
                width: container.width * 0.7
                height: 25
            }
        }Row{
            y: 10
            spacing: container.width * 0.01

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
                    JSC.editModeOff()
                }
            }

            MyButton{
                id: discardChangesButton
                visible: false
                text: "Discard Changes"

                onClicked: {
                    JSC.editModeOff()
                }
            }
            Popup{
                id: loginPopup
                x: 200
                y: 40
                width: 200
                height: 40
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
    }
}
