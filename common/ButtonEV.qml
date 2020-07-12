import QtQuick 2.0

Item {
    id: root
    height: 100
    width: 100
    property alias  btnBgr: btnImg.source
    property alias  btnMou: mou

    signal pressed_signal
    signal released_signal

    Image {
        id: btnImg
        source: ""
        height: parent.height
        width: parent.width
        anchors.centerIn: parent
    }

    MouseArea{
        id: mou
        anchors.fill: parent
        onPressed: {
            pressed_signal
        }


        onReleased: {
            released_signal
        }
    }



}
