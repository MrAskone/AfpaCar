#ifndef POSTCODE_H
#define POSTCODE_H
#include <string>
#include <vector>

#include <city.h>

class City;

class PostCode
{
public:
    PostCode();
    PostCode(const int &postcode, City* city);

    int getPostcode() const;
    void setPostcode(int postcode);

    City *getCity() const;
    void setCity(City *city);

private:

    int m_postcode;
    City* m_city;


};

#endif // POSTCODE_H
