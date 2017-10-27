#include "availability.h"
#include <iostream>

using namespace std;

Availability::Availability()
{}

Availability::Availability(const string &weekday, const int &weeknumber, const QTime &time): m_weekday(weekday), m_weeknumber(weeknumber), m_time(time)
{}

std::string Availability::getWeekday() const
{
    return m_weekday;
}

void Availability::setWeekday(const std::string &weekday)
{
    m_weekday = weekday;
}

int Availability::getWeeknumber() const
{
    return m_weeknumber;
}

void Availability::setWeeknumber(int weeknumber)
{
    m_weeknumber = weeknumber;
}

QTime Availability::getTime() const
{
    return m_time;
}

void Availability::setTime(const QTime &time)
{
    m_time = time;
}
