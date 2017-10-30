function print(a) {

    console.log(a)

}


function changeWindowTo(windowName){

    loginPage.visible = false
    homePage.visible = false
    signupPage1.visible = false
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
    }
}



