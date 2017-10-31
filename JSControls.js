function print(a) {

    console.log(a)

}


function changeWindowTo(windowName){

    loginPage.visible = false
    homePage.visible = false
    signupPage1.visible = false
    profilePage.visible =false
    windowName.visible = true

}

function allFieldsAreFilled(){

    var checkAllFields = true
    var message = "The following fields were not filled properly:"

    if ( surnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Surname."
    }

    if( firstnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " First Name."
    }
    if ( !maleRadio.checked && !femaleRadio.checked )
    {
        checkAllFields = false
        message += " Gender."
    }

    if ( dobTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Date of Birth."
    }

    if ( emailTF.text.indexOf("@") == -1 || emailTF.text.indexOf(".") == -1 || emailTF.text.length < 6)
    {
        checkAllFields = false
        message += " Email."
    }

    if ( phoneTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Phone Number"
    }

    if ( streetnumberTF.text.length == 0 || streettypeTF.text.length == 0 || streetnameTF.text.length == 0 || postcodeTF.text.length < 5 || cityTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Address."
    }

    if ( usernameTF.text.length < 6 )
    {
        checkAllFields = false
        message += " Username."
    }

    if (passwordTF.text.length < 8)
    {
        checkAllFields = false
        message += " Password."
    }

    if (checkAllFields == false)
    {
        MyContext.setPopUpMessage(message)
    }

    return checkAllFields

}

function submit(){

    var formCompleted = allFieldsAreFilled()

    if (formCompleted)
    {
        MyContext.address.streetNumber = streetnumberTF.text
        MyContext.address.streetType = streettypeTF.text
        MyContext.address.streetName = streetnameTF.text
        MyContext.address.postCode = postcodeTF.text
        MyContext.address.city = cityTF.text

        MyContext.profile.surname = surnameTF.text
        MyContext.profile.firstName = firstnameTF.text

        var gender = ""
        if (maleRadio.checked)
        {
            gender = maleRadio.text
            console.log(gender)
        }
        else
        {
            gender = femaleRadio.text
            console.log(gender)
        }

        MyContext.profile.gender = gender

        MyContext.profile.dob = dobTF.text
        MyContext.profile.email = emailTF.text
        MyContext.profile.phoneNumber = phoneTF.text

        MyContext.user.username = usernameTF.text
        MyContext.user.password = passwordTF.text

        console.log("Switching to Log In Page")
//        changeWindowTo(loginPage)
    }
}

function clearAllFields(){

    surnameTF.text = ""
    firstnameTF.text = ""
    maleRadio.checked = false
    femaleRadio.checked = false
    dobTF.text = ""
    emailTF.text = ""
    phoneTF.text = ""
    streetnumberTF.text = ""
    streettypeTF.text = ""
    streetnameTF.text = ""
    postcodeTF.text = ""
    cityTF.text = ""
    usernameTF.text = ""
    passwordTF.text = ""
    password2TF.text = ""

    console.log("Sign up form cleared")
}

function editModeOn(){

    editProfileButton.visible = false
    acceptChangesButton.visible = true
    discardChangesButton.visible = true

    mySurnameTF.visible = true
    mySurname.visible = false

    myFirstnameTF.visible = true
    myFirstname.visible = false

    myMaleRadio.checkable = true
    myFemaleRadio.checkable = true

    myDobTF.visible = true
    myDob.visible = false

    myEmailTF.visible = true
    myEmail.visible = false

    myPhoneTF.visible = true
    myPhone.visible = false

    myStreetnumberTF.visible = true
    myStreetnumber.visible = false

    myStreettypeTF.visible = true
    myStreettype.visible = false

    myStreetnameTF.visible = true
    myStreetname.visible = false

    myPostcodeTF.visible = true
    myPostcode.visible = false

    myCityTF.visible = true
    myCity.visible = false

}

function editModeOff(){

    editProfileButton.visible = true
    acceptChangesButton.visible = false
    discardChangesButton.visible = false

    mySurnameTF.visible = false
    mySurname.visible = true

    myFirstnameTF.visible = false
    myFirstname.visible = true

    myMaleRadio.checkable = false
    myFemaleRadio.checkable = true

    myDobTF.visible = false
    myDob.visible = true

    myEmailTF.visible = false
    myEmail.visible = true

    myPhoneTF.visible = false
    myPhone.visible = true

    myStreetnumberTF.visible = false
    myStreetnumber.visible = true

    myStreettypeTF.visible = false
    myStreettype.visible = true

    myStreetnameTF.visible = false
    myStreetname.visible = true

    myPostcodeTF.visible = false
    myPostcode.visible = true

    myCityTF.visible = false
    myCity.visible = true

}
