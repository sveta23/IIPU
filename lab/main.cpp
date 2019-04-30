#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "fileio.h"
#include <QtQml>
#include <iostream>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<FileIO,1>("FileIO",1,0,"FileIO");
    system ("dmesg > dmesg.txt");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}

