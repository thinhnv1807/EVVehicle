#ifndef CLOCKEV_H
#define CLOCKEV_H

#include <QObject>
#include <QTimer>
#include <QString>
#include <QTime>
class ClockEV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString Clock READ getClock WRITE setClock NOTIFY ClockChanged)


private:
    QString m_Clock = "--";
    QTime   timeClock;
    QTimer  timer1s;
public:
    explicit ClockEV(QObject *parent = nullptr);
    void     setClock(QString data);
    QString  getClock()const;


signals:
    void ClockChanged();

public slots:
     void   setTimeClock();
     void   setTimer();

};

#endif // CLOCKEV_H
