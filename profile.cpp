#include "profile.h"
#include <iostream>

using namespace std;

Profile::Profile()
{
    m_name = "M";
    m_firstName = "J";
    m_phoneNumber = "0123456789";
    m_email = "email@email.com";
    m_dob = QDate (01, 01, 1980);
}

Profile::Profile(const string &name, const string &firstName, const string &phoneNumber, const string &email, const QDate &dob,  Address* myAddress):
    m_name(name), m_firstName(firstName), m_phoneNumber(phoneNumber) , m_email(email), m_dob(dob), m_myAddress(myAddress)
{

}

void Profile::display() const
{
    cout << "\nFirst name\t:\t" << m_firstName
         << "\nSurname\t\t:\t" << m_name
         << "\nPhone Number\t:\t" << m_phoneNumber
         << "\nEmail\t\t:\t" << m_email
//         << "DoB\t:\t" << m_dob.toString()
         << "\n";
}

string Profile::getName() const
{
    return m_name;
}

void Profile::setName(const string &name)
{
    m_name = name;
}

string Profile::getFirstName() const
{
    return m_firstName;
}

void Profile::setFirstName(const std::string &firstName)
{
    m_firstName = firstName;
}

string Profile::getPhoneNumber() const
{
    return m_phoneNumber;
}

void Profile::setPhoneNumber(string phoneNumber)
{
    m_phoneNumber = phoneNumber;
}

string Profile::getEmail() const
{
    return m_email;
}

void Profile::setEmail(const string &email)
{
    m_email = email;
}

QDate Profile::getDob() const
{
    return m_dob;
}

void Profile::setDob(const QDate &dob)
{
    m_dob = dob;
}

