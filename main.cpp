#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QtQml>

#include "controller/systemcontroller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterType< SystemController >("CoffeeDispenser", 1, 0, "SystemController" );
    qmlRegisterSingletonType( QUrl("qrc:/app/MyStyle.qml"), "coffee.style", 1, 0, "MyStyle" );

    QString path = QDir::currentPath();
    const QUrl url("qrc:/app/main.qml");
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
