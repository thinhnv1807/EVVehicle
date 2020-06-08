#ifndef clockEV_H
#define clockEV_H

#include <QObject>
#include <QTimer>
#include <QString>
#include <QTime>
#include <QDebug>
class clockEV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString clock READ getClock WRITE setClock NOTIFY clockChanged)


private:
    QString m_clock;
    QTime   timeclock;
    QTimer  timer1s;

public:
    explicit clockEV(QObject *parent = nullptr);
    void     setClock(QString data);
    QString  getClock()const;


signals:
    void clockChanged();

public slots:
     void   setTimeclock();
     void   setTimer();

};

#endif // clockEV_H
