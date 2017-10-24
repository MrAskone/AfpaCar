#include "user.h"
#include <iostream>

using namespace std;


User::User()
{}

User::User::User(const string &name, const string &firstName, const string &username, const string &password, const int &phoneNumber, const string &email, const QDate &dob, Address* address):
    m_name(name), m_firstName(firstName), m_username(username), m_password(password), m_phoneNumber(phoneNumber) , m_email(email), m_dob(dob), m_address(address)
{}


std::string User::getName() const
{ return m_name; }


void User::setName(const std::string &name)
{ m_name = name; }


std::string User::getFirstName() const
{ return m_firstName; }


void User::setFirstName(const std::string &firstName)
{ m_firstName = firstName; }


std::string User::getUsername() const
{ return m_username; }


void User::setUsername(const std::string &username)
{ m_username = username; }


std::string User::getPassword() const
{ return m_password; }


void User::setPassword(const std::string &password)
{ m_password = password; }


int User::getPhoneNumber() const
{ return m_phoneNumber; }


void User::setPhoneNumber(int phoneNumber)
{ m_phoneNumber = phoneNumber; }


std::string User::getEmail() const
{ return m_email; }


void User::setEmail(const std::string &value)
{ m_email = value; }


QDate User::getDob() const
{ return m_dob; }


void User::setDob(const QDate &dob)
{ m_dob = dob; }


Address *User::getAddress() const
{ return m_address; }


void User::setAddress( Address *address)
{ m_address = address; }
