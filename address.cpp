#include "address.h"
#include <iostream>

using namespace std;


Address::Address()
{}

Address::Address(const int &streetNumber, const std::string &streetType, const std::string &streetName, const std::string &postcode, const std::string &city):
    m_streetNumber(streetNumber), m_streetType(streetType), m_streetName(streetName), m_postcode(postcode), m_city(city)
{}


int Address::getStreetNumber() const
{
    return m_streetNumber;
}


void Address::setStreetNumber(int streetNumber)
{
    m_streetNumber = streetNumber;
}


std::string Address::getStreetName() const
{
    return m_streetName;
}


void Address::setStreetName(const std::string &streetName)
{
    m_streetName = streetName;
}


std::string Address::getStreetType() const
{
    return m_streetType;
}


void Address::setStreetType(const std::string &streetType)
{
    m_streetType = streetType;
}

std::string Address::getPostcode() const
{
    return m_postcode;
}

void Address::setPostcode(const std::string &postcode)
{
    m_postcode = postcode;
}

std::string Address::getCity() const
{
    return m_city;
}

void Address::setCity(const std::string &value)
{
    m_city = value;
}



