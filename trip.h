#ifndef TRIP_H
#define TRIP_H

#include <QObject>
#include <QString>
#include <QTime>

class Trip : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QTime arrivalTime READ getArrivalTime WRITE setArrivalTime NOTIFY arrivalTimeChanged)

    QTime m_arrivalTime;

public:
    explicit Trip(QObject *parent = nullptr);

    Trip(const QTime &arrivalTime, QObject *parent = 0);

    Trip* createCopy();

    QTime getArrivalTime() const
    {
        return m_arrivalTime;
    }

signals:

    void arrivalTimeChanged(QTime arrivalTime);

public slots:
void setArrivalTime(QTime arrivalTime)
{
    if (m_arrivalTime == arrivalTime)
        return;

    m_arrivalTime = arrivalTime;
    emit arrivalTimeChanged(m_arrivalTime);
}
};

#endif // TRIP_H
