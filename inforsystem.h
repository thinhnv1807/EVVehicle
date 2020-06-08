#ifndef INFORSYSTEM_H
#define INFORSYSTEM_H

#include <QObject>
#include <QTimer>
#include <QDebug>

class InforSystem : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int Speed READ getSpeed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int Battery READ getBattery WRITE setBattery NOTIFY batteryChanged)

public:
    explicit InforSystem(QObject *parent = nullptr);

    int getSpeed();
    void setSpeed(int data);

    int getBattery();
    void setBattery(int data);



private:
    int m_speed = 0;
    int  m_battery = 0;
    QTimer timerSpeed;
    QTimer timerBattery;
    int temp = 20; //fake speed
    int temp1; // fake battery

signals:
    void speedChanged();
    void batteryChanged();

public slots:
    void setTimer(); // fake
    void setSpeedValue(); // fake
    void setBatteryValue(); //fake




};

#endif // INFORSYSTEM_H
