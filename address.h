#ifndef ADDRESS_H
#define ADDRESS_H

#include <QObject>
#include <QString>
#include <QDebug>

class Address : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString streetNumber READ getStreetNumber WRITE setStreetNumber NOTIFY streetNumberChanged)
    Q_PROPERTY(QString streetType READ getStreetType WRITE setStreetType NOTIFY streetTypeChanged)
    Q_PROPERTY(QString streetName READ getStreetName WRITE setStreetName NOTIFY streetNameChanged)
    Q_PROPERTY(QString postcode READ getPostcode WRITE setPostcode NOTIFY postcodeChanged)
    Q_PROPERTY(QString city READ getCity WRITE setCity NOTIFY cityChanged)

    QString m_streetNumber;
    QString m_streetType;
    QString m_streetName;
    QString m_postcode;
    QString m_city;

public:
    explicit Address(QObject *parent = nullptr);

    Address( const QString &streetNumber, const QString &streetType,
             const QString &streetName, const QString &postCode,
             const QString &city ,QObject *parent = 0 );

    Address* createCopy();

    //    Address(const Address &addressLambda);


    QString getStreetNumber() const
    {
        return m_streetNumber;
    }

    QString getStreetType() const
    {
        return m_streetType;
    }

    QString getStreetName() const
    {
        return m_streetName;
    }

    QString getPostcode() const
    {
        return m_postcode;
    }

    QString getCity() const
    {
        return m_city;
    }

signals:

    void streetNumberChanged(QString streetNumber);

    void streetTypeChanged(QString streetType);

    void streetNameChanged(QString streetName);

    void postcodeChanged(QString postcode);

    void cityChanged(QString city);

public slots:

    void setStreetNumber(QString streetNumber)
    {
        if (m_streetNumber == streetNumber)
            return;

        m_streetNumber = streetNumber;
        emit streetNumberChanged(m_streetNumber);
    }

    void setStreetType(QString streetType)
    {
        if (m_streetType == streetType)
            return;

        m_streetType = streetType;
        emit streetTypeChanged(m_streetType);
    }
    void setStreetName(QString streetName)
    {
        qDebug() << "changed streetname";

        if (m_streetName == streetName)
            return;

        m_streetName = streetName;
        emit streetNameChanged(m_streetName);
    }
    void setPostcode(QString postcode)
    {
        if (m_postcode == postcode)
            return;

        m_postcode = postcode;
        emit postcodeChanged(m_postcode);
    }
    void setCity(QString city)
    {
        if (m_city == city)
            return;

        m_city = city;
        emit cityChanged(m_city);
    }
};

#endif // ADDRESS_H
