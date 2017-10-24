#ifndef TRIP_H
#define TRIP_H
#include <QTime>

class Trip
{
public:
    Trip();
    Trip(const QTime &arrivalTime);


    QTime getArrivalTime() const;
    void setArrivalTime(const QTime &arrivalTime);

private:

    QTime m_arrivalTime;

};

#endif // TRIP_H
