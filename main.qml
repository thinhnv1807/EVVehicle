import QtQuick 2.12
import QtQuick.Window 2.12
import "common"


Window {
    visible: true
    maximumHeight: 682
    maximumWidth: 910
    minimumHeight: 682
    minimumWidth: 910
    visibility: Window.FullScreen
    property double _main_opacity_text: 0.9
    property double _main_opacity: 0.05
    property string _main_colorMain: "#2E2D2E"
    property string _main_colorComponent:"#D1D0D2"


    MainScreen{
        id:scr
        _scr_opacity:_main_opacity
        _scr_olor_main: _main_colorMain
        _scr_color_component:_main_colorComponent
    }

    Loader{
        source: "qrc:/screen/ScreenHome.qml"
        width: 910
        height: 682
        anchors.top: parent.top
        anchors.left: parent.left
    }

Component.onCompleted: {
    console.log("run main")
}

}
