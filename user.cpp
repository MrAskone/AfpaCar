#include "user.h"
#include <iostream>

using namespace std;

User::User(QObject *parent) : QObject(parent)
{
    cout << "User()" << endl;
}

User::User::User(const QString &username, const QString &password, Profile *profile, QObject *parent):
    m_username(username), m_password(password), m_profile(profile), QObject(parent)
{
    cout << "User() + arg" << endl;
}

User* User::createCopy()
{
    User* newUser = new User();
    newUser->setUsername( getUsername() );
    newUser->setPassword( getPassword() );
    newUser->setProfile( getProfile() );
    return newUser;
}
