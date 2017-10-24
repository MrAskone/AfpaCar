#include "postcode.h"
#include <iostream>

using namespace std;

PostCode::PostCode()
{}

PostCode::PostCode(const int &postcode, City *city): m_postcode(postcode), m_city(city)
{}

int PostCode::getPostcode() const
{
    return m_postcode;
}

void PostCode::setPostcode(int postcode)
{
    m_postcode = postcode;
}

City *PostCode::getCity() const
{
    return m_city;
}

void PostCode::setCity(City *city)
{
    m_city = city;
}
