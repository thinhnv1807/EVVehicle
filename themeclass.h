#ifndef THEMECLASS_H
#define THEMECLASS_H
#include <QObject>

class Themeclass: public QObject
{
    Q_OBJECT
    /*-Screen-----------------------------------------------------------------------------------------*/
    Q_PROPERTY(QString screenEV  READ screenEV WRITE  setScreenEV  NOTIFY  screenEVChanged)
    /*-Screen size------------------------------------------------------------------------------------*/
    Q_PROPERTY(int fullScreenH           READ fullScreenH        )
    Q_PROPERTY(int fullScreenW           READ fullScreenW        )
    /*-Component opacity------------------------------------------------------------------------------*/
    Q_PROPERTY(double opaccityColorMain1   READ opaccityColorMain1)
    Q_PROPERTY(double opaccityColorMain2   READ opaccityColorMain2)
    /*-Component color--------------------------------------------------------------------------------*/
    Q_PROPERTY(QString colorMain2           READ colorMain2        )
    Q_PROPERTY(QString colorMain1           READ colorMain1        )
    Q_PROPERTY(QString colorComponent       READ colorComponent    )
    Q_PROPERTY(QString colorTranfer         READ colorTranfer      )
    /*-Text font--------------------------------------------------------------------------------------*/
    Q_PROPERTY(QString textFont   READ textFont  )
    /*-Text opacity-----------------------------------------------------------------------------------*/
    Q_PROPERTY(double opacityText          READ opacityText       )
    /*-Text color-------------------------------------------------------------------------------------*/
    Q_PROPERTY(QString colorText            READ colorText         )
    /*-Enum ------------------------------------------------------------------------------------------*/
    Q_ENUMS(ScreenManager)


public:
    Themeclass(QObject *parent = nullptr);
    QString screenEV() const;
    /*-Screen-----------------------------------------------------------------------------------------*/

    /*-Screen size------------------------------------------------------------------------------------*/
    int fullScreenH(){return 682;}
    int fullScreenW(){return 910;}
    /*-Component opacity------------------------------------------------------------------------------*/
    double  opaccityColorMain1() {return 1 ;}
    double  opaccityColorMain2() {return 1 ;}
    /*-Component color--------------------------------------------------------------------------------*/
    QString colorComponent    () {return "#F4F9F9"  ;}
    QString colorMain1        () {return "#192428"  ;}
    QString colorMain2        () {return "#2D383C"  ;}
    QString colorTranfer      () {return "#00000000";}
    /*-Text font--------------------------------------------------------------------------------------*/
    QString textFont          () {return "Arial"    ;}
    /*-Text opacity-----------------------------------------------------------------------------------*/
    double  opacityText       () {return 1 ;}
    /*-Text color-------------------------------------------------------------------------------------*/
    QString colorText         () {return "#F4F9F9"  ;}
    /*-Enum ------------------------------------------------------------------------------------------*/

    enum ScreenManager {
        E_SCREEN_HOME,
        E_SCREEN_NAVI,
        E_SCREEN_MEDIA,
        E_SCREEN_SETTING
    };

public slots:
    void setScreenEV(QString data);

private:
    QString m_screenEV = "qrc:/screen/ScreenHome.qml"; //default
signals:
    void screenEVChanged();
};

#endif // THEMECLASS_H
