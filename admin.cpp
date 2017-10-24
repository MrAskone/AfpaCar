#include "admin.h"
#include <iostream>

using namespace std;

Admin::Admin()
{}

Admin::Admin(const string &name, const string &firstName, const std::string &username, const std::string &password, QDate dob, Address* address):
    User(name, firstName, username, password, dob, address)
{}
