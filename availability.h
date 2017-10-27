#ifndef AVAILABILITY_H
#define AVAILABILITY_H
#include <string>
#include <QTime>




class Availability
{
public:
    Availability();
    Availability(const std::string &weekday, const int &weeknumber, const QTime &time);


    std::string getWeekday() const;
    void setWeekday(const std::string &weekday);

    int getWeeknumber() const;
    void setWeeknumber(int weeknumber);

    QTime getTime() const;
    void setTime(const QTime &time);

private:

    std::string m_weekday;
    int m_weeknumber;
    QTime m_time;

};

#endif // AVAILABILITY_H
