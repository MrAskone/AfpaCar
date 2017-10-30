#ifndef USER_H
#define USER_H

#include <QObject>
#include <QString>
#include "profile.h"

class User : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString username READ getUsername WRITE setUsername NOTIFY usernameChanged)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged)
    Q_PROPERTY(Profile* profile READ getProfile WRITE setProfile NOTIFY profileChanged)

    QString m_username;
    QString m_password;
    Profile* m_profile;

public:
    explicit User(QObject *parent = nullptr);

    User::User(const QString &username, const QString &password, Profile* profile, QObject *parent = 0);

    User* createCopy();


    QString getUsername() const
    {
        return m_username;
    }

    QString getPassword() const
    {
        return m_password;
    }

    Profile* getProfile() const
    {
        return m_profile;
    }

signals:

    void usernameChanged(QString username);

    void passwordChanged(QString password);

    void profileChanged(Profile* profile);

public slots:
    void setUsername(QString username)
    {
        if (m_username == username)
            return;

        m_username = username;
        emit usernameChanged(m_username);
    }
    void setPassword(QString password)
    {
        if (m_password == password)
            return;

        m_password = password;
        emit passwordChanged(m_password);
    }
    void setProfile(Profile* profile)
    {
        if (m_profile == profile)
            return;

        m_profile = profile;
        emit profileChanged(m_profile);
    }
};

#endif // USER_H
