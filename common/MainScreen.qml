import QtQuick 2.0

Item {
    width: 910
    height: 682
    property double _scr_opacity: 0.08
    property string _scr_olor_main: "#2E2D2E"
    property string _scr_color_component:"#D1D0D2"

    Rectangle{
        id:bgr
        color: _scr_olor_main
        anchors.fill: parent
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
            themeSouce: "qrc:/image/setting.png"
            themeSouce_p: "qrc:/image/setting_p.png"
            isSource: true
        }
        ListElement{
            themeSouce: "qrc:/image/weather.png"
            themeSouce_p: "qrc:/image/weather_p.png"
            isSource: true
        }

        ListElement{
            themeSouce: "qrc:/image/seat.png"
            themeSouce_p: "qrc:/image/seat_p.png"
            isSource: true
        }
        ListElement{
            themeSouce: "qrc:/image/climate.png"
            themeSouce_p: "qrc:/image/climate_p.png"
            isSource: true
        }

    }

    Row{
        id: icon
        anchors.bottom: parent.bottom
        height: 80
        spacing: 150
        anchors.horizontalCenter: parent.horizontalCenter
        Repeater{
            model: model_source
            Image {
                id:img
                source: themeSouce
                height: sourceSize.height
                width: sourceSize.width
                anchors.verticalCenter: parent.verticalCenter
                visible: isSource
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        img.source = themeSouce_p
                        console.log("button: ",  themeSouce_p)
                    }
                    onReleased: {

                        img.source = themeSouce
                        console.log("button: ",  themeSouce)
                    }
                }
            }
        }
    }


}
