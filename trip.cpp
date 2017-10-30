#include "trip.h"
#include <iostream>

using namespace std;

Trip::Trip(QObject *parent) : QObject(parent)
{
        cout << "Trip()" << endl;
}


Trip::Trip(const QTime &arrivalTime, QObject *parent):
    m_arrivalTime(arrivalTime), QObject(parent)
{

}

Trip *Trip::createCopy()
{
    Trip* newTrip = new Trip();
    newTrip->setArrivalTime( getArrivalTime());
    return newTrip;
}
