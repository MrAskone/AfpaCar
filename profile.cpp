#include "profile.h"
#include <iostream>

using namespace std;

Profile::Profile(QObject *parent) : QObject(parent)
{
    cout << "Profile()" << endl;
}

Profile::Profile(const QString &name, const QString &firstName, const QString &gender,const QString &dob,
                 const QString &email, const QString &phoneNumber, Address *myAddress, QObject *parent):
                m_name(name), m_firstName(firstName),m_gender(gender), m_dob(dob),
                m_email(email), m_phoneNumber(phoneNumber), m_myAddress(myAddress), QObject(parent)
{
    cout << "Profile() + arg" << endl;
}

Profile* Profile::createCopy()
{
    Profile* newProfile = new Profile();
    newProfile->setName( getName() );
    newProfile->setFirstName( getFirstName() );
    newProfile->setGender( getGender() );
    newProfile->setDob( getDob() );
    newProfile->setEmail( getEmail() );
    newProfile->setPhoneNumber( getPhoneNumber() );
    newProfile->setAddress( getAddress() );
    return newProfile;
}
