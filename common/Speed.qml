import QtQuick 2.0

Item{
    id: speed
    height:speed_val.contentHeight
    width: speed_val.contentWidth + speed_unit.contentWidth + 6
    property string  _speed_color_component: ""
    property double  _speed_opacity_text: 0


    Text {
        id: speed_val
        text: myInforEV.Speed
        font.family: "Arial"
        style: Text.Normal
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 100
        color: _speed_color_component
        opacity:_speed_opacity_text
        anchors.verticalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    Text {
        id: speed_unit
        text: "km/h"
        font.bold: true
        font.pointSize: 50
        style: Text.Normal
        fontSizeMode: Text.FixedSize
        font.family: "Arial"
        width: speed_unit.contentWidth
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignLeft
        color: _speed_color_component
        opacity:_speed_opacity_text
        anchors.verticalCenter: speed_val.verticalCenter
        anchors.verticalCenterOffset: 19
        anchors.left: speed_val.right
        anchors.leftMargin: 6
    }
}
