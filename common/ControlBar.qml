import QtQuick 2.0

Item {
    width: 910
    height: 80
    property double _scr_opacity: themeEV.opaccityColorMain2
    property string _scr_color_component:themeEV.colorMain2

    Rectangle{
        id: status_bar
        height: 80
        width: 910
        color: _scr_color_component
        opacity: _scr_opacity
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }


    ClockVehicle{
        id:clock
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: icon.verticalCenter
    }

    ListModel{
        id: model_source
        ListElement{
            themeSouce: "qrc:/image/home/HomeHome.png"
            themeSouce_p: "qrc:/image/home/homeHomeP.png"
            isSource: true
            themeScreen: "qrc:/screen/ScreenHome.qml"
        }
        ListElement{
            themeSouce: "qrc:/image/home/HomeNavi.png"
            themeSouce_p: "qrc:/image/home/homeNaviP.png"
            isSource: true
            themeScreen: "qrc:/screen/ScreenMedia.qml"
        }

        ListElement{
            themeSouce: "qrc:/image/home/homeMedia.png"
            themeSouce_p: "qrc:/image/home/homeMediaP.png"
            isSource: true
            themeScreen: "qrc:/screen/ScreenHome.qml"
        }
        ListElement{
            themeSouce: "qrc:/image/home/HomeSet.png"
            themeSouce_p: "qrc:/image/home/homeSetP.png"
            isSource: true
            themeScreen: "qrc:/screen/ScreenClimate.qml"
        }

    }

    Row{
        id: icon
        anchors.bottom: parent.bottom
        height: 80
        spacing: 180
        anchors.horizontalCenter: parent.horizontalCenter
        Repeater{
            model: model_source
            Item{
                id: btn
                height: 70
                width: 70
                anchors.verticalCenter: parent.verticalCenter
                Image {
                    id:img
                    source: themeSouce
                    height:(mou.pressed)? 100 : 50
                    width: (mou.pressed)? 100 : 50
                    anchors.centerIn: parent
                    visible: isSource
                    MouseArea{
                        id: mou
                        anchors.fill: parent
                        onPressed: {
                            img.source = themeSouce_p
                            console.log("button: ",  themeSouce_p)
                        }
                        onReleased: {
                            img.source = themeSouce
                            console.log("button: ",  themeSouce)
                            themeEV.screenEV = themeScreen
                        }
                    }
                }


            }

        }
    }

}
