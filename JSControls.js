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
    var message = "The following fields were not filled:"

    if ( surnameTF.length == 0 )
    {
        checkAllFields = false
        message += " Surname."
    }

    if( firstnameTF.length != 0 )
    {
        checkAllFields = false
        message += " First Name."
    }
            && (maleRadio.checked || femaleRadio.checked)
            && dobTF.length == 10
            && emailTF.indexOf("@") != -1 && emailTF.indexOf(".") != -1 && emailTF.length > 6
            && )


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



