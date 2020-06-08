#include "clockev.h"

ClockEV::ClockEV(QObject *parent) : QObject(parent)
{
    setTimeClock();
    setTimer();
}

void ClockEV::setClock(QString data)
{
    if(m_Clock != data){
        m_Clock = data;
    }
    emit ClockChanged();
}

QString ClockEV::getClock() const
{
    return m_Clock;
}

void ClockEV::setTimeClock()
{
    timeClock = QTime::currentTime();
    setClock(timeClock.toString("hh:mm"));
}

void ClockEV::setTimer()
{
    timer1s.setInterval(1000);
    QObject::connect(&timer1s, SIGNAL(timeout()), this, SLOT(setTimeClock()) );
    timer1s.start();
}



