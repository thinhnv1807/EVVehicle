#include "clockev.h"

ClockEV::ClockEV(QObject *parent) : QObject(parent)
{
        m_hourClock = "--";
}

void ClockEV::setHourClock(QString data)
{
   if(m_hourClock != data){
       m_hourClock = data;
   }
   emit hourClockChanged();
}

QString ClockEV::getHourClock()
{
    return m_hourClock;
}

void ClockEV::setTimeClock()
{
    QTime timeClock = QTime::currentTime();
    setHourClock(timeClock.toString("hh:mm"));
}
