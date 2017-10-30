#ifndef PROFILE_H
#define PROFILE_H

#include <QObject>
#include <QString>
#include <QDate>

#include "address.h"

class Profile : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString firstName READ getFirstName WRITE setFirstName NOTIFY firstNameChanged)
    Q_PROPERTY(QString gender READ getGender WRITE setGender NOTIFY genderChanged)
    Q_PROPERTY(QString phoneNumber READ getPhoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged)
    Q_PROPERTY(QString dob READ getDob WRITE setDob NOTIFY dobChanged)
    Q_PROPERTY(Address* address READ getAddress WRITE setAddress NOTIFY addressChanged)


    QString m_name;
    QString m_firstName;
    QString m_gender;
    QString m_phoneNumber;
    QString m_email;
    QString m_dob;
    Address* m_myAddress;


public:
    explicit Profile(QObject *parent = nullptr);

    Profile(const QString &name, const QString &firstName, const QString &gender,
            const QString &dob, const QString &email, const QString &phoneNumber,
             Address* address, QObject *parent = 0);

    Profile* createCopy();

    std::vector<Address*> m_addressList;


    QString getName() const
    {
        return m_name;
    }

    QString getFirstName() const
    {
        return m_firstName;
    }

    QString getGender() const
    {
        return m_gender;
    }

    QString getDob() const
    {
        return m_dob;
    }

    QString getEmail() const
    {
        return m_email;
    }

    QString getPhoneNumber() const
    {
        return m_phoneNumber;
    }

    Address* getAddress() const
    {
        return m_myAddress;
    }

signals:

    void nameChanged(QString name);

    void firstNameChanged(QString firstName);

    void genderChanged(QString gender);

    void dobChanged(QString dob);

    void emailChanged(QString email);

    void phoneNumberChanged(QString phoneNumber);

    void addressChanged(Address* address);


public slots:
    void setName(QString name)
    {
        if (m_name == name)
            return;

        m_name = name;
        emit nameChanged(m_name);
    }

    void setFirstName(QString firstName)
    {
        if (m_firstName == firstName)
            return;

        m_firstName = firstName;
        emit firstNameChanged(m_firstName);
    }

    void setGender(QString gender)
    {
        if (m_gender == gender)
            return;

        m_gender = gender;
        emit genderChanged(m_gender);
    }

    void setDob(QString dob)
    {
        if (m_dob == dob)
            return;

        m_dob = dob;
        emit dobChanged(m_dob);
    }

    void setEmail(QString email)
    {
        if (m_email == email)
            return;

        m_email = email;
        emit emailChanged(m_email);
    }

    void setPhoneNumber(QString phoneNumber)
    {
        if (m_phoneNumber == phoneNumber)
            return;

        m_phoneNumber = phoneNumber;
        emit phoneNumberChanged(m_phoneNumber);
    }

    void setAddress(Address* myAddress)
    {
        if (m_myAddress == myAddress)
            return;

        m_myAddress = myAddress;
        emit addressChanged(m_myAddress);
    }
};

#endif // PROFILE_H
