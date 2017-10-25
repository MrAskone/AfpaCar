#ifndef PROFILE_H
#define PROFILE_H
#include <string>
#include <QDate>

class Profile
{
public:
    Profile();
    Profile(const std::string &name, const std::string &firstName, const std::string &phoneNumber, const std::string &email, const QDate &dob);


    void display() const;

    std::string getName() const;
    void setName(const std::string &name);

    std::string getFirstName() const;
    void setFirstName(const std::string &firstName);

    std::string getPhoneNumber() const;
    void setPhoneNumber(std::string phoneNumber);

    std::string getEmail() const;
    void setEmail(const std::string &email);

    QDate getDob() const;
    void setDob(const QDate &dob);

private:

    std::string m_name;
    std::string m_firstName;

    std::string m_phoneNumber;
    std::string m_email;
    QDate m_dob;

};

#endif // PROFILE_H
