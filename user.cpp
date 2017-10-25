#include "user.h"
#include <iostream>

using namespace std;


User::User()
{

}

User::User::User(const string &username, const string &password):
    m_username(username), m_password(password)
{}


std::string User::getUsername() const
{ return m_username; }


void User::setUsername(const std::string &username)
{ m_username = username; }


std::string User::getPassword() const
{ return m_password; }


void User::setPassword(const std::string &password)
{ m_password = password; }

Profile User::getProfile() const
{
    return m_profile;
}

void User::setProfile(const Profile &profile)
{
    m_profile = profile;
}


