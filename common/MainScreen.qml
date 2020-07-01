import QtQuick 2.0

Item {
    width: 910
    height: 682

    property string _scr_olor_main: themeEV.colorMain1

    Rectangle{
        id:bgr
        color: _scr_olor_main
        anchors.fill: parent
    }
}
