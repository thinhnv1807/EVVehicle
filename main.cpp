#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTimer>
#include <QQmlContext>
#include "clockev.h"
#include "inforsystem.h"
#include "themeclass.h"
#include <QTime>
#include <QDir>
#include <QList>
#include <QDebug>
#include <QtMultimedia/QAudioOutput>
#include <QFileInfo>


int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext *context = engine.rootContext();
    clockEV clockEV;
    InforSystem inforEV;
    Themeclass theme;
    context->setContextProperty("myclockEV" , &clockEV);
    context->setContextProperty("myInforEV" , &inforEV);
    context->setContextProperty("themeEV", &theme);
    /////////////////////////////////demo///////////////////////////////////////
//    QStringList dataList;
//    QDir dir(inforEV.getPathSytemMusic());
//    dir.setFilter(QDir::Files);
//    QFileInfoList list = dir.entryInfoList();
//    for (int i = 0; i < list.size(); ++i) {
//        QFileInfo fileInfo = list.at(i);
//        dataList << fileInfo.filePath();
//    }
//    context->setContextProperty("myModel", QVariant::fromValue(dataList));

    /////////////////////////////////////////////////////////////////////////
    engine.load("qrc:/main.qml");

    return app.exec();
}


