import QtQuick 2.0

Item {
    id: root
    width: 910
    height: 80
    property double _scr_opacity: themeEV.opaccityColorMain2
    property string _scr_color_component:themeEV.colorMain2
    property int  currentIndex: 0

    onCurrentIndexChanged: {

    }

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
            isSource: 0
            themeScreen: "qrc:/screen/ScreenHome.qml"
        }
        ListElement{
            themeSouce: "qrc:/image/home/HomeNavi.png"
            themeSouce_p: "qrc:/image/home/homeNaviP.png"
            isSource: 1
            themeScreen: "qrc:/screen/ScreenNavi.qml"
        }

        ListElement{
            themeSouce: "qrc:/image/home/homeMedia.png"
            themeSouce_p: "qrc:/image/home/homeMediaP.png"
            isSource: 2
            themeScreen: "qrc:/screen/ScreenMedia.qml"
        }
        ListElement{
            themeSouce: "qrc:/image/home/HomeSet.png"
            themeSouce_p: "qrc:/image/home/homeSetP.png"
            isSource: 3
            themeScreen: "qrc:/screen/ScreenSetting.qml"
        }

    }

    Row{
        id: icon
        anchors.bottom: parent.bottom
        height: 80
        spacing: 180
        anchors.horizontalCenter: parent.horizontalCenter
        Repeater{
            id: repeat
            model: model_source
            Item{
                id: btn
                height: 50
                width: 50
                anchors.verticalCenter: parent.verticalCenter
                Image {
                    id:img
                    source:(mou.pressed)? themeSouce : ((root.currentIndex == index) ? themeSouce_p : themeSouce )
                    height:(mou.pressed)? 80 : ((root.currentIndex == index) ? 80 : 50 )
                    width: (mou.pressed)? 80 :((root.currentIndex == index) ? 80 : 50 )
                    anchors.centerIn: parent
                }

                MouseArea{
                    id: mou
                    anchors.fill: parent
                    onPressed: {
                        //img.source = themeSouce_p
                        root.currentIndex = index
                        root.currentIndex = index
                        console.log("button: ",  themeSouce_p)
                    }
                    onReleased: {
                       // img.source = themeSouce

                        console.log("button: ",  themeSouce)
                        themeEV.screenEV = themeScreen
                    }
                }


            }

        }
    }

}
