#ifndef CLOCKEV_H
#define CLOCKEV_H

#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <QString>
class ClockEV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString hourClock READ getHourClock WRITE setHourClock NOTIFY hourClockChanged)


private:
    QString m_hourClock;
public:
    explicit ClockEV(QObject *parent = nullptr);
    void setHourClock(QString data);
    QString getHourClock();
    void setTimeClock();


signals:
    void hourClockChanged();
};

#endif // CLOCKEV_H
