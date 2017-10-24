#include "availability.h"
#include <iostream>

using namespace std;

Availability::Availability()
{}

Availability::Availability(const string &weekday, const QTime &time): m_weekday(weekday), m_time(time)
{}

std::string Availability::getWeekday() const
{
    return m_weekday;
}

void Availability::setWeekday(const std::string &weekday)
{
    m_weekday = weekday;
}

QTime Availability::getTime() const
{
    return m_time;
}

void Availability::setTime(const QTime &time)
{
    m_time = time;
}
