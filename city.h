#ifndef CITY_H
#define CITY_H
#include <string>
#include <vector>

#include <postcode.h>



class City
{
public:
    City();
    City(const std::string &name);


    std::string getName() const;
    void setName(const std::string &name);

private:

    std::string m_name;


};

#endif // CITY_H
