#ifndef MYCONTEXT_H
#define MYCONTEXT_H

#include <QObject>
#include <QQmlContext>
#include <QDebug>
#include <QStringList>
#include <QTime>
#include <QDate>

#include "availability.h"
#include "trip.h"
#include "user.h"



class MyContext : public QObject
{
    Q_OBJECT

    Q_PROPERTY(Address* address READ getAddress WRITE setAddress NOTIFY addressChanged)
    Q_PROPERTY(Availability* availability READ getAvailability WRITE setAvailability NOTIFY availabilityChanged)
    Q_PROPERTY(Profile* profile READ getProfile WRITE setProfile NOTIFY profileChanged)
    Q_PROPERTY(Trip* trip READ getTrip WRITE setTrip NOTIFY tripChanged)
    Q_PROPERTY(User* user READ getUser WRITE setUser NOTIFY userChanged)
    Q_PROPERTY(QList<QObject*> listOfUsers READ getListOfUsers WRITE setListOfUsers NOTIFY listOfUsersChanged)

    Q_PROPERTY(QString popUpMessage READ getPopUpMessage WRITE setPopUpMessage NOTIFY popUpMessageChanged)



public:

    explicit MyContext(QObject *parent = nullptr);

    void setMyContext(QQmlContext *myContext);
    void loadMyContext();
    void updateMyContext(QString modelName);

    Q_INVOKABLE void sendActionToCpp (QString nomAction, QString parameter = QString (""), QString parameter2 = QString ("") );


    Address* getAddress() const
    {
        return m_address;
    }

    Availability* getAvailability() const
    {
        return m_availability;
    }

    Profile* getProfile() const
    {
        return m_profile;
    }

    Trip* getTrip() const
    {
        return m_trip;
    }

    User* getUser() const
    {
        return m_user;
    }

    QString getPopUpMessage() const
    {
        return m_popUpMessage;
    }

    QList<QObject*> getListOfUsers() const
    {
        return m_listOfUsers;
    }

signals:


    void addressChanged(Address* address);
    void availabilityChanged(Availability* availability);
    void profileChanged(Profile* profile);
    void tripChanged(Trip* trip);
    void userChanged(User* user);
    void popUpMessageChanged(QString popUpMessage);

    void listOfUsersChanged(QList<QObject*> listOfUsers);

public slots:


void setAddress(Address* address)
{
    if (m_address == address)
        return;

    m_address = address;
    emit addressChanged(m_address);
}

void setAvailability(Availability* availability)
{
    if (m_availability == availability)
        return;

    m_availability = availability;
    emit availabilityChanged(m_availability);
}

void setProfile(Profile* profile)
{
    if (m_profile == profile)
        return;

    m_profile = profile;
    emit profileChanged(m_profile);
}

void setTrip(Trip* trip)
{
    if (m_trip == trip)
        return;

    m_trip = trip;
    emit tripChanged(m_trip);
}

void setUser(User* user)
{
    if (m_user == user)
        return;

    m_user = user;
    emit userChanged(m_user);
}

void setPopUpMessage(QString popUpMessage)
{
    if (m_popUpMessage == popUpMessage)
        return;

    m_popUpMessage = popUpMessage;
    emit popUpMessageChanged(m_popUpMessage);
}

void setListOfUsers(QList<QObject*> listOfUsers)
{
    if (m_listOfUsers == listOfUsers)
        return;

    m_listOfUsers = listOfUsers;
    emit listOfUsersChanged(m_listOfUsers);
}

private:

    QQmlContext* m_myContext;

    Address* m_address;
    Availability* m_availability;
    Profile* m_profile;
    Trip* m_trip;
    User* m_user;
    QString m_popUpMessage;

    QList<QObject*> m_listOfUsers;
//    QList<QObject*> m_listOfAddresses;
//    QList<QObject*> m_listOfAvailabilities;
//    QList<QObject*> m_listOfProfiles;
//    QList<QObject*> m_listOfTrips;
//    QList<QObject*> m_listOfUsers;


};

#endif // MYCONTEXT_H
