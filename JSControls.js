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

/////////////////////////////
///Functions for LogInPage///
/////////////////////////////

function clearLoginFields(){

    loginUsername.text = ""
    loginPassword.text = ""

}



//////////////////////////////
///Functions for SignUpPage///
//////////////////////////////


function allFieldsAreFilled(){

    var checkAllFields = true
    var message = "Incomplete fields:\n"

    if ( surnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Surname.\n"
    }

    if( firstnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " First Name.\n"
    }
    if ( !maleRadio.checked && !femaleRadio.checked )
    {
        checkAllFields = false
        message += " Gender.\n"
    }

    if ( dobTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Date of Birth.\n"
    }

    if ( emailTF.text.indexOf("@") == -1 || emailTF.text.indexOf(".") == -1 || emailTF.text.length < 6)
    {
        checkAllFields = false
        message += " Email.\n"
    }

    if ( phoneNumberTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Phone Number.\n"
    }

    if ( streetnumberTF.text.length == 0 || streettypeTF.text.length == 0 || streetnameTF.text.length == 0 || postcodeTF.text.length < 5 || cityTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Address.\n"
    }

    if ( usernameTF.text.length < 6 )
    {
        checkAllFields = false
        message += " Username.\n"
    }

    if (passwordTF.text.length < 8)
    {
        checkAllFields = false
        message += " Password.\n"
    }

    if (checkAllFields == false)
    {
        MyContext.setPopUpMessage(message)
    }

    return checkAllFields

}

function submit(){

        MyContext.address.streetNumber = streetnumberTF.text
        MyContext.address.streetType = streettypeTF.text
        MyContext.address.streetName = streetnameTF.text
        MyContext.address.postcode = postcodeTF.text
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
        MyContext.profile.phoneNumber = phoneNumberTF.text

        MyContext.user.username = usernameTF.text
        MyContext.user.password = passwordTF.text

}

function clearAllFields(){

    surnameTF.text = ""
    firstnameTF.text = ""
    maleRadio.checked = false
    femaleRadio.checked = false
    dobTF.text = ""
    emailTF.text = ""
    phoneNumberTF.text = ""
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


////////////////////////////////
/// Functions for ProfilePage///
////////////////////////////////

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

    myPhoneNumberTF.visible = true
    myPhoneNumber.visible = false

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
    myFemaleRadio.checkable = false

    myDobTF.visible = false
    myDob.visible = true

    myEmailTF.visible = false
    myEmail.visible = true

    myPhoneNumberTF.visible = false
    myPhoneNumber.visible = true

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

function allFieldsAreFilledInEdit(){

    var checkAllFields = true
    var message = "Incomplete fields:\n"

    if ( mySurnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Surname.\n"
    }

    if( myFirstnameTF.text.length == 0 )
    {
        checkAllFields = false
        message += " First Name.\n"
    }
    if ( !myMaleRadio.checked && !myFemaleRadio.checked )
    {
        checkAllFields = false
        message += " Gender.\n"
    }

    if ( myDobTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Date of Birth.\n"
    }

    if ( myEmailTF.text.indexOf("@") == -1 || myEmailTF.text.indexOf(".") == -1 || myEmailTF.text.length < 6)
    {
        checkAllFields = false
        message += " Email.\n"
    }

    if ( myPhoneNumberTF.text.length < 10 )
    {
        checkAllFields = false
        message += " Phone Number\n"
    }

    if ( myStreetnumberTF.text.length == 0 || myStreettypeTF.text.length == 0 || myStreetnameTF.text.length == 0 || myPostcodeTF.text.length < 5 || myCityTF.text.length == 0 )
    {
        checkAllFields = false
        message += " Address.\n"
    }

    if (checkAllFields == false)
    {
        MyContext.setPopUpMessage(message)
    }

    return checkAllFields

}

function submitChanges(){

    MyContext.address.streetNumber = myStreetnumberTF.text
    MyContext.address.streetType = myStreettypeTF.text
    MyContext.address.streetName = myStreetnameTF.text
    MyContext.address.postcode = myPostcodeTF.text
    MyContext.address.city = myCityTF.text

    MyContext.profile.surname = mySurnameTF.text
    MyContext.profile.firstName = myFirstnameTF.text

    var gender = ""
    if (myMaleRadio.checked)
    {
        gender = myMaleRadio.text
    }
    else
    {
        gender = myFemaleRadio.text
    }

    MyContext.profile.gender = gender

    MyContext.profile.dob = myDobTF.text
    MyContext.profile.email = myEmailTF.text
    MyContext.profile.phoneNumber = myPhoneNumberTF.text

}


function returnToProfileView(){

    if(MyContext.profile.gender == "Male")
    {
        myMaleRadio.checked = true
        myFemaleRadio.checked = false
    }

    else
    {
        myMaleRadio.checked = false
        myFemaleRadio.checked = true
    }

    editModeOff()
}
