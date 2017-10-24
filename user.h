#ifndef USER_H
#define USER_H
#include "address.h"

#include <string>
#include <QDate>


class Address;

class User
{
public:
    User();
    User::User(const std::string &name, const std::string &firstName, const std::string &username, const std::string &password, const QDate &dob, Address* address);


    std::string getName() const;
    void setName(const std::string &name);

    std::string getFirstName() const;
    void setFirstName(const std::string &firstName);

    std::string getUsername() const;
    void setUsername(const std::string &username);

    std::string getPassword() const;
    void setPassword(const std::string &password);

    QDate getDob() const;
    void setDob(const QDate &dob);

    Address* getAddress() const;
    void setAddress(Address *address);

private:

    std::string m_name;
    std::string m_firstName;
    std::string m_username;
    std::string m_password;

    QDate m_dob;
    Address* m_address;



};

#endif // USER_H
