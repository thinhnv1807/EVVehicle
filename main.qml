import QtQuick 2.12
import QtQuick.Window 2.12
import "common"



Window {
    maximumHeight: 682
    maximumWidth: 910
    minimumHeight: 682
    minimumWidth: 910
    visibility: Window.FullScreen

    MainScreen{
        id:scr
    }

    Loader{
        source: themeEV.screenEV
        width: 910
        height: 602
        anchors.top: parent.top
        anchors.left: parent.left
    }

    ControlBar{
        id:ctb
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }

Component.onCompleted: {
    console.log("run main")
}

}
