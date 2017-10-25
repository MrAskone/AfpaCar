#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "user.h"
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{


    Profile antoine;

    User kossa ("kossa", "mangesushi");

    kossa.setProfile(antoine);

    kossa.getProfile().display();
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}
