#ifndef AVAILABILITY_H
#define AVAILABILITY_H

#include <QObject>
#include <QString>
#include <QTime>

class Availability : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int weekNumber READ getWeekNumber WRITE setWeekNumber NOTIFY weekNumberChanged)
    Q_PROPERTY(QString weekDay READ getWeekDay WRITE setWeekDay NOTIFY weekDayChanged)
    Q_PROPERTY(QTime time READ getTime WRITE setTime NOTIFY timeChanged)

    int m_weekNumber;
    QString m_weekDay;
    QTime m_time;

public:
    explicit Availability(QObject *parent = nullptr);

    Availability (const int &weekNumber, const QString &weekDay, const QTime &time, QObject *parent = 0);

    Availability* createCopy();


    int getWeekNumber() const
    {
        return m_weekNumber;
    }

    QString getWeekDay() const
    {
        return m_weekDay;
    }

    QTime getTime() const
    {
        return m_time;
    }

signals:


    void weekNumberChanged(int weekNumber);

    void weekDayChanged(QString weekDay);

    void timeChanged(QTime time);


public slots:


    void setWeekNumber(int weekNumber)
    {
//        int weekNumber = weekNumberInString.toInt();
        if (m_weekNumber == weekNumber)
            return;

        m_weekNumber = weekNumber;
        emit weekNumberChanged(m_weekNumber);
    }

    void setWeekDay(QString weekDay)
    {
        if (m_weekDay == weekDay)
            return;

        m_weekDay = weekDay;
        emit weekDayChanged(m_weekDay);
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
