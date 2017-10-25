#include "admin.h"
#include <iostream>

using namespace std;

Admin::Admin()
{}

Admin::Admin(const string &username, const string &password):
    User(username, password)
{}
