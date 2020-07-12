#ifndef INFORSYSTEM_H
#define INFORSYSTEM_H

#include <QObject>
#include <QTimer>
#include <QDebug>
#include <QList>
#include <QStandardPaths>
#include <QtMultimedia/QAudioOutput>
#include <QFile>

class InforSystem : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int Speed READ getSpeed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int Battery READ getBattery WRITE setBattery NOTIFY batteryChanged)
    Q_PROPERTY(QString PathSytemMusic READ getPathSytemMusic)

    Q_PROPERTY(bool isMediaPlay READ getIsMediaPlay WRITE setIsMediaPlay NOTIFY isMediaPlayChanged)


public:
    explicit InforSystem(QObject *parent = nullptr);

    int getSpeed();
    void setSpeed(int data);

    int getBattery();
    void setBattery(int data);


    bool getIsMediaPlay();
    void setIsMediaPlay(bool data);

    QString getPathSytemMusic();



private:
    bool m_isMediaPlay = false;
    int m_speed = 0;
    int  m_battery = 0;
    QTimer timerSpeed;
    QTimer timerBattery;
    int temp = 20; //fake speed
    int temp1; // fake battery
    QString m_pathSytemMusic = QStandardPaths::locate(QStandardPaths::MusicLocation, QString(), QStandardPaths::LocateDirectory);
signals:
    void speedChanged();
    void batteryChanged();
    void isMediaPlayChanged();


public slots:
    void setTimer(); // fake
    void setSpeedValue(); // fake
    void setBatteryValue(); //fake





};

#endif // INFORSYSTEM_H
