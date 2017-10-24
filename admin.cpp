#include "admin.h"
#include <iostream>

using namespace std;

Admin::Admin()
{}

Admin::Admin(const string &name, const string &firstName, const string &username, const string &password, const int &phoneNumber, const string &email, const QDate &dob, Address* address):
    User(name, firstName, username, password, phoneNumber, email, dob, address)
{}
