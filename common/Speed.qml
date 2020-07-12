import QtQuick 2.0

Item{
    id: speed
    height:100
    width: speed_val.contentWidth + speed_unit.contentWidth + 6
    TextEV {
        id: speed_val
        text: myInforEV.Speed
        font.wordSpacing: 0
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pointSize: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
    }

    TextEV {
        id: speed_unit
        text: "km/h"
        font.pointSize: 50
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignLeft
        anchors.verticalCenter: speed_val.verticalCenter
        anchors.verticalCenterOffset: 16
        anchors.left: speed_val.right
        anchors.leftMargin: 6
    }
}
