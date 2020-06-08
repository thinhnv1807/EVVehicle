import QtQuick 2.0

Item{
    id: speed
    height:speed_val.font.pixelSize
    width: speed_val.contentWidth + speed_unit.contentWidth + 6
    property string  _speed_color_component: ""
    property double  _speed_opacity_text: 0


    Text {
        id: speed_val
        width: speed_val.contentWidth
        text: myInforEV.Speed
        elide: Text.ElideNone
        font.family: "Arial Black"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 100
        color: _speed_color_component
        opacity:_speed_opacity_text
        anchors.verticalCenterOffset: -4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    Text {
        id: speed_unit
        height: 50
        text: "km/h"
        font.bold: true
        font.family: "Courier"
        width: speed_unit.contentWidth
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignLeft
        font.pixelSize:speed_val.font.pixelSize*0.7
        color: _speed_color_component
        opacity:_speed_opacity_text
        anchors.verticalCenter: speed_val.verticalCenter
        anchors.verticalCenterOffset: 19
        anchors.left: speed_val.right
        anchors.leftMargin: 6
    }
}
