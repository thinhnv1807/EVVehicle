import QtQuick 2.12
import QtQuick.Window 2.12

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

    Battery{
        id: bat
        x: 926
        y: 50
        height: 110
        width: 302
        _bat_value: 0.7
        _bat_opacity: 0.5
        _bat_color_component:"#D1D0D2"
        _bat_color_value:"#3AF3A3"
    }

    Speed{
        id:speed
        x: 548
        y: 60
        _speed_color_component: _main_colorComponent
        _speed_opacity_text: _main_opacity_text
    }

}
