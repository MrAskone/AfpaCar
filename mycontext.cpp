#include "mycontext.h"
#include <QDebug>

MyContext::MyContext(QObject *parent) : QObject(parent), m_myContext(nullptr)
{
    m_address = new Address(this);
    m_availability = new Availability(this);
    m_profile = new Profile(this);
    m_trip = new Trip(this);
    m_user = new User(this);
    m_popUpMessage = "";
//    m_listOfUsers


}

void MyContext::setMyContext(QQmlContext *myContext)
{
    m_myContext = myContext;
    m_myContext->setContextProperty("MyContext", this);
}


// Fonction to update the QML
void MyContext::loadMyContext()
{
    // Send the data to Qml
    if( m_myContext != nullptr )
    {
        m_myContext->setContextProperty("modeleProfiles", QVariant::fromValue( m_listOfUsers ));
//        m_myContext->setContextProperty("modeleAddresses", QVariant::fromValue( m_listOfAddresses ));
//        m_myContext->setContextProperty("modeleAvailabilities", QVariant::fromValue( m_listOfAvailabilities ));
//        m_myContext->setContextProperty("modeleProfiles", QVariant::fromValue( m_listOfProfiles ));
//        m_myContext->setContextProperty("modeleTrips", QVariant::fromValue( m_listOfTrips ));
//        m_myContext->setContextProperty("modeleUsers", QVariant::fromValue( m_listOfUsers ));
    }

    else
    {
        qDebug() << "Context has not been instantiated";
    }
}

void MyContext::sendActionToCpp(QString nomAction, QString parameter, QString parameter2)
{
    qDebug() << "Calling SATC: nomAction = " << nomAction << endl;

    if (nomAction == "Submit")
    {

        Address* newAddress = m_address->createCopy();
        m_profile->setAddress(newAddress);

        Profile* newProfile = m_profile->createCopy();
        m_user->setProfile(newProfile);

        User* newUser = m_user->createCopy();
        m_listOfUsers.push_back(newUser);

        qDebug() << "User added";
    }

    if (nomAction == "Log In")
    {
        for (QObject* userObject : m_listOfUsers)
        {
            User* user = qobject_cast<User*> (userObject);
            if (user->getUsername() == parameter)
            {
                if (user->getPassword() == parameter2)
                {
                    setPopUpMessage("Access Granted");
                }
                else
                {
                    setPopUpMessage("Access Denied:\nThe Username or Password is incorrect.");
                    return;
                }
            }

            qDebug() << "Logged in";
        }
    }

}


