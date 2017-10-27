#ifndef ADDRESS_H
#define ADDRESS_H

#include <QObject>

class Address : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int streetNumber READ getStreetNumber WRITE setStreetNumber NOTIFY streetNumberChanged)
    Q_PROPERTY(std::string streetType READ getStreetType WRITE setStreetType NOTIFY streetTypeChanged)
    Q_PROPERTY(std::string streetName READ getStreetName WRITE setStreetName NOTIFY streetNameChanged)
    Q_PROPERTY(std::string postcode READ getPostcode WRITE setPostcode NOTIFY postcodeChanged)
    Q_PROPERTY(std::string city READ getCity WRITE setCity NOTIFY cityChanged)

    int m_streetNumber;
    std::string m_streetType;
    std::string m_streetName;
    std::string m_postcode;
    std::string m_city;

public:
    explicit Address(QObject *parent = nullptr);

    Address(const Address &addressLambda);


    int getStreetNumber() const
    {
        return m_streetNumber;
    }

    std::string getStreetType() const
    {
        return m_streetType;
    }

    std::string getStreetName() const
    {
        return m_streetName;
    }

    std::string getPostcode() const
    {
        return m_postcode;
    }

    std::string getCity() const
    {
        return m_city;
    }

signals:

    void streetNumberChanged(int streetNumber);

    void streetTypeChanged(std::string streetType);

    void streetNameChanged(std::string streetName);

    void postcodeChanged(std::string postcode);

    void cityChanged(std::string city);

public slots:

    void setStreetNumber(int streetNumber)
    {
        if (m_streetNumber == streetNumber)
            return;

        m_streetNumber = streetNumber;
        emit streetNumberChanged(m_streetNumber);
    }

    void setStreetType(std::string streetType)
    {
        if (m_streetType == streetType)
            return;

        m_streetType = streetType;
        emit streetTypeChanged(m_streetType);
    }
    void setStreetName(std::string streetName)
    {
        if (m_streetName == streetName)
            return;

        m_streetName = streetName;
        emit streetNameChanged(m_streetName);
    }
    void setPostcode(std::string postcode)
    {
        if (m_postcode == postcode)
            return;

        m_postcode = postcode;
        emit postcodeChanged(m_postcode);
    }
    void setCity(std::string city)
    {
        if (m_city == city)
            return;

        m_city = city;
        emit cityChanged(m_city);
    }
};

#endif // ADDRESS_H
