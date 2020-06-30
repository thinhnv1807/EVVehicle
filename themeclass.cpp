#include "themeclass.h"

Themeclass::Themeclass(QObject *parent) : QObject(parent)
{

}

QString Themeclass::screenEV() const
{
    return m_screenEV;
}

void Themeclass::setScreenEV(QString data)
{
    if(m_screenEV != data){
        m_screenEV = data;
    }
    emit screenEVChanged();
}
