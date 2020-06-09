import QtQuick 2.12
import QtQuick.Window 2.12
import "../common"

Item {
    id:root
    visible: true
    width: 1280
    height: 540
    property double _home_opacity_text: 0.9
    property double _home_opacity: 0.08
    property string _home_colorMain: "#2E2D2E"
    property string _home_colorComponent:"#D1D0D2"


    Rectangle{
        id:navi
        color: _home_colorComponent
        opacity: _home_opacity
        height: 450
        width: 490
        anchors.left: parent.left
        anchors.top: parent.top
    }

    MapEV{
        id:map
        anchors.horizontalCenter: navi.horizontalCenter
        anchors.verticalCenter: navi.verticalCenter
    }

    Rectangle{
        id: controll
        color: _home_colorComponent
        opacity:_home_opacity
        height: 450
        width: 490
        anchors.right: parent.right
        anchors.top: parent.top

    }

    BatteryType2{
        id: bat
        width: 100
        height: 250
        x: 500
        y: 166
    }


    Speed{
        id:speed
        anchors.horizontalCenter: parent.horizontalCenter
        y: 28
        _speed_color_component: _home_colorComponent
        _speed_opacity_text: _home_opacity_text
    }


    ClockVehicle{
        id:clock
        anchors.horizontalCenter: parent.horizontalCenter
        y: 482
    }

}
