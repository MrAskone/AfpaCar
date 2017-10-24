#ifndef ADMIN_H
#define ADMIN_H
#include "user.h"

#include "address.h"

class Admin: public User
{
public:
    Admin();
    Admin(const std::string &name, const std::string &firstName, const std::string &username, const std::string &password, const int &phoneNumber, const std::string &email, const QDate &dob, Address* address);

private:




};

#endif // ADMIN_H
