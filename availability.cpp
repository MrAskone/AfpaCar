#include "availability.h"
#include <iostream>

using namespace std;

Availability::Availability(QObject *parent) : QObject(parent)
{
    cout << "Availability()" << endl;
}

Availability::Availability(const int &weekNumber, const QString &weekDay, const QTime &time, QObject *parent):
                           m_weekNumber(weekNumber), m_weekDay(weekDay), m_time(time), QObject(parent)
{
    cout << "Availability() + arg" << endl;
}

Availability *Availability::createCopy()
{
    Availability* newAvailability = new Availability();
    newAvailability->setWeekNumber( getWeekNumber() );
    newAvailability->setWeekDay( getWeekDay() );
    newAvailability->setTime( getTime() );
    return newAvailability;
}
