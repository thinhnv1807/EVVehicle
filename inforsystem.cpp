#include "inforsystem.h"

InforSystem::InforSystem(QObject *parent) : QObject(parent)
{
    temp1 = 30;
    setTimer();
}

void InforSystem::setSpeed(int data)
{
    if(data != m_speed){
        m_speed = data;
    }
    emit speedChanged();
}

int InforSystem::getBattery()
{
    return m_battery;
}

void InforSystem::setBattery(int data)
{
    if(data != m_battery){
        m_battery = data;
    }
    emit batteryChanged();
}

bool InforSystem::getIsMediaPlay()
{
    return  m_isMediaPlay;
}
void InforSystem::setIsMediaPlay(bool data)
{
    if(data != m_isMediaPlay){
        m_isMediaPlay = data;
        emit isMediaPlayChanged();
    }
}



QString InforSystem::getPathSytemMusic()
{

    return  m_pathSytemMusic;
}


void InforSystem::setBatteryValue()
{

    if(temp1 > 5){
       setBattery(temp1);
       temp1 -= 1;
    }else{
        temp1 = 100;
        setBattery(temp1);
    }
    qDebug() << "battery: " <<m_battery;
}

void InforSystem::setSpeedValue()
{

    if(temp <= 120){
       setSpeed(temp);
       temp += 1;
    }else{
        temp = 20;
        setSpeed(temp);
    }
    qDebug() << "speed: " <<m_speed;
}

int InforSystem::getSpeed()
{
    return  m_speed;
}

void InforSystem::setTimer()
{
    timerSpeed.setInterval(3000);
    QObject::connect(&timerSpeed, SIGNAL(timeout()), this , SLOT(setSpeedValue()));
    timerSpeed.start();


    timerBattery.setInterval(2000);
    QObject::connect(&timerBattery, SIGNAL(timeout()), this , SLOT(setBatteryValue()));
    timerBattery.start();
}
