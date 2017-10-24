#ifndef ADDRESS_H
#define ADDRESS_H
#include <string>
#include <vector>

#include "user.h"
#include "postcode.h"



class Address
{
public:
    Address();

    Address(const int &streetNumber, const std::string &streetType, const std::string &streetName, PostCode* postCode);

    int getStreetNumber() const;
    void setStreetNumber(int streetNumber);

    std::string getStreetName() const;
    void setStreetName(const std::string &streetName);

    std::string getStreetType() const;
    void setStreetType(const std::string &streetType);


private:

    int m_streetNumber;
    std::string m_streetType;
    std::string m_streetName;
    PostCode* m_postcode;


};

#endif // ADDRESS_H
