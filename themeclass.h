#ifndef THEMECLASS_H
#define THEMECLASS_H

#include <QObject>

class Themeclass: public QObject
{
    Q_OBJECT
    /*-----------------------------------Screen-------------------------------------------------*/
    Q_PROPERTY(QString screenEV  READ screenEV WRITE  setScreenEV  NOTIFY  screenEVChanged)


    /*--------------------------------theme color and opacity----------------------------------*/
    Q_PROPERTY(double opacityText          READ opacityText       )
    Q_PROPERTY(double opaccityColorMain1   READ opaccityColorMain1)
    Q_PROPERTY(double opaccityColorMain2   READ opaccityColorMain2)
    double  opacityText       () {return 1 ;}
    double  opaccityColorMain1() {return 1 ;}
    double  opaccityColorMain2() {return 1 ;}

    Q_PROPERTY(QString colorMain2           READ colorMain2        )
    Q_PROPERTY(QString colorMain1           READ colorMain1        )
    Q_PROPERTY(QString colorComponent           READ colorComponent        )
    Q_PROPERTY(QString colorText            READ colorText         )
    Q_PROPERTY(QString colorTranfer            READ colorTranfer   )
    QString colorText         () {return "#F4F9F9";}
    QString colorComponent    () {return "#F4F9F9";}
    QString colorMain1        () {return "#192428";}
    QString colorMain2        () {return "#2D383C";}
    QString textFont          () {return "Arial";}
    QString colorTranfer      () {return "#00000000";}
    /*------------------------------------screen size------------------------------------------*/

    Q_PROPERTY(int fullScreenH           READ fullScreenH        )
    Q_PROPERTY(int fullScreenW           READ fullScreenW        )

    int fullScreenH(){return 682;}
    int fullScreenW(){return 910;}
    /*-----------------------------------text font---------------------------------------------*/

    Q_PROPERTY(QString textFont   READ textFont  )

    /*-----------------------------------source image------------------------------------------*/

    QString m_screenEV = "qrc:/screen/ScreenHome.qml";

public:
    Themeclass(QObject *parent = nullptr);

    QString screenEV() const;

public slots:
    void setScreenEV(QString data);

signals:
    void screenEVChanged();
};

#endif // THEMECLASS_H
