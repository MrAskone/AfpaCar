#ifndef USER_H
#define USER_H
#include "profile.h"

#include <string>
#include <QDate>


class Profile;

class User
{
public:
    User();
    User::User(const std::string &username, const std::string &password);

    std::string getName() const;
    void setName(const std::string &name);

    std::string getFirstName() const;
    void setFirstName(const std::string &firstName);

    std::string getUsername() const;
    void setUsername(const std::string &username);

    std::string getPassword() const;
    void setPassword(const std::string &password);

    Profile getProfile() const;
    void setProfile(const Profile &profile);


private:


    std::string m_username;
    std::string m_password;
    Profile m_profile;






};

#endif // USER_H
