#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTimer>
#include <QQmlContext>
#include "clockev.h"
#include <QTime>

int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QQmlContext *context = engine.rootContext();
    ClockEV clockEV;
    context->setContextProperty("myClockEV", &clockEV);

    const QUrl url(QStringLiteral("qrc:/main.qml"));

    engine.load(url);

    return app.exec();
}
