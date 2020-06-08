#include "clockev.h"

clockEV::clockEV(QObject *parent) : QObject(parent)
{
    setTimeclock();
    setTimer();
}

void clockEV::setClock(QString data)
{
    if(m_clock != data){
        m_clock = data;
    }
    emit clockChanged();
}

QString clockEV::getClock() const
{
    return m_clock;
}

void clockEV::setTimeclock()
{
    timeclock = QTime::currentTime();
    setClock(timeclock.toString("hh:mm"));
    qDebug() << "Clock " << timeclock.toString("hh:mm:ss");
}

void clockEV::setTimer()
{
    timer1s.setInterval(1000);
    QObject::connect(&timer1s, SIGNAL(timeout()), this, SLOT(setTimeclock()) );
    timer1s.start();
}



