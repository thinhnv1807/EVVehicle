#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTimer>
#include <QQmlContext>
#include "clockev.h"
#include "inforsystem.h"
#include <QTime>

int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext *context = engine.rootContext();
    clockEV clockEV;
    InforSystem inforEV;
    context->setContextProperty("myclockEV", &clockEV);
    context->setContextProperty("myInforEV", &inforEV);


    engine.load("qrc:/main.qml");

    return app.exec();
}
