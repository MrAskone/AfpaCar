#ifndef ADMIN_H
#define ADMIN_H
#include "user.h"

#include "address.h"

class Admin: public User
{
public:
    Admin();
    Admin(const std::string &username, const std::string &password);

private:




};

#endif // ADMIN_H
