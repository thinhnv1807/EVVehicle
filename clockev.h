#ifndef CLOCKEV_H
#define CLOCKEV_H

#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <QString>
#include <QTime>
class ClockEV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString hourClock READ getHourClock WRITE setHourClock NOTIFY hourClockChanged)
    Q_PROPERTY(int timeH READ getTimeH WRITE setTimeH NOTIFY timeHChanged)



private:
    QString m_hourClock;
    int m_TimeH;
    QTime timeClock = QTime::currentTime();
public:
    explicit ClockEV(QObject *parent = nullptr);
    void setHourClock(QString data);
    QString getHourClock()const;
    void setTimeClock();

    int  getTimeH() const;
    void setTimeH(int data);




signals:
    void hourClockChanged();

    void timeHChanged();
};

#endif // CLOCKEV_H
