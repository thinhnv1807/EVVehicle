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

    Text {
        id: timer
        text: "13:00"
        font.family: "Arial Black"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 35
        color: _scr_color_component
        opacity: 0.9
        anchors.horizontalCenter: status_bar.horizontalCenter
        anchors.verticalCenter: status_bar.verticalCenter
    }

}