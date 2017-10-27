#ifndef AVAILABILITY_H
#define AVAILABILITY_H

#include <QObject>
#include <QTime>

class Availability : public QObject
{
    Q_OBJECT
    Q_PROPERTY(std::string weekDay READ getWeekDay WRITE setWeekDay NOTIFY weekDayChanged)
    Q_PROPERTY(int weekNumber READ getWeekNumber WRITE setWeekNumber NOTIFY weekNumberChanged)
    Q_PROPERTY(QTime time READ getTime WRITE setTime NOTIFY timeChanged)

    std::string m_weekDay;
    int m_weekNumber;
    QTime m_time;

public:
    explicit Availability(QObject *parent = nullptr);



    std::string getWeekDay() const
    {
        return m_weekDay;
    }

    int getWeekNumber() const
    {
        return m_weekNumber;
    }

    QTime getTime() const
    {
        return m_time;
    }

signals:


    void weekDayChanged(std::string weekDay);

    void weekNumberChanged(int weekNumber);

    void timeChanged(QTime time);


public slots:


    void setWeekDay(std::string weekDay)
    {
        if (m_weekDay == weekDay)
            return;

        m_weekDay = weekDay;
        emit weekDayChanged(m_weekDay);
    }

    void setWeekNumber(int weekNumber)
    {
        if (m_weekNumber == weekNumber)
            return;

        m_weekNumber = weekNumber;
        emit weekNumberChanged(m_weekNumber);
    }

    void setTime(QTime time)
    {
        if (m_time == time)
            return;

        m_time = time;
        emit timeChanged(m_time);
    }

};

#endif // AVAILABILITY_H
