import QtQuick 2.0

Item {
    id: root
    width: 50
    height: 200

    property double _bat_value: 1
    property double _bat_opacity: 0.5
    property string _bat_color_component:"#D1D0D2"
    property string _bat_color_value:"#3AF3A3"

    Rectangle{
        id: bat_value
        height: 122
        width: parent.width
        color: _bat_color_value
        anchors.bottom: parent.bottom
        anchors.bottomMargin: bat_body.border.width
    }


    Rectangle {
        id: bat_body
        width: parent.width
        height: parent.height*0.8
        color: "#00000000"
        border.color:_bat_color_component
        border.width: 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: bat_head
        width: parent.width*0.4
        height: (parent.height - bat_body.height)*0.5
        color:_bat_color_component
        radius: 5
        anchors.bottom: bat_body.top
        anchors.bottomMargin:  -bat_body.border.width
        anchors.horizontalCenter: parent.horizontalCenter
    }




}
