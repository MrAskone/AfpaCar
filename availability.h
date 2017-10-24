#ifndef AVAILABILITY_H
#define AVAILABILITY_H
#include <string>
#include <QTime>


class Availability
{
public:
    Availability();
    Availability(const std::string &weekday, const QTime &time);


    std::string getWeekday() const;
    void setWeekday(const std::string &weekday);

    QTime getTime() const;
    void setTime(const QTime &time);

private:

    std::string m_weekday;
    QTime m_time;

};

#endif // AVAILABILITY_H
