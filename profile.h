#ifndef PROFILE_H
#define PROFILE_H

#include <QObject>
#include <QDate>

#include "address.h"

class Profile : public QObject
{
    Q_OBJECT

    Q_PROPERTY(std::string name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(std::string firstName READ getFirstName WRITE setFirstName NOTIFY firstNameChanged)
    Q_PROPERTY(std::string phoneNumber READ phoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged)
    Q_PROPERTY(std::string email READ getEmail WRITE setEmail NOTIFY emailChanged)
    Q_PROPERTY(QDate dob READ getDob WRITE setDob NOTIFY dobChanged)
    Q_PROPERTY(Address* myAddress READ getMyAddress WRITE setMyAddress NOTIFY myAddressChanged)


    std::string m_name;

    std::string m_firstName;

    std::string m_phoneNumber;

    std::string m_email;

    QDate m_dob;

    Address* m_myAddress;

public:
    explicit Profile(QObject *parent = nullptr);

    Profile(const std::string &name, const std::string &firstName, const std::string &phoneNumber, const std::string &email, const QDate &dob,  Address* myAddress);


    std::vector<Address*> m_addressList;


    std::string getName() const
    {
        return m_name;
    }

    std::string getFirstName() const
    {
        return m_firstName;
    }

    std::string phoneNumber() const
    {
        return m_phoneNumber;
    }

    std::string getEmail() const
    {
        return m_email;
    }

    QDate getDob() const
    {
        return m_dob;
    }

    Address* getMyAddress() const
    {
        return m_myAddress;
    }

signals:

    void nameChanged(std::string name);

    void firstNameChanged(std::string firstName);

    void phoneNumberChanged(std::string phoneNumber);

    void emailChanged(std::string email);

    void dobChanged(QDate dob);

    void myAddressChanged(Address* myAddress);

public slots:
    void setName(std::string name)
    {
        if (m_name == name)
            return;

        m_name = name;
        emit nameChanged(m_name);
    }
    void setFirstName(std::string firstName)
    {
        if (m_firstName == firstName)
            return;

        m_firstName = firstName;
        emit firstNameChanged(m_firstName);
    }
    void setPhoneNumber(std::string phoneNumber)
    {
        if (m_phoneNumber == phoneNumber)
            return;

        m_phoneNumber = phoneNumber;
        emit phoneNumberChanged(m_phoneNumber);
    }
    void setEmail(std::string email)
    {
        if (m_email == email)
            return;

        m_email = email;
        emit emailChanged(m_email);
    }
    void setDob(QDate dob)
    {
        if (m_dob == dob)
            return;

        m_dob = dob;
        emit dobChanged(m_dob);
    }
    void setMyAddress(Address* myAddress)
    {
        if (m_myAddress == myAddress)
            return;

        m_myAddress = myAddress;
        emit myAddressChanged(m_myAddress);
    }
};

#endif // PROFILE_H
