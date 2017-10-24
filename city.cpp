#include "city.h"
#include <iostream>

using namespace std;

City::City()
{}

City::City(const string &name): m_name(name)
{}

std::string City::getName() const
{
    return m_name;
}

void City::setName(const std::string &name)
{
    m_name = name;
}
