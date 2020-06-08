#include "clockev.h"

ClockEV::ClockEV(QObject *parent) : QObject(parent)
{

    setTimeClock();
}

void ClockEV::setHourClock(QString data)
{
   if(m_hourClock != data){
       m_hourClock = data;
   }
   emit hourClockChanged();
}

QString ClockEV::getHourClock() const
{
    return m_hourClock;
}

void ClockEV::setTimeClock()
{


    setTimeH(timeClock.hour());

}

int ClockEV::getTimeH() const
{
    return m_TimeH;
}

void ClockEV::setTimeH(int data)
{
    if(data != m_TimeH){
        m_TimeH = data;
    }
    emit timeHChanged();
}

