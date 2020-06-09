import QtQuick 2.12
import QtQuick.Window 2.12
import "common"


Window {
    visible: true
    width: 1280
    height: 540
    title: qsTr("EV Vehicle")
    property double _main_opacity_text: 0.9
    property double _main_opacity: 0.08
    property string _main_colorMain: "#2E2D2E"
    property string _main_colorComponent:"#D1D0D2"


    MainScreen{
        id:scr
        x:0
        y:0
        _scr_opacity:_main_opacity
        _scr_olor_main: _main_colorMain
        _scr_color_component:_main_colorComponent
    }

    Loader{
        source: "qrc:/screen/ScreenHome.qml"
        width: 1280
        height: 540
        x:0
        y:0
    }

Component.onCompleted: {
    console.log("run main")
}

}
