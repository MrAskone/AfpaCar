#include "address.h"
#include <iostream>

using namespace std;

Address::Address(QObject *parent) : QObject(parent)
{
    cout << "Address()" << endl;
}

Address::Address(const QString &streetNumber, const QString &streetType,
                 const QString &streetName, const QString &postCode,
                 const QString &city, QObject *parent):
                m_streetNumber(streetNumber), m_streetType(streetType),
                m_streetName(streetName), m_postcode(postCode),
                m_city(city), QObject(parent)
{
    cout << "Address() + arg" << endl;
}

Address* Address::createCopy()
{
    Address* newAddress = new Address();
    newAddress->setStreetNumber(  getStreetNumber() );
    newAddress->setStreetType( getStreetType() );
    newAddress->setStreetName( getStreetName() );
    newAddress->setPostcode( getPostcode() );
    newAddress->setCity( getCity() );
    return newAddress;
}



//Address::Address(const Address &addressLambda)
//{
//    m_streetNumber = addressLambda.m_streetNumber;
//    m_streetType = addressLambda.m_streetType;
//    m_streetName = addressLambda.m_streetName;
//    m_postcode = addressLambda.m_postcode;
//    m_city = addressLambda.m_city;
//}
