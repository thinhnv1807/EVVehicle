#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDir>
#include <QList>
#include <QDebug>
#include <QFileInfo>

#include "clockev.h"
#include "inforsystem.h"
#include "themeclass.h"
#include "mediaev.h"

#define DIR_MUSIC "/storage/emulated/0/Music/"


int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext *context = engine.rootContext();

    clockEV clockEV;
    InforSystem inforEV;
    Themeclass theme;
    MediaEV listMuicEV;
    context->setContextProperty("myclockEV" , &clockEV);
    context->setContextProperty("myInforEV" , &inforEV);
    context->setContextProperty("themeEV"   , &theme);
    context->setContextProperty("MusicList" , QVariant::fromValue(listMuicEV.getListMusic()));

    /////////////////////////////////////////////////////////////////////////
    engine.load("qrc:/main.qml");

    return app.exec();
}


