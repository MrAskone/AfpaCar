#include "address.h"
#include <iostream>

using namespace std;


Address::Address()
{}

Address::Address(const int &streetNumber, const string &streetType, const string &streetName, PostCode *postCode):
    m_streetNumber(streetNumber), m_streetType(streetType), m_streetName(streetName), m_postcode(postCode)
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



