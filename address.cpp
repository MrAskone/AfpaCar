#include "address.h"

Address::Address(QObject *parent) : QObject(parent)
{

}

Address::Address(const Address &addressLambda)
{
    m_streetNumber = addressLambda.m_streetNumber;
    m_streetType = addressLambda.m_streetType;
    m_streetName = addressLambda.m_streetName;
    m_postcode = addressLambda.m_postcode;
    m_city = addressLambda.m_city;
}
