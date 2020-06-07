import QtQuick 2.0

Item {
    width: 1280
    height: 540
    property double _scr_opacity: 0.08
    property string _scr_olor_main: "#2E2D2E"
    property string _scr_color_component:"#D1D0D2"

    Rectangle{
        id:bgr
        color: _scr_olor_main
        anchors.fill: parent
    }

    Rectangle{
        id:navi
        color: _scr_color_component
        opacity: _scr_opacity
        height: 440
        width: 490
        anchors.left: parent.left
        anchors.bottom: status_bar.top
        anchors.bottomMargin: 10
    }

    Rectangle{
        id: controll
        color: _scr_color_component
        opacity:_scr_opacity
        height: 440
        width: 780
        anchors.right: parent.right
        anchors.bottom: status_bar.top
        anchors.bottomMargin: 10

    }

    Rectangle{
        id: status_bar
        height: 80
        width: 1280
        color: _scr_color_component
        opacity: _scr_opacity
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }

    ListModel{
        id: model_source
        ListElement{
            themeSouce: "qrc:/image/setting.png"
            isSource: true
        }
        ListElement{
            themeSouce: "qrc:/image/weather.png"
            isSource: true
        }
        ListElement{
            themeSouce: "qrc:/image/seat.png"
            isSource: true
        }
        ListElement{
            themeSouce: "qrc:/image/climate.png"
            isSource: true
        }

    }

    Row{
        id: icon
        x: 0
        y: 460
        height: 80
        spacing: parent.width/model_source.count - 100
        anchors.horizontalCenter: parent.horizontalCenter
        Repeater{
            model: model_source
            Image {
                source: themeSouce
                height: sourceSize.height
                width: sourceSize.width
                anchors.verticalCenter: parent.verticalCenter
                visible: isSource
            }
        }
    }


}
