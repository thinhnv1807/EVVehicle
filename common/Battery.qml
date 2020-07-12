import QtQuick 2.0

Item {
    id: root
    height: 150
    width: 300
    property double _bat_value: 1
    property double _bat_opacity: 0.5
    property string _bat_color_component:"#D1D0D2"
    property string _bat_color_value:"#39ACE7"

    Rectangle{
        id:battery_value
        width: (battery_body.width -(battery_body.border.width*2))*_bat_value
        height: battery_body.height - (battery_body.border.width*2)
        anchors.left: battery_body.left
        anchors.leftMargin: battery_body.border.width
        anchors.verticalCenter: parent.verticalCenter
        color: _bat_color_value
    }

    Rectangle {
        id: battery_head
        width: parent.width*0.05
        height: parent.height*0.35
        color: _bat_color_component
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: battery_body.right
        anchors.leftMargin: 0
        opacity: _bat_opacity
    }

    Rectangle {
        id: battery_body
        width: parent.width*0.9
        height: parent.height
        color: "#00000000"
        border.width: 5
        border.color: _bat_color_component
        anchors.left: root.left
        anchors.verticalCenter: root.verticalCenter
        opacity: _bat_opacity
        radius: 5
    }


}
