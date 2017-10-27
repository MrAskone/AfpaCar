#ifndef ADDRESS_H
#define ADDRESS_H
#include <string>
#include <vector>

#include "user.h"



class Address
{
public:
    Address();

    Address(const int &streetNumber, const std::string &streetType, const std::string &streetName, const std::string &postcode, const std::string &city);

    int getStreetNumber() const;
    void setStreetNumber(int streetNumber);

    std::string getStreetName() const;
    void setStreetName(const std::string &streetName);

    std::string getStreetType() const;
    void setStreetType(const std::string &streetType);

    std::string getPostcode() const;
    void setPostcode(const std::string &postcode);

    std::string getCity() const;
    void setCity(const std::string &value);

private:

    int m_streetNumber;
    std::string m_streetType;
    std::string m_streetName;
    std::string m_postcode;
    std::string m_city;


};

#endif // ADDRESS_H
