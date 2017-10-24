#include "trip.h"
#include <iostream>

using namespace std;

Trip::Trip()
{}

Trip::Trip(const QTime &arrivalTime): m_arrivalTime(arrivalTime)
{}

QTime Trip::getArrivalTime() const
{
    return m_arrivalTime;
}

void Trip::setArrivalTime(const QTime &arrivalTime)
{
    m_arrivalTime = arrivalTime;
}
