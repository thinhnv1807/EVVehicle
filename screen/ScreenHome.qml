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
        width: 400
        anchors.left: parent.left
        anchors.top: parent.top
    }

    BatteryType2{
        id: bat
        width: 100
        height: 250
        anchors.top: parent.top
        anchors.topMargin: 172
        anchors.left: navi.left
        anchors.leftMargin: 93
    }

    Speed{
        id:speed
        anchors.horizontalCenter: navi.horizontalCenter
        anchors.left: navi.left
        anchors.leftMargin: 93
        _speed_color_component: _home_colorComponent
        _speed_opacity_text: _home_opacity_text
    }

    Rectangle{
        id: controll
        color: _home_colorComponent
        opacity:_home_opacity
        height: 450
        width: 400
        anchors.right: parent.right
        anchors.top: parent.top
    }

}

